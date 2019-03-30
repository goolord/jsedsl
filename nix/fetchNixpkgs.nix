{ owner # The Owner of the Git repo holding nixpkgs
, repo # The Git Repo holding nixpkgs
, rev    # The Git revision of nixpkgs to fetch
, sha256 # The SHA256 hash of the unpacked archive
}:

builtins.fetchTarball {
  url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
  inherit sha256;
}