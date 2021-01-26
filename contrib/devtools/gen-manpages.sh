#!/usr/bin/env bash
# Copyright (c) 2016-2019 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

LIGHTCOIND=${LIGHTCOIND:-$BINDIR/lightcoind}
LIGHTCOINCLI=${LIGHTCOINCLI:-$BINDIR/lightcoin-cli}
LIGHTCOINTX=${LIGHTCOINTX:-$BINDIR/lightcoin-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/lightcoin-wallet}
LIGHTCOINQT=${LIGHTCOINQT:-$BINDIR/qt/lightcoin-qt}

[ ! -x $LIGHTCOIND ] && echo "$LIGHTCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a BTCVER <<< "$($LIGHTCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for lightcoind if --version-string is not set,
# but has different outcomes for lightcoin-qt and lightcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$LIGHTCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $LIGHTCOIND $LIGHTCOINCLI $LIGHTCOINTX $WALLET_TOOL $LIGHTCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
