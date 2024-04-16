# OpenCV-SPM

Use [OpenCV](https://github.com/opencv/opencv) as a SPM package.

## Installation

Add `https://github.com/albusapp/opencv-spm.git` as package dependency in Xcode/SPM package.


## How to build

- edit `.version` file to set desired version
- on push, the Github action `release.yml` will checkout OpenCV, build it, generate a `xcframework` containing iOS archs (arm64 for device & simulator), update `Package.swift` and publish a new release.

## Usage

Import `opencv2` and use it as documented in [opencv.org](opencv.org).

```swift
import opencv2

...
```
