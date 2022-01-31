ODL_IP=192.168.0.22
ODL_PORT=8181

echo "----DROP FLow Rule s1(port 1 <-> 2)----"
curl -X DELETE -H 'Content-Type:application/xml' -H 'Accept:application/xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:1/table/0/flow/flow_kdy1 -u admin:admin -v

echo "----DROP FLow Rule s1(port 2 <-> 1)----"
curl -X DELETE -H 'Content-Type:application/xml' -H 'Accept:application/xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:1/table/0/flow/flow_kdy2 -u admin:admin -v

echo "----DROP FLow Rule s2(port 1 <-> 3)----"
curl -X DELETE -H 'Content-Type:application/xml' -H 'Accept:application/xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:2/table/0/flow/linear11 -u admin:admin -v

echo "----DROP FLow Rule s2(port 3 <-> 1)----"
curl -X DELETE -H 'Content-Type:application/xml' -H 'Accept:application/xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:2/table/0/flow/linear33 -u admin:admin -v

echo "----DROP FLow Rule s3(port 1 <-> 3)----"
curl -X DELETE -H 'Content-Type:application/xml' -H 'Accept:application/xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:3/table/0/flow/linear11 -u admin:admin -v

echo "----DROP FLow Rule s3(port 3 <-> 1)----"
curl -X DELETE -H 'Content-Type:application/xml' -H 'Accept:application/xml' http://$ODL_IP:$ODL_PORT/restconf/config/opendaylight-inventory:nodes/node/openflow:3/table/0/flow/linear33 -u admin:admin -v

