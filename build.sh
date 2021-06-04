RETHINKDB_VERSION=2.4.1

sudo apt-get update &&
sudo apt-get install -y build-essential protobuf-compiler python libprotobuf-dev libcurl4-openssl-dev libboost-all-dev libncurses5-dev wget m4 clang libssl-dev &&
wget https://github.com/rethinkdb/rethinkdb/archive/refs/tags/v${RETHINKDB_VERSION}.tar.gz &&
tar -xvf v${RETHINKDB_VERSION}.tar.gz &&
mv rethinkdb-${RETHINKDB_VERSION} rethinkdb-src &&
cd rethinkdb-src &&
./configure --allow-fetch CXX=clang++&&
make -j7