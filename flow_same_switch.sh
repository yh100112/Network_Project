ODL_IP=192.168.0.22
ODL_PORT=8181

echo "----Push FLow Rule s1(port 1 <-> 2)----"
curl -X PUT -H 'Content-Type:application/xml' -H 'Accept:application/xml' -d @'flow_kdy1.xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:1/table/0/flow/flow_kdy1 -u admin:admin -v

echo "----Push FLow Rule s1(port 2 <-> 1)----"
curl -X PUT -H 'Content-Type:application/xml' -H 'Accept:application/xml' -d @'flow_kdy2.xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:1/table/0/flow/flow_kdy2 -u admin:admin -v

echo "----Push FLow Rule s2(port 2 <-> 3)----"
curl -X PUT -H 'Content-Type:application/xml' -H 'Accept:application/xml' -d @'flow_kdy22.xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:2/table/0/flow/flow_kdy22 -u admin:admin -v

echo "----Push FLow Rule s2(port 3 <-> 2)----"
curl -X PUT -H 'Content-Type:application/xml' -H 'Accept:application/xml' -d @'flow_kdy33.xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:2/table/0/flow/flow_kdy33 -u admin:admin -v

echo "----Push FLow Rule s3(port 2 <-> 3)----"
curl -X PUT -H 'Content-Type:application/xml' -H 'Accept:application/xml' -d @'flow_kdy22.xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:3/table/0/flow/flow_kdy22 -u admin:admin -v

echo "----Push FLow Rule s3(port 3 <-> 2)----"
curl -X PUT -H 'Content-Type:application/xml' -H 'Accept:application/xml' -d @'flow_kdy33.xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:3/table/0/flow/flow_kdy33 -u admin:admin -v

