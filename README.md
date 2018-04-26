# SwiftySemver
Compare two semantic version strings in Swift. https://semver.org/

# Usage

```
guard let bundleSemVer = Semver(versionString: Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String), 
let minSemVer = Semver(versionString: "2.1.0") else { return }

print(bundleSemVer >= minSemVer)
```
