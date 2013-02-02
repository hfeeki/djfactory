#!/bin/bash
# This is a smoke test to check the installer from Jenkins CI.
rm -fr installer_test
./.tox/py26/bin/djfactory --no-input --pkg installer_test
exit $?
