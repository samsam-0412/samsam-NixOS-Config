{ pkgs, ... }:
{
  programs.vscodium = {
    enable = true;

    profiles.default.extensions = with pkgs.vscode-extensions; [
      # rost
      rust-lang.rust-analyzer
      vadimcn.vscode-lldb
      tamasfe.even-better-toml

      # schlange
      ms-python.python
      charliermarsh.ruff

      # go
      golang.go

      # c c+-
      llvm-vs-code-extensions.vscode-clangd
      ms-vscode.cmake-tools
      twxs.cmake

      # node
      dbaeumer.vscode-eslint
      esbenp.prettier-vscode
      christian-kohler.npm-intellisense
      yoavbls.pretty-ts-errors

      # general
      jnoortheen.nix-ide
    ];
  };
}
