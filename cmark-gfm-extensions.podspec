Pod::Spec.new do |spec|
    spec.name       = "cmark-gfm-extensions"
    spec.version    = "0.3.0"
    spec.summary    = "cmark-gfm's extensions."
    spec.homepage   = "https://github.com/hanny-ph/swift-cmark"
    spec.author     = { "R&D Allm Inc." => "" }
    spec.source     = { :git => "https://github.com/hanny-ph/swift-cmark", :tag => spec.version.to_s }

    spec.ios.deployment_target  = "13.0"

    spec.dependency "cmark-gfm"

    spec.public_header_files = [
        "extensions/include/cmark-gfm-core-extensions.h",
    ]
    spec.preserve_paths = [
        "extensions/**/*",
    ]
    spec.source_files = [
        "extensions/**/*.{c,h}", 
    ]
    spec.exclude_files = [
        "extensions/CMakeLists.txt",
        "extensions/ext_scanners.re",
        "extensions/include/module.modulemap"
    ]
    spec.xcconfig  = {
        'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/cmark-gfm/src/include"',
    }
end
