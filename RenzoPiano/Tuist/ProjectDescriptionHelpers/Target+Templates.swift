import Foundation
import ProjectDescription

public extension Target {
    static func makeTarget(named name: String) -> Target {
        return Target(name: name,
                      platform: .iOS,
                      product: .staticLibrary,
                      bundleId: "io.tuist.\(name)",
            infoPlist: .default,
            sources: ["Targets/\(name)/Sources/**"],
            resources: [],
            headers: Headers(public: ["Targets/\(name)/Sources/API/**"]),
            dependencies: [])
    }
}
