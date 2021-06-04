# RethinkDB Multipass Build

Build RethinkDB binary for Linux using Multipass.

This is here since Uberspace doesn't preinstall RethinkDB (yet).

## Requirements

- Machine with Multipass installed (probably your development one).
- Internet connection.

## Instructions

1. Run `multipass-build.sh` and wait.
2. ???
3. Profit! (find `rethinkdb` in `bin` directory here.)
4. (optional) Use `start-rethinkdb.sh` in `bin` to start `rethinkdb` with the Iamages defaults on your server.

In case of problems (or you have forcefully cancelled the last build), delete the Multipass VM by running `multipass-reset.sh`.

Note that these scripts will **PURGE ALL YOUR DELETED MULTIPASS VMS**, so check if you want to recover any before running the script.

## Credits
- @srh for the build guide: http://samuelhughes.com/rethinkdb/build_instructions.html
- @Canonical for Multipass and Ubuntu
- @Uberspace for affordable hosting with excellent support.