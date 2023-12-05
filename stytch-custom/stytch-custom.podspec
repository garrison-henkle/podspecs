Pod::Spec.new do |spec|

  spec.name                  = "stytch-custom"
  spec.version               = "0.20.0"
  spec.summary               = "Stytch SDK"
  spec.homepage              = "https://stytch.com"
  spec.authors               = ""
  spec.ios.deployment_target = "14.1"
  spec.swift_version         = "5.5"

  spec.documentation_url     = "https://stytchauth.github.io/stytch-ios/documentation/stytchcore/"

    spec.source              = {
    :git => 'https://github.com/stytchauth/stytch-ios.git',
    :tag => spec.version.to_s
  }

  spec.default_subspec       = 'StytchCore'
  spec.static_framework      = true
  spec.subspec 'StytchCore' do |s|
    s.source_files     = 'Sources/StytchCore/**/*'
    s.exclude_files    = "**/Documentation*/**/*"
    s.dependency "RecaptchaEnterprise", "~> 18.3.0"
    s.resource_bundles = {
        'StytchCore' => ['Sources/StytchCore/**/*.{html}']
    }
  end
end
