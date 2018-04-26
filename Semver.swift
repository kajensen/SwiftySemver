import Foundation

struct Semver {
    
    let major: Int
    let minor: Int
    let patch: Int
    
    // expected format: <major>.<minor>(optional: .<patch>)
    
    init?(versionString: String?) {
        guard let ints = versionString?.components(separatedBy: "."), ints.count >= 2 else { return nil }
        guard let major = Int(ints[0]) else { return nil }
        guard let minor = Int(ints[1]) else { return nil }
        let patch: Int = ints.count >= 3 ? (Int(ints[2]) ?? 0) : 0
        self.major = major
        self.minor = minor
        self.patch = patch
    }
    
}

extension Semver: Comparable {

    static func < (lhs: Semver, rhs: Semver) -> Bool {
        return lhs.major < rhs.major || lhs.minor < rhs.minor || lhs.patch < rhs.patch
    }
    
    static func == (lhs: Semver, rhs: Semver) -> Bool {
        return lhs.major == rhs.major && lhs.minor == rhs.minor && lhs.patch == rhs.patch
    }
    
}
