Pod::Spec.new do |spec|
    spec.name       = "cmark-gfm"
    spec.version    = "0.3.0"
    spec.summary    = "CommonMark parsing and rendering library and program in C."
    spec.homepage   = "https://github.com/hanny-ph/swift-cmark"
    spec.author     = { "R&D Allm Inc." => "" }
    spec.source     = { :git => "https://github.com/hanny-ph/swift-cmark", :tag => spec.version.to_s }

    spec.ios.deployment_target  = "13.0"

    spec.public_header_files = [
        "src/include/*.h",
    ]
    spec.source_files   = "src/**/*.{c,h,inc}"
    spec.exclude_files = [
        "src/scanners.re",
        "src/libcmark-gfm.pc.in",
        "src/CMakeLists.txt",
        "src/include/module.modulemap"
    ]
end
