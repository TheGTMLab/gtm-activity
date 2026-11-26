# Pre-migration backup, 2026-11-26

- System: Timeshift rsync snapshot "Pre-migration baseline 2026-11-26" on /dev/sda2
- Archives: GTM-full (node_modules excluded), legacy-home-items, metadata
- Encryption: GPG symmetric AES256; passphrase stored in password manager
- Offsite: Drime (rclone), folder pre-migration-2026-11-26
- Verification: re-downloaded from Drime and checksummed, all three files OK

## SHA256 of encrypted files

57ec8903f97d4cc07f03ac9b2aeaf5af90a74c5dc1d9b1774d1db93b686cf990  GTM-full.tgz.gpg
18fde70225bc8a4da258484399b96ae2a4d721919b42804993d26fcb43225688  legacy-home-items.tgz.gpg
bde3e50b88e775ccfbcd60677b9452f59bb76493c7cc1b2a277ce3f36a2a1067  metadata.tgz.gpg

## Pending

- Reboot into kernel 7.0.0-44
- Copy run outputs out of 04-Runs before enabling cleanup timer
- Folder migration into numbered GTM structure
