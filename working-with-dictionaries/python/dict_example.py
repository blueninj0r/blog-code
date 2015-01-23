json_dict = {
	"image_url": "http://imgur.com/r/cats/1uLxCpW",
	"user_details": {
		"name": "Mr Cat",
		"age": 10
	}
}


def get_nested_value_in_dict(nested_key, d):
	keys = nested_key.split(" ")
	current_val = d
	for key in keys:
		if key in current_val:
			current_val = current_val[key]
		else:
			return None
	return current_val

print(get_nested_value_in_dict("user_details name", json_dict))
print(get_nested_value_in_dict("user_details eye_colour", json_dict))