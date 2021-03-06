# motivation

When using pzp1997/assoc-list, the NoUnused.CustomTypeConstructorArgs rule incorrectly
marks arguments as unused.

# setup (with Nix)

1. cd `sscce_for_elm-review-unused_issue_25`
   
2. run one of:
    - `direnv allow` (if you use direnv)
    - `nix develop` (Nix >= 2.4)
    - `nix-shell` (Nix < 2.4)
    
# setup (without Nix)

Find and install `elm` and `elm-review` somehow... npm maybe?

# run it

`$ ./run-sscce.sh`
