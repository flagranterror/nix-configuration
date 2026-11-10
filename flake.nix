{
  description = "Desktop System Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nix-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    # hyprland.url = "github:hyprwm/Hyprland";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nix-unstable, nix-darwin, home-manager, ... }@inputs: {
    darwinConfigurations."HAL69420" = nix-darwin.lib.darwinSystem {
      modules = [
        ./hosts/HAL69420.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "hm-backup";
          home-manager.users.dmcnish = import ./home-manager/hm-hal69420.nix;
        }
      ];
    };
    darwinConfigurations."vicious" = nix-darwin.lib.darwinSystem {
      modules = [
        ./hosts/vicious.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "hm-backup";
          home-manager.users.doug = import ./home-manager/hm-vicious.nix;
        }
      ];
    };
    nixosConfigurations."delrey" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/delrey.nix
        #./platforms/ad-computer.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "hm-backup";
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.users.doug = import ./home-manager/hm-delrey.nix;
        }
      ];
    };
  };
}
