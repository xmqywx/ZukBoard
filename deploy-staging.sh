NOW_SUBDOMAIN="zukboard-staging"
REGIONS="sfo"
NOW_DEPLOY_ID=$( now --no-clipboard --regions=$REGIONS --token=$NOW_TOKEN -e OSS_ID=$OSS_ID -e OSS_SECRET=$OSS_SECRET -e MONGODB_URI=$MONGODB_URI)
now alias $NOW_DEPLOY_ID "$NOW_SUBDOMAIN" --token=$NOW_TOKEN
now rm $NOW_SUBDOMAIN --safe --yes --token=$NOW_TOKEN || exit 0