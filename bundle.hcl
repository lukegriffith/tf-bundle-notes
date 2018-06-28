terraform {
  # Version of Terraform to include in the bundle. An exact version number
  # is required.
  version = "0.11.7"
}

# Define which provider plugins are to be included
providers {
  # Include the newest "aws" provider version in the 1.0 series.
  #aws = ["~> 1.0"]

  # Include both the newest 1.0 and 2.0 versions of the "google" provider.
  # Each item in these lists allows a distinct version to be added. If the
  # two expressions match different versions then _both_ are included in
  # the bundle archive.
  #google = ["~> 1.0", "~> 2.0"]

  # Include a custom plugin to the bundle. Will search for the plugin in the 
  # plugins directory, and package it with the bundle archive. Plugin must have
  # a name of the form: terraform-provider-*, and must be build with the operating
  # system and architecture that terraform enterprise is running, e.g. linux and amd64
  #customplugin = ["0.1"]

  aws = ["~> 1.0"]
  openstack = ["~> 1.0"]
  vault = ["~> 1.0"]
  consul = ["~> 2.0"]
  vsphere = ["~> 1.6"]
  random = ["~> 1.0"]
  github = ["~> 1.0"]
  kubernetes = ["~> 1.0"]
  http = ["~> 1.0"]
  postgresql = ["~> 0.0"]
  docker = ["~> 0.1"]
  dns = ["~> 2.0"]
  mysql = ["~> 1.0"]
  local = ["~> 1.0"]
  template = ["~> 1.0"]
  cobbler = ["~> 1.0"]
  null = ["~> 1.0"]
  terraform = ["~> 1.0"]
  
}
