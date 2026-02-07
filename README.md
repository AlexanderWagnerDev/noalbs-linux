# noalbs-linux

Pre-compiled static Linux binaries for [NOALBS](https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching) (nginx-obs-automatic-low-bitrate-switching) - Automatic bitrate switching for OBS and nginx-RTMP streams.

## Features

- Static binaries for multiple Linux architectures
- No dependencies required
- Built with Alpine Linux using musl libc
- Automated builds via GitHub Actions
- Supports x86_64, i386, ARM64, ARMv7, ARMv6, RISC-V, PowerPC, and s390x

## Supported Architectures

- **x86_64** (amd64) - Standard 64-bit Intel/AMD
- **i386** - 32-bit Intel/AMD
- **ARM64** (aarch64) - 64-bit ARM (Raspberry Pi 4+, modern ARM servers)
- **ARMv7** - 32-bit ARM (Raspberry Pi 2/3)
- **ARMv6** - Legacy 32-bit ARM (Raspberry Pi 1/Zero)
- **RISC-V** - RISC-V 64-bit
- **PowerPC** (ppc64le) - IBM POWER systems
- **s390x** - IBM Z mainframes

## Installation

### Download Latest Release

1. Go to [Releases](https://github.com/AlexanderWagnerDev/noalbs-linux/releases)
2. Download the appropriate `.tar.gz` for your architecture
3. Verify SHA256 checksum
4. Extract and run

```bash
# Example for x86_64
wget https://github.com/AlexanderWagnerDev/noalbs-linux/releases/download/v2.16.1/noalbs-linux-amd64.tar.gz
tar -xzf noalbs-linux-amd64.tar.gz
chmod +x noalbs
./noalbs
```

### Configuration

Edit `config.json` according to your setup. See [NOALBS documentation](https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching) for configuration options.

## Building from Source

The repository uses Docker with QEMU for cross-platform builds:

```bash
# Triggered automatically on tag push
git tag v2.16.1
git push origin v2.16.1

# Or manually via workflow_dispatch
```

## License

MIT License - see [LICENSE](LICENSE)

## Links

- [NOALBS Upstream Project](https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching)
- [Release Downloads](https://github.com/AlexanderWagnerDev/noalbs-linux/releases)

---

# noalbs-linux (Deutsch)

Vorkompilierte statische Linux-Binaries für [NOALBS](https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching) (nginx-obs-automatic-low-bitrate-switching) - Automatische Bitrate-Umschaltung für OBS und nginx-RTMP-Streams.

## Features

- Statische Binaries für verschiedene Linux-Architekturen
- Keine Abhängigkeiten erforderlich
- Gebaut mit Alpine Linux und musl libc
- Automatisierte Builds über GitHub Actions
- Unterstützt x86_64, i386, ARM64, ARMv7, ARMv6, RISC-V, PowerPC und s390x

## Unterstützte Architekturen

- **x86_64** (amd64) - Standard 64-Bit Intel/AMD
- **i386** - 32-Bit Intel/AMD
- **ARM64** (aarch64) - 64-Bit ARM (Raspberry Pi 4+, moderne ARM-Server)
- **ARMv7** - 32-Bit ARM (Raspberry Pi 2/3)
- **ARMv6** - Legacy 32-Bit ARM (Raspberry Pi 1/Zero)
- **RISC-V** - RISC-V 64-Bit
- **PowerPC** (ppc64le) - IBM POWER-Systeme
- **s390x** - IBM Z-Mainframes

## Installation

### Neueste Version herunterladen

1. Gehe zu [Releases](https://github.com/AlexanderWagnerDev/noalbs-linux/releases)
2. Lade die passende `.tar.gz` für deine Architektur herunter
3. Überprüfe die SHA256-Prüfsumme
4. Entpacken und ausführen

```bash
# Beispiel für x86_64
wget https://github.com/AlexanderWagnerDev/noalbs-linux/releases/download/v2.16.1/noalbs-linux-amd64.tar.gz
tar -xzf noalbs-linux-amd64.tar.gz
chmod +x noalbs
./noalbs
```

### Konfiguration

Bearbeite die `config.json` entsprechend deinem Setup. Siehe [NOALBS-Dokumentation](https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching) für Konfigurationsoptionen.

## Selbst bauen

Das Repository verwendet Docker mit QEMU für Cross-Platform-Builds:

```bash
# Wird automatisch bei Tag-Push ausgelöst
git tag v2.16.1
git push origin v2.16.1

# Oder manuell über workflow_dispatch
```

## Lizenz

MIT License - siehe [LICENSE](LICENSE)

## Links

- [NOALBS Upstream-Projekt](https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching)
- [Release-Downloads](https://github.com/AlexanderWagnerDev/noalbs-linux/releases)
