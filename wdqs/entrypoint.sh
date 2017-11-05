#!/bin/sh

export BLAZEGRAPH_OPTS="-DwikibaseHost=${WIKIBASE_HOST}"
export UPDATER_OPTS="-DwikibaseHost=${WIKIBASE_HOST}"

envsubst < /templates/mwservices.json > /wdqs/mwservices.json

exec "$@"