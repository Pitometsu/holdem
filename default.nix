{ pkgs, stdenv, lib, mkDerivation, bundlerEnv }:

with import <nixpkgs> {};
with pkgs.stdenv;

# bundlerEnv rec {

#   name     = "${pname}-${version}";
#   pname    = "holdem";
#   version  = "0.1";

#   src      = ./.;

#   ruby     = ruby_2_2_0;
#   bundler  = bundler_HEAD.override { inherit ruby; };
#   gemfile  = ./Gemfile;
#   lockfile = ./Gemfile.lock;
#   gemset   = ./gemset.nix;

#   buildInputs = [
#     openssl
#     zlib
#     postgresql
#     nodejs
#   ];

# }

mkDerivation rec {

  name     = "${pname}-${version}";
  pname    = "holdem";
  version  = "0.1";

  src      = ./.;

  bundler = bundler_HEAD.override { inherit ruby; };

  buildInputs = [
    # stdenv
    # gitAndTools.gitFull
    # git-hub
    # heroku
    # zsh
    ruby_2_2_0
    bundler
    sqlite
    openssl
    zlib
    postgresql
    nodejs
  ];

  # When used as `nix-shell --pure`
  shellHook = ''
  export PATH="${src}/.bundle/bin:$PATH"
  export PS1="bundle ${pname} > "
  '';

  # used when building environments
  extraCmds = ''
  export PATH="${src}/.bundle/bin:$PATH"
  '';

  meta = with lib; {
    homepage    = "https://github.com/Pitometsu/holdem#readme";
    description = "A program that emulates a texas hold'em game.";
    license     = with licenses; gpl3Plus;
    maintainers = with maintainers; [ Pitometsu ];
    platforms   = platforms.unix;
  };

  # buildPhase = ''
  #   bundle exec rake --trace assets:precompile RAILS_ENV=production
  # '';

  # installPhase = ''
  #   cp -r . $out
  # '';

  # passthru = {
  #   inherit nodejs;
  #   bundler = bundler;
  #   gemHome = "${derivation}/${ruby.gemPath}";
  #   ruby    = ruby;
  #   # env = mkDerivation {
  #   #   name = "interactive-${pname}-${version}-environment";
  #   #   shellHook = ''
  #   #     export PATH="${PWD}":"${PATH}"
  #   #   '';
  #   # };
  # };
}