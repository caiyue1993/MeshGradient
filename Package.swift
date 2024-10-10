// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "CustomMeshGradient",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.macCatalyst(.v13),
		.tvOS(.v13),
	],
    products: [
        .library(
            name: "CustomMeshGradient",
            targets: ["MeshGradient"]),
		.library(name: "MeshGradientCHeaders",
				 targets: ["MeshGradientCHeaders"]),
    ],
    targets: [
        .target(
            name: "CustomMeshGradient",
            dependencies: ["MeshGradientCHeaders"],
			resources: [.copy("DummyResources/")]
		),
		.target(name: "MeshGradientCHeaders"),
    ]
)
