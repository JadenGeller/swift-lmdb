// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "CLMDB",
    products: [
        .library(
            name: "CLMDB",
            targets: ["CLMDB"]),
    ],
    targets: [
        .target(
            name: "CLMDB",
            dependencies: [],
            cSettings: [
                .define("MDB_USE_POSIX_MUTEX", to: "1"),
                .define("MDB_USE_ROBUST", to: "0"),
            ]
        )
    ]
)
