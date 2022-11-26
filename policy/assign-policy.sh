
az login --service-principal -u $1 -p $2 --tenant $3

az policy assignment create --policy audit-tag-x-all-services -p "{ \"Tag Name\": { \"value\": [ \"Env\" ] }, \"Tag Value\": { \"value\": [ \"Dev\" ] } }"
