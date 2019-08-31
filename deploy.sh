oc process -f node-postgres-template.yaml DATABASE_NAME=nodeexample SOURCE_REPOSITORY_URL=`git config --get remote.origin.url`| oc create -f -
