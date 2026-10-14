{config,...}:
{

  system.primaryUser = "doug";           # required for user-scoped options (defaults, homebrew)
  users.users."doug".home = "/Users/doug";   # home-manager needs this

  imports = [
    ../platforms/darwin.nix
  ];

}
