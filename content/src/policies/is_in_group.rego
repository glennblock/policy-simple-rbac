package rbac.is_in_group

## default to a closed system (deny by default)
default allowed = false

## user is allowed only if they are a member of the group
## passed in as resource.group
allowed {
	ds.check_relation({
		"subject": {
			"type": "user",
			"key": input.user.key
		},
		"relation": {
			"object_type": "group",
			"name": "member"
		},
		"object": {
			"type": "group",
			"key": input.resource.group
		}
	})
}
