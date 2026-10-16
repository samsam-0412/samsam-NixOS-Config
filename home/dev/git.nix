{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "samsam";
        email = "226710873+samsam-0412@users.noreply.github.com";
        signingKey = "~/.ssh/id_ed25519.pub";
      };

      gpg = {
        format = "ssh";
      };
      commit = {
        gpgsign = true;
      };
    };
  };
}