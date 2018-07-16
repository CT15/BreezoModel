Pod::Spec.new do |s|

  s.name          = "BreezoModel"
  s.version       = "1.0.1"
  s.summary       = "An interface between JSON data returned by Breezometer API call and a Swift project."

  s.description   = <<-DESC
  A collection of structures that exactly models how the Breezometer API JSON data is presented. The structures can be passed into JSONDecoder.decode() function to decode JSON data into Swift object.
                   DESC

  s.license       = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author        = { "Calvin Tantio" => "calvin.tantio@outlook.com" }
  s.homepage      = "https://github.com/CT15/BreezoModel"
  s.source        = { :git => "https://github.com/CT15/BreezoModel.git", :tag => "1.0.1" }
  s.source_files  = "BreezoModel/Model/*.swift"
  s.swift_version = "4.2"

end
