// RUN: %empty-directory(%t)
// RUN: %build-irgen-test-overlays
// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) %use_no_opaque_pointers %S/eager-class-initialization.swift -target %target-stable-abi-triple -emit-ir | %FileCheck %S/eager-class-initialization.swift -DINT=i%target-ptrsize --check-prefix=CHECK
// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) %S/eager-class-initialization.swift -target %target-stable-abi-triple -emit-ir

// REQUIRES: objc_interop
// REQUIRES: swift_stable_abi
