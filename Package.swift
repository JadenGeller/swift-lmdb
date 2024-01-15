// swift-tools-version:5.9

import PackageDescription
import Foundation

func foo() -> [CSetting] {
    return (ProcessInfo.processInfo.environment["APPGROUP_ID"].map {
        [.define("MDB_POSIX_SEM_PREFIX", to: $0)]
    } ?? [.define("MDB_POSIX_SEM_PREFIX", to: "\"BLAH\"")])
}

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
                .define("MDB_USE_POSIX_SEM")
            ] + foo()
        )
    ]
)
