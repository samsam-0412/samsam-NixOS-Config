{ pkgs, ... }:
{
  programs.fastfetch = {
    enable = true;
    settings = {
        "$schema" = "~/.config/home-manager/terminal/fastfetch/fastfetchSchema.json";
	
    logo = {
      source = "~/Pictures/fastfetch/*";
      type = "kitty";
      height = 20;
      width = 40;
      padding = {
        top = 1;
        right = 5;
        left = 1;
        bottom = 1;
      };
    };
	modules = [
	  "title"
    "os"
    "kernel"
    "uptime"
    "processes"
    "packages"
    "shell"
    "display"
    "lm"
    "de"
    "wm"
    "theme"
    "icons"
    "terminal"
    "cpu"
    "gpu"
    "datetime"
    "weather"
    "break"
    "colors"
	];
    };
  };
}
