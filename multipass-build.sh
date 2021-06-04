MULTIPASS_INSTANCE_NAME=rethinkdb-build

multipass launch focal --name ${MULTIPASS_INSTANCE_NAME} --cpus 8 --mem 8G --disk 8G &&
multipass transfer build.sh ${MULTIPASS_INSTANCE_NAME}: &&
multipass exec ${MULTIPASS_INSTANCE_NAME} -- chmod +x build.sh &&
multipass exec ${MULTIPASS_INSTANCE_NAME} -- ./build.sh &&
[ ! -e bin/rethinkdb ] || rm bin/rethinkdb &&
multipass transfer ${MULTIPASS_INSTANCE_NAME}:rethinkdb-src/build/release_clang/rethinkdb bin &&
multipass delete ${MULTIPASS_INSTANCE_NAME} &&
multipass purge
