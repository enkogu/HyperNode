TMP_DIR=`mktemp -d`
cd ${TMP_DIR}
git clone https://github.com/bitpay/bitcore
cd bitcore
git checkout v8.25.27
docker build -t bitcore:v8.25.27 .
rm -rf ${TMP_DIR}
