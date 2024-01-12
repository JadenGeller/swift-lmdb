// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "CLMDB",
    products: [
        .library(
            name: "CLMDB",
            targets: ["CLMDB"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CLMDB",
            dependencies: [],
            cSettings: [
                .define("MDB_USE_POSIX_SEM", to: "1")
            ]
        ),
    ]
)
