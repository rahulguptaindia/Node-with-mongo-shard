#!/bin/bash
echo "Adding shards to MongoS..."
docker exec p1-router-1-1 mongo --host p1-router-1-1 --port 27017 --eval '
sh.addShard("shard-X-replica-set/p1-shard-X-node-a-1:27017", "shard-X-replica-set/p1-shard-X-node-b-1:27017", "shard-X-replica-set/p1-shard-X-node-c-1:27017");
sh.addShard("shard-X-replica-set/p1-shard-2-node-a-1:27017", "shard-X-replica-set/p1-shard-2-node-b-1:27017", "shard-X-replica-set/p1-shard-2-node-c-1:27017");
sh.addShard("shard-X-replica-set/p1-shard-3-node-a-1:27017", "shard-X-replica-set/p1-shard-3-node-b-1:27017", "shard-X-replica-set/p1-shard-3-node-c-1:27017")'

