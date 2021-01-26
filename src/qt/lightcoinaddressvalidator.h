// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef LIGHTCOIN_QT_LIGHTCOINADDRESSVALIDATOR_H
#define LIGHTCOIN_QT_LIGHTCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class LightcoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit LightcoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const override;
};

/** Lightcoin address widget validator, checks for a valid lightcoin address.
 */
class LightcoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit LightcoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const override;
};

#endif // LIGHTCOIN_QT_LIGHTCOINADDRESSVALIDATOR_H
