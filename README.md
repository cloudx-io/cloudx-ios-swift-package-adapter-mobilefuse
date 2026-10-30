# CloudX MobileFuse adapter Swift package

This repository distributes the MobileFuse adapter for the CloudX iOS SDK.

## Requirements

- iOS 15 or later
- Xcode 16 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-mobilefuse.git
```

Select an exact package version from the compatibility table. Add the
`CloudXMobileFuseAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

| Package version | CloudX adapter | MobileFuse SDK |
| --- | --- | --- |
| `1130000.0.0` | `1.13.0.0` | `1.13.0` |

The package installs CloudX Core and MobileFuse SDK as dependencies. Import `CloudXCore` in the application. The adapter registers when the application loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three. The package tag joins the adapter components into the major number. For example, adapter `1.13.0.0` uses package version `1130000.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
