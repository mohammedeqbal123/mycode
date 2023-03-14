/* Alta3 Research - rzfeeser@alta3.com
   Working with "for_each" within a null_resource */

/* Terraform block */
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

/* provider block */
provider "null" {
  # Configuration options
}

/* a list of local variables */
locals {
  avengers = {
               "Iron Man"= {
                "power"= "money"
                "enemy"= "Iron Monger"}
               "Black Panther"= {
                "power"= "vibranium suit"
                "enemy"= "War Monger"}
               "She-Hulk"= {
                "power"= "super strength"
                "enemy"= "Abomination"}
             }
}


/* The null_resource implements the standard resource lifecycle but takes no more action */
resource "null_resource" "avengers" {
  for_each = local.avengers

/* triggers allows specifying a random set of values that when
     changed will cause the resource to be replaced */

  triggers = {
    name = each.key 
    power = each.value.power
    enemy = each.value.enemy
#    status= each.value
  }
}

/* We want these outputs */
output "avengers" {
  value = null_resource.avengers
}

#output "justheroes" {
#  value = keys(null_resource.avengers)
#}
