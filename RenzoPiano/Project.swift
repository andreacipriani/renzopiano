import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers

let objcFeatures = [Target.makeTarget(named: "ObjcFeatureA"),
                    Target.makeTarget(named: "ObjcFeatureB")]

let project = Project.app(name: "RenzoPiano",
                          platform: .iOS,
                          additionalTargets: objcFeatures)
