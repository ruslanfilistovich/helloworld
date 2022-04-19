// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "helloworld",
  platforms: [.iOS(.v11)],
  products: [
    .executable(name: "helloworld", targets: ["helloworld"]),
  ],
  
  dependencies: [
    .package(url: "https://github.com/Banuba/VEEffectsSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaOverlayEditorSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaLicenseServicingSDK.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaMusicEditorSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaSDKServicing-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BNBLicenseUtils-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/VideoEditor-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaSDKSimple-IOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaARCloudSDK-IOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaEffectPlayer-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaAudioBrowserSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaTokenStorageSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorGallerySDK.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorTrimSDK-iOS.git", .exact("1.21.0")),
    .package(url: "https://github.com/Banuba/VEPlaybackSDK-iOS.git", .exact("1.21.0")),
  ],
  targets: [
    .executableTarget(
      name: "helloworld",
      dependencies: [
        .product(name: "BanubaMusicEditorSDK", package: "BanubaMusicEditorSDK-iOS"),
        .product(name: "BanubaVideoEditorSDK", package: "BanubaVideoEditorSDK-iOS"),
        .product(name: "BanubaOverlayEditorSDK", package: "BanubaOverlayEditorSDK-iOS"),
        .product(name: "BanubaSDKServicing", package: "BanubaSDKServicing-iOS"),
        .product(name: "VideoEditor", package: "VideoEditor-iOS"),
        .product(name: "BanubaUtilities", package: "BanubaUtilities-iOS"),
        .product(name: "BanubaLicenseServicingSDK", package: "BanubaLicenseServicingSDK"),
        .product(name: "BanubaTokenStorageSDK", package: "BanubaTokenStorageSDK-iOS"),
        .product(name: "BNBLicenseUtils", package: "BNBLicenseUtils-iOS"),
        .product(name: "BanubaARCloudSDK", package: "BanubaARCloudSDK-IOS"),
        .product(name: "BanubaAudioBrowserSDK", package: "BanubaAudioBrowserSDK-iOS"),
        .product(name: "BanubaVideoEditorGallerySDK", package: "BanubaVideoEditorGallerySDK"),
        .product(name: "BanubaEffectPlayer", package: "BanubaEffectPlayer-iOS"),
        .product(name: "BanubaVideoEditorTrimSDK", package: "BanubaVideoEditorTrimSDK-iOS"),
        .product(name: "BanubaSdkSimple", package: "BanubaSDKSimple-IOS"),
        .product(name: "VEPlaybackSDK", package: "VEPlaybackSDK-iOS"),
        .product(name: "BanubaVideoEditorEffectsSDK", package: "VEEffectsSDK-iOS"),
      ]
    ),
    .testTarget(
      name: "helloworldTests",
      dependencies: ["helloworld"]),
  ]
)
