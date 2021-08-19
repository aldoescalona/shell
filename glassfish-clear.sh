#!/bin/bash

echo  "Clear glassfish"

rm -rf /opt/glassfish4/glassfish/domains/domain1/generated/*
rm -rf /opt/glassfish4/glassfish/domains/domain1/osgi-cache/*
# mkdir /opt/glassfish4/glassfish/domains/domain1/generated/jsp
# mkdir /opt/glassfish4/glassfish/domains/domain1/generated/jsp/ristoCloud
