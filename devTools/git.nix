{ pkgs,... }:
{
  programs.git = {
      enable = true;

      signing = {
        key = "~/.ssh/id_ed25519.pub";
        format = "ssh";
        signByDefault = true;
      };

      settings = {
        user.name = "samsam";
        user.email = "226710873+samsam-0412@users.noreply.github.com";
      };
    };
}
