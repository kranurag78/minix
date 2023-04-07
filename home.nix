{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "ubuntu";
  home.homeDirectory = "/home/ubuntu";

  home.stateVersion = "22.11"; 

  home.file = {
    
  };

  home.sessionVariables = {
      EDITOR = "hx";
      NAME = "Anurag";
  };
}
