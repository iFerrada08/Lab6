
az login --service-principal -u $1 -p $2 --tenant $3

az policy assignment create --name OA-Tag-Policy-Demo --policy audit-tag-x-all-services -p "{ \"tagName\": { \"value\": \"Env\" }, \"tagValue\": { \"value\": [ \"Dev\" ] } }"
