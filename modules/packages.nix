{pkgs, ...}: let
  core = with pkgs;
    [
      bat
      fd
      jq
      ripgrep
      zoxide
    ];
  in {
    home.packages = 
      core;

    programs.bat.enable = true;
    programs.zoxide = {
      enable = true;
      enableFishIntegration = true;
    };

    programs.starship = {
      enable = true;
      enableFishIntegration = true;
    };

  }

