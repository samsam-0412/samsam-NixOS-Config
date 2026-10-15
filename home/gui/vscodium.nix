{ pkgs, ... }:
{
  programs.vscodium = {
    enable = true;

    profiles.default.extensions = with pkgs.vscode-extensions; [
      # rost
      rust-lang.rust-analyzer
      tamasfe.even-better-toml

      # schlange
      ms-python.python
      charliermarsh.ruff

      # gehen
      golang.go

      # c c+-
      llvm-vs-code-extensions.vscode-clangd
      ms-vscode.cmake-tools
      twxs.cmake

      # knoten
      dbaeumer.vscode-eslint
      esbenp.prettier-vscode
      christian-kohler.npm-intellisense
      yoavbls.pretty-ts-errors

      # general
      jnoortheen.nix-ide
      tomoki1207.pdf
    ];
  };
}
