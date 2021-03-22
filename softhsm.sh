#!/bin/bash

set -ex
softhsm2-util --init-token --slot 0 --label test --so-pin 1234 --pin 1234
pkcs11-tool --modul /usr/lib/softhsm/libsofthsm2.so --login --login-type user --pin 1234 --keypairgen --id 736f6d652d6964 --key-type rsa:2048

echo key generated!
