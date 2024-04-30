#!/bin/bash
echo "Initializing shard replica set..."
docker exec  p1-shard-X-node-a-1 mongo --host p1-shard-X-node-a-1 --port 27017 --eval 'rs.initiate({
  _id: "shard-X-replica-set",
  members: [
    { _id: 0, host: "p1-shard-X-node-a-1:27017" },
    { _id: 1, host: "p1-shard-X-node-b-1:27017" },
    { _id: 2, host: "p1-shard-X-node-c-1:27017" }
  ]
})'
