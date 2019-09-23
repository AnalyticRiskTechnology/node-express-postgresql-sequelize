REPO=`git config --get remote.origin.url`
BRANCH=`git branch| sed -n '/^*/s/\* *//p'`
#
oc create secret generic github-secret --type=kubernetes.io/basic-auth --from-literal=password=$GH_TOKEN
oc secrets link builder github-secret
oc process -f node-postgres-template.yaml DATABASE_NAME=cmt NODEJS_VERSION=8 SOURCE_REPOSITORY_URL=$REPO SOURCE_REPOSITORY_REF=$BRANCH| oc create -f -
# TODO: get the generated host name from the route and post it to name.com
# and set a new route
host=`oc get route | sed -n '2s/^[^ ]*[   ]*\([^  ]*\).*/\1/p'`
echo "host:" $host
#
oc expose service node-psql-persistent --name=cmt-name --hostname=$SERVICE_HOST
