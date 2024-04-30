#!/bin/bash
echo "Initializing config server replica set..."
docker exec p1-config-svr-1-1 mongo --host p1-config-svr-1-1 --port 27017 --eval 'rs.initiate({

  _id: "config-svr-replica-set",

  configsvr: true,

  members: [

    { _id: 0, host: "p1-config-svr-1-1:27017" },

    { _id: 1, host: "p1-config-svr-2-1:27017" },

    { _id: 2, host: "p1-config-svr-3-1:27017" }

  ]

})'
