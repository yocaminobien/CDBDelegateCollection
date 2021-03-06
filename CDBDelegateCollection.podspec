#
# Be sure to run `pod lib lint CDBDelegateCollection.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

@version = "1.1.1"

Pod::Spec.new do |s|
  s.name             = "CDBDelegateCollection"
  s.version          = @version
  s.summary          = "Use it to handle delegates collection (weak references)"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
    Use it to handle collection of weak references to delegates. The collection calls a method on a delegate only if it respondsToSelector: succeeded. The collection accept only delegates that conform to protocol that was passed on initialization. If delegate became nil it will be deallocated instantly and reference to it will be removed on the next collection iteration.
                       DESC

  s.homepage         = "https://github.com/truebucha/CDBDelegateCollection"
  s.license          = 'MIT'
  s.author           = { "truebucha" => "truebucha@gmail.com" }
  s.source           = { :git => "https://github.com/truebucha/CDBDelegateCollection.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/truebucha'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
end
