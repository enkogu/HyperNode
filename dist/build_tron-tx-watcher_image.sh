TMP_DIR=`mktemp -d`
cd ${TMP_DIR}
git clone git@gitlab.com:blockprocessing/tron-tx-watcher-v2.git
cd tron-tx-watcher
docker build -t tron-tx-watcher .
rm -rf ${TMP_DIR}
