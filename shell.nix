{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  name = "sscce_for_elm-review-unused_issue_25";

  buildInputs = with pkgs; [
    elmPackages.elm
    elmPackages.elm-format
    elmPackages.elm-review
  ];
}

