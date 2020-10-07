# renzopiano
An Xcode playground to experiment with different targets.

#### RenzoPiano (app)
- It's a mix of Objective-C and Swift

#### FeatureA
- A `static library` containing Objective-C code.
- It has a module map that exposes its API

#### FeatureB
- A `static library` containing Objective-C code.
- It does not have a module map

## How to import a library that contains Objective-C code

1) Modular import, works from both Swift and Objective-C, showcased with `FeatureA`

- `FeatureA`: Create a [module.modulemap](https://clang.llvm.org/docs/Modules.html) file to expose a header
- `FeatureA`: Go to "Build settings"/"Packaging" and set `Defines Modules` to `YES`
- `FeatureA`: Go to "Build settings"/"Packaging" and set `Module Map File` to its path
- App: Go to "Build phases" and add a dependency from the app to the `FeatureA`
- App: Go to "Build Settings" and add `Header Search Paths` to `FeatureA`
- App: `@import LibraryA;`

See https://www.corysullivan.com/2018/04/26/linking-objective-c-libraries-to-swift-frameworks.html

2) Header import, works only from Objective-C, showcased with `FeatureB`

- App: Go to "Build Settings" and add `Header Search Paths` to `FeatureB`
- App: `#import "HeaderB.h"`


