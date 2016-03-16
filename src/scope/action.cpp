#include <scope/action.h>

#include <unity/scopes/ActivationResponse.h>

#include <iostream>

namespace sc = unity::scopes;
using namespace std;

Action::Action(const unity::scopes::Result &result, const unity::scopes::ActionMetadata &metadata)
    : sc::ActivationQueryBase(result, metadata)
{
}

sc::ActivationResponse Action::activate()
{
    sc::ActivationResponse done(sc::ActivationResponse::ShowDash);
    cerr << "activate called" << endl;
    return done;
}
