Pod::Spec.new do |s|
	s.name         = "CocoaHTTPServer"
	s.version      = "2.3"
	s.license      = 'BSD'
	s.summary      = "A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications."
	s.homepage     = "https://github.com/robbiehanson/CocoaHTTPServer"
	s.author       = { "Robbie Hanson" => "cocoahttpserver@googlegroups.com" }
	s.ios.deployment_target = '5.0'
	s.source       = { :git => "https://github.com/woohyuknrg/CocoaHTTPServer.git", :tag => s.version }
	s.framework = 'CFNetwork','Security'
	s.libraries = 'xml2'
	s.xcconfig = { "HEADER_SEARCH_PATHS" => "\"$(SDKROOT)/usr/include/libxml2\"" }
	s.requires_arc = true
    s.source_files = '{Core,Extensions}/**/*.{h,m}'
  	s.dependency "CocoaAsyncSocket"
    s.dependency "CocoaLumberjack"
	
end