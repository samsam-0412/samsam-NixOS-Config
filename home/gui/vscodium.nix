{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      ms-python.python
      charliermarsh.ruff
      ms-vscode.cpptools
      llvm-vs-code-extensions.vscode-clangd
      ms-vscode.cmake-tools
      twxs.cmake
      rust-lang.rust-analyzer
      golang.go
      dbaeumer.vscode-eslint
      esbenp.prettier-vscode
      christian-kohler.npm-intellisense
      yoavbls.pretty-ts-errors
      tomoki1207.pdf
      ms-python.debugpy
    ];
  };
}
