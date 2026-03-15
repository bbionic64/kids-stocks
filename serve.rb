require 'webrick'
port = (ENV['PORT'] || 8080).to_i
dir = File.dirname(File.expand_path(__FILE__))
server = WEBrick::HTTPServer.new(Port: port, DocumentRoot: dir)
trap('INT') { server.shutdown }
trap('TERM') { server.shutdown }
server.start
