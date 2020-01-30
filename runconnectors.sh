curl -X DELETE http://localhost:8083/connectors/es-sink-user
curl -X DELETE http://localhost:8083/connectors/es-sink-events
curl -X DELETE http://localhost:8083/connectors/inventory-connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @connectors/es-sink-user.json
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @connectors/es-sink-events.json
curl -i -X POST -H "Accept:application/json" -H  "Content-type:application/json" http://localhost:8083/connectors/ -d @connectors/register-sqlserver.json
trap 'sleep infinity' EXIT