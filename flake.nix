{
  description = "sscce_for_elm-review-unused_issue_25";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        inherit (pkgs) lib callPackage;
      in { devShell = import ./shell.nix { inherit pkgs; }; });
}
