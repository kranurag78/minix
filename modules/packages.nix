{pkgs, ...}: let
  core = with pkgs;
    [
      bat
      exa
      fd
      git
      jq
      ripgrep
      sd
      zoxide
      starship
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

