import ProjectDescription

let project = Project(
    name: "Anqa",
    targets: [
        .target(
            name: "Anqa",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Anqa",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Anqa/Sources/**"],
            resources: ["Anqa/Resources/**"],
            dependencies: [
                .external(name: "Kingfisher")
            ]
        ),
        .target(
            name: "AnqaTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AnqaTests",
            infoPlist: .default,
            sources: ["Anqa/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Anqa")]
        ),
    ]
)
