{ config, pkgs, ... }: {
   imports = [
        ./default.nix
        ./git-work.nix
    ];
}
