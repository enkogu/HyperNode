SCRIPT_DIR=`dirname $0`
${SCRIPT_DIR}/build_worker_image.sh
${SCRIPT_DIR}/build_bitcore_image.sh
${SCRIPT_DIR}/build_tron-tx-watcher_image.sh
${SCRIPT_DIR}/fix_permissions_for_openethereum.sh