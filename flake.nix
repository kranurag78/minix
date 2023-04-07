{
  description = "Home Manager configuration of ubuntu";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      # only get bare minimum packages 
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ home-manager.nixpkgs.overlay ];
        config = {
          allowUnfree = true;
          packageOverrides = pkgs: {
            # use the home-manager version of nixpkgs
            nixpkgs = pkgs.home-manager.nixpkgs;
          };
        };
      };
      
    in {
      homeConfigurations.ubuntu = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [
          ./modules/home.nix
          ./modules/helix.nix
          ./modules/shell.nix
        ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
    };
}
