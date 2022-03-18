#!/bin/bash

# Save own ipset from f2b-sshd
/sbin/ipset save f2b-sshd -f f2b-sshd-$(hostname).blacklist

# Push own file to git
#git push

# Combine all ipset files
cat f2b-sshd-*.blacklist > f2b-sshd_temp.blacklist

# Sort and uniq only
sort f2b-sshd_temp.blacklist | uniq > f2b-sshd_combined.blacklist

# rm temp file
rm -rf f2b-sshd_temp.blacklist

# Restore combined f2b ipsets
#/sbin/ipset restore -f -! f2b-sshd_combined.blacklist
