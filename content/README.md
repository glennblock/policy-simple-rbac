# policy-simple-rbac

This repository houses a very basic RBAC policy. It expects a group name to be passed in the resource context of an authorization call, and will return `allowed: true` if the user is a member of that group.

## Directory structure

`src` contains all the policy files. 

`src/.manifest` contains the policy roots - in this case, `rbac`. If you change the name of the `package` definitions in the `.rego` files, make sure that the first component of the package name is reflected in this list.

`src/policies` contains the policy modules associated with the group-based RBAC template.

* rbac.rego - `rbac.is_member_of` - a rule that determines whether the user is a member of a group

## Releasing a new version

`git tag {version} && git push --tags` will invoke the actions to create a new release (a policy bundle that can be delivered to the Aserto authorizer)

e.g. `git tag v0.0.1 && git push --tags` will create a new release with v0.0.1.
