#ifndef SCOPE_ACTION_H_
#define SCOPE_ACTION_H_

#include <unity/scopes/ActivationQueryBase.h>

class Action : public unity::scopes::ActivationQueryBase
{
public:
    Action(unity::scopes::Result const& result,
           unity::scopes::ActionMetadata const& metadata);
    ~Action() = default;

     virtual unity::scopes::ActivationResponse activate() override;
};

#endif // SCOPE_ACTION_H_

