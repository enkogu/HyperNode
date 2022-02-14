TMP_DIR=`mktemp -d`
cd ${TMP_DIR}
git clone git@gitlab.com:blockprocessing/worker.git
cd worker
docker build -t worker .
rm -rf ${TMP_DIR}
