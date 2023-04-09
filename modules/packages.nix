{pkgs, ...}: let
  core = with pkgs;
    [
      bat
      fzf
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

    programs.fzf = {
      enable = true;
      enableFishIntegration = true;
    };
  }

