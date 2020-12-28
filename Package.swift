// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenWeatherReporter",
    platforms: [.macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OpenWeatherReporter",
            targets: ["OpenWeatherReporter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "JVCocoa", url: "https://github.com/TheMisfit68/JVCocoa.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "OpenWeatherReporter",
            dependencies: [
                "JVCocoa"
            ],
            resources:[
                .copy("Resources/WeatherData.sqlite")
            ]
        )
    ]
)
