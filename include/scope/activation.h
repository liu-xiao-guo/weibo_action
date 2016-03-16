#ifndef ACTIVATION_H
#define ACTIVATION_H

#include <unity/scopes/ActionMetadata.h>
#include <unity/scopes/ActivationQueryBase.h>
#include <unity/scopes/ActivationResponse.h>
#include <unity/scopes/Result.h>


namespace us = unity::scopes;

class Activation : public us::ActivationQueryBase
{
public:
    Activation(us::Result const& result, us::ActionMetadata const& metadata, std::string const& widget_id, std::string const& action_id, std::string accessToken);

    ~Activation();

    virtual void cancelled() override;

    virtual us::ActivationResponse activate() override;

private:
    std::string accessToken_;
    std::string const action_id_;
};
#endif
