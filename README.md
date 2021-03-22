# SoftHSM2 test

This is just a simple container to test SoftHSM2 functionality, it creates a new RSA key.
You can cross mount a volume at /var/lib/softhsm/tokens if you wish to access the store
externally (e.g. to test if your app can use this PKCS#11 module correctly).
The so file itself can be retrieved from /usr/lib/softhsm/libsofthsm2.so (link to
/usr/lib/x86_64-linux-gnu/softhsm/libsofthsm2.so).

