# SwiftySemver
Compare two semantic version strings in Swift. https://semver.org/

# Usage

```
let bundleVersionString = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
let minVersionString = "2.1.0"

guard
  let bundleSemVer = Semver(versionString: bundleVersionString), 
  let minSemVer = Semver(versionString: minVersionString)
else { return }

if bundleSemVer >= minSemVer {
  // great!
} else {
  // prompt user to download new version
}
```
