Pod::Spec.new do |s|
  s.name         = "TCCategory"
  s.version      = "1.0.0"
  s.summary      = "ctc's category."
  s.description  = <<-DESC
  Common class category on iOS.
                   DESC

  s.homepage     = "https://github.com/ctc1991/TCCategory"
  s.license      = "MIT"
  s.author       = { "ctc" => "ctc1991@foxmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/ctc1991/TCCategory.git", :tag => s.version.to_s} 
  s.source_files = 'TCCategory/**/*'
  s.framework = "Foundation","UIKit"
  s.requires_arc = true
end