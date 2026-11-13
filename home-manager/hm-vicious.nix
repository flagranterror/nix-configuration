{ config, pkgs, ... }: {
    imports = [
        ./default.nix
        ./git-personal.nix
    ];
}
