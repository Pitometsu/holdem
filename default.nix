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
    ruby # ruby_2_2_2
    bundler
    sqlite
    openssl
    zlib
    postgresql94
    nodejs
  ];

  # When used as `nix-shell --pure`
  shellHook = ''
  alias bundler_clean='rm ./.bundle/bin Gemfile.lock ./.bundle/ruby -Rf'
  alias bc=bundler_clean
  export PATH="$(pwd)/.bundle/bin:$PATH"
  export PS1="bundle ${pname} > "
  export BUNDLE_GEMFILE="$(pwd)/Gemfile"
  export GEM_HOME="$(pwd)/.bundle/ruby/2.2.0"
  export GEM_PATH="$GEM_HOME:$GEM_PATH"

  export PGDATA="$(pwd)/srv/pg-${name}"

  if [ ! -d $PGDATA ]; then
    initdb
  fi

  if [ $autostart-postgres ]; then
    pg_ctl -D $PGDATA -l "$(pwd)/log/pg.log" start
    trap 'pg_ctl -D $PGDATA stop' EXIT
  fi
  '';

  # used when building environments
  extraCmds = ''
  export PATH="$(pwd)/.bundle/bin:$PATH"
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
  #   #     export PATH="$(pwd)":"${PATH}"
  #   #   '';
  #   # };
  # };
}
