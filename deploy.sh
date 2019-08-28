oc process -f node-postgres-template.yaml SOURCE_REPOSITORY_URL=`git config --get remote.origin.url`| oc create -f -
