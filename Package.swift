//
//  Package.swift
//  PerfectCrypto
//
//  Created by Kyle Jessup on 2017-02-07.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2017 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

#if os(Linux)
	let cOpenSSL = Package.Dependency.Package(url: "https://github.com/PerfectlySoft/Perfect-COpenSSL-Linux.git", majorVersion: 2)
#else
	let cOpenSSL = Package.Dependency.Package(url: "https://github.com/RobotsAndPencils/Perfect-COpenSSL.git", majorVersion: 3)
#endif

let package = Package(
    name: "PerfectCrypto",
    targets: [],
    dependencies: [
		.Package(url: "https://github.com/RobotsAndPencils/Perfect.git", majorVersion: 3),
		.Package(url: "https://github.com/PerfectlySoft/Perfect-Thread.git", majorVersion: 2),
		cOpenSSL
	]
)
