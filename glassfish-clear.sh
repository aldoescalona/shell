#!/bin/bash

echo  "Clear glassfish"

rm -rf /opt/payara5/glassfish/domains/domain1/generated/*
rm -rf /opt/payara5/glassfish/domains/domain1/osgi-cache/*

/etc/init.d/payara_domain1 restart

# mkdir /opt/glassfish4/glassfish/domains/domain1/generated/jsp
# mkdir /opt/glassfish4/glassfish/domains/domain1/generated/jsp/ristoCloud
