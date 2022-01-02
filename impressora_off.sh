#!/bin/bash
chmod a-x /etc/init.d/avahi-daemon
chmod a-x /etc/init.d/cups-browsed
sed 's/^BrowseLocalProtocols.*$/BrowseLocalProtocols\ none/' -i /etc/cups/cupsd.conf
service avahi-daemon stop
service cups-browsed stop
