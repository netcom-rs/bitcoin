Lightcoin Core
=============

Setup
---------------------
Lightcoin Core is the original Lightcoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Lightcoin transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Lightcoin Core, visit [lightcoincore.org](https://lightcoincore.org/en/download/).

Running
---------------------
The following are some helpful notes on how to run Lightcoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/lightcoin-qt` (GUI) or
- `bin/lightcoind` (headless)

### Windows

Unpack the files into a directory, and then run lightcoin-qt.exe.

### macOS

Drag Lightcoin Core to your applications folder, and then run Lightcoin Core.

### Need Help?

* See the documentation at the [Lightcoin Wiki](https://en.lightcoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#lightcoin](https://webchat.freenode.net/#lightcoin) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#lightcoin).
* Ask for help on the [LightcoinTalk](https://lightcointalk.org/) forums, in the [Technical Support board](https://lightcointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Lightcoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/lightcoin-core/docs/blob/master/gitian-building.md)

Development
---------------------
The Lightcoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.lightcoincore.org/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [LightcoinTalk](https://lightcointalk.org/) forums, in the [Development & Technical Discussion board](https://lightcointalk.org/index.php?board=6.0).
* Discuss project-specific development on #lightcoin-core-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#lightcoin-core-dev).
* Discuss general Lightcoin development on #lightcoin-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#lightcoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [lightcoin.conf Configuration File](lightcoin-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
