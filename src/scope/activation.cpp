/*
 * Copyright (C) 2015 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Authored by: Kyle Nitzsche <kyle.nitzsche@canonical.com>
 *
 */

#include <scope/activation.h>

#include <unity/UnityExceptions.h>

#include <QDebug>
#include <QCoreApplication>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>


namespace us = unity::scopes;

Activation::Activation(us::Result const& result, us::ActionMetadata const& metadata, std::string const& widget_id, std::string const& action_id, std::string accessToken):
        ActivationQueryBase(result, metadata),
        action_id_(action_id),
        accessToken_(accessToken)
{
}

Activation::~Activation()
{
}

void Activation::cancelled()
{
}

QString qstr_(std::string str)
{
    return QString::fromStdString(str);
}

us::ActivationResponse Activation::activate()
{
    qDebug() << "==== in activate(). action_id: "<< QString::fromStdString(action_id_);

    bool dash_handles = false;
    if (result().contains("dash_activation"))
        dash_handles = true;
    else if (action_id_ == "profile_url")
        dash_handles = true;

    if (dash_handles)
    {
        qDebug() << "==== dash_activation";
        return us::ActivationResponse(us::ActivationResponse::Status::NotHandled);
    }

    QString uri;
    QString accessToken = QString::fromStdString(accessToken_);
    QString params_qs;
    QString message = QString("%1").arg(qstr_(action_metadata().scope_data().get_dict()["review"].get_string()));
    if (result().contains("newblog"))
    {
        qDebug() << "==== NEW BLOG";
        uri = QString("https://api.weibo.com/2/statuses/update.json?access_token=%1").arg(accessToken);
        params_qs = QString("status=%1").arg(message);
    }
    else if (result().contains("replyblog"))
    {
        qDebug() << "==== REPLY BLOG";
        //qDebug() << "==== token: " << accessToken;
        uri = QString("https://api.weibo.com/2/statuses/repost.json?access_token=%1").arg(accessToken);
        QString id_ = QString("id=%1").arg(qstr_(result()["idstring"].get_string()));
        QString msg_ = QString("status=%1").arg(message);
        params_qs = QString("%1&%2").arg(msg_,id_);
        //qDebug() << "==== params_qs: " << params_qs;
    }

    us::ActionMetadata am = action_metadata();
    //TODO: ensure text is 140 chars or less or warn user somehow
    qDebug() << "====  microblog url:\n" << uri;
    QByteArray params;
    params.append(params_qs);
    QEventLoop loop;
    QNetworkAccessManager manager;
    QObject::connect(&manager, SIGNAL(finished(QNetworkReply*)), &loop, SLOT(quit()));
    QObject::connect(&manager, &QNetworkAccessManager::finished, [](QNetworkReply *netReply) {
        netReply->deleteLater();
        QByteArray data_ba = netReply->readAll();
        QJsonParseError err;
        QJsonDocument doc = QJsonDocument::fromJson(data_ba, &err);
        if (err.error != QJsonParseError::NoError) {
            qCritical() << "Failed to parse server data: " << err.errorString();
        }
    });
    QUrl url = QUrl(uri);
    QNetworkRequest request(url);
    QString mUserAgent = QString("%1 (Ubuntu)").arg("weibo-scope");
    request.setRawHeader("User-Agent", mUserAgent.toStdString().c_str());
    request.setHeader(QNetworkRequest::ContentTypeHeader,"application/x-www-form-urlencoded");
    manager.post(request, params);
    loop.exec();

    return us::ActivationResponse(us::ActivationResponse::Status::ShowDash);
}
