git clone https://github.com/prometheus/snmp_exporter.git

cd snmp_exporter/generator

docker build -t snmp-generator .
docker run -ti \
  -v "${PWD}:/opt/" \
  snmp-generator generate