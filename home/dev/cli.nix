{ pkgs, unstable, ... }:

{
  home.packages = with pkgs;[
    unstable.javaPackages.compiler.temurin-bin.jdk-27
    unstable.gradle
    pkgs.gnumake
    pkgs.curl
    pkgs.sqlite
    
  ];  
}
