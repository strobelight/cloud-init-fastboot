# cloud-init-fastboot
Cloud images which use iso to preseed with user passwords or keys take a long time to boot when the iso is not available on subsequent boots.

This script limits what data sources cloud-init searches.

It also preserves the hostname.

Your deployment tool, packer in my case, uploads the script and runs.

