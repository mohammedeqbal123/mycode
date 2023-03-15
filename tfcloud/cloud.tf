terraform {
  cloud {
    organization = "MAJ1"

    workspaces {
      name = "my-example"
    }
  }
}
