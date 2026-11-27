# System & Editors CLI

## File Explorer & VS Code

```bash
explorer .                               # Open current folder in Windows Explorer
open .                                   # Open current folder in Finder (macOS)

code .                                   # Open current folder in VS Code

explorer <projectName>.sln               # Open solution in Visual Studio (Windows)
open <projectName>.sln                   # Open solution in Visual Studio (macOS)
```

## System File Checker (SFC) Scan:

- Open CMD as Admin

```bash
sfc /scannow
```

## Deployment Image Servicing and Management (DISM) Tool:

- Open CMD as Admin

```bash
DISM /Online /Cleanup-Image /RestoreHealth
```

## slmgr - Windows Activation

```bash
/ipk -install product key (replaces existing one)
/ato -activate windows
/dli -display license info (default: current license)
/dlv -display detailed info
/xpr -expiration date for current license

Advanced Options:
/cpky -clear product key from registry (prevents disclosure attacks)
/ilc -install license
/rilc -re-install system license files
/rearm -reset the licensing status of the given app
/rearm-sku -reset the licensing status of the given sku
/upk -uninstall product key

/dti -display installation ID for offline activation
/atp -activate product with user-provided confirmation ID

Volume Licensing Key Management Service (KMS) Client Options:
/skms <Name:[Port] | : port> -set the name and/or port for the kms computer this machine will use. IPv6 address must be specified in the format [hostname]:port/ckms[Activation ID]
/ckms -Clear name of KMS computer used (sets the port to the default)
/skms-domain <FQDN> -set the specific DNS domain in which all KMS SRV records can be found.
/ckms-domain -Clear the specific DNS domain in which all KMS SRV records can be found.
/skhc -enable KMS host caching
/ckhc -disable KMS host caching
```
