resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }
  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}

output "random_id" {
  value = "${random_id.random.id}"
}

# test
