#!/usr/bin/env bats

@test "git binary is found in PATH" {
  run which git
  [ "$status" -eq 0 ]
}

@test "make binary is found in PATH" {
  run which make
  [ "$status" -eq 0 ]
}

@test "mongodb binary is found in PATH" {
  run which mongo
  [ "$status" -eq 0 ]
}

@test "g++ binary is found in PATH" {
  run which g++
  [ "$status" -eq 0 ]
}

@test "isc-dhcp-server binary is found in PATH" {
  run which dhcpd
  [ "$status" -eq 0 ]
}

@test "ipxe binary is found in PATH" {
  skip "Not sure how to test presence of ipxe - TODO/HELP"
  run which ipxe
  [ "$status" -eq 0 ]
}

@test "tftp binary is found in PATH" {
  run which tftp
  [ "$status" -eq 0 ]
}

@test "curl binary is found in PATH" {
  run which curl
  [ "$status" -eq 0 ]
}
