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
    ];
  in {
    home.packages = 
      core;
  }

