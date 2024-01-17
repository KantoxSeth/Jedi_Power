locals {
        json_content_all = file("/home/sethproj/kantox_jedi/jedi.json")
        data=jsondecode(local.json_content_all)
} 
# This loads the json file in a Directory and uses the file function to read the json file. 

output "all_keys" {
  value = [for key, x in local.data : key]
}

# Here all the numeric keys are being stored in output variable.

output "all_planets" {
        value=[for n in local.data: n.planet]
}

# Here all the names of the planets are being stored in output variable.
output "all_powers" {
        value=[for m in local.data: m.power_level]
}

# Similarly for powers this variable stores the power.

output "all_names" {
        value=[for b in local.data: b.name]
}

# The names are stored in output variable called all_names.
