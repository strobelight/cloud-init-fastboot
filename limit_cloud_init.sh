#!/bin/bash

############################################################
# For faster boots after first configured when datasource
# for cloud-init no longer available.
############################################################

CFG=99_limited_datasource.cfg
CLOUD_CFG=/etc/cloud/cloud.cfg.d

echo "Limiting number of cloud-init datasources to check on reboot"
cat <<EOF > $CFG
datasource_list: [ NoCloud, ConfigDrive, None ]
warnings:
    dsid_missing_source: off
preserve_hostname: true
EOF
sudo cp $CFG $CLOUD_CFG/$CFG
rm -f $CFG
