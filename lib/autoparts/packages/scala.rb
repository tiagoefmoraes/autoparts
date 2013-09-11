module Autoparts
  module Packages
    class Scala < Package
      name 'scala'
      version '2.10.2'
      description 'Scala: An object-functional programming language'
      source_url 'http://www.scala-lang.org/files/archive/scala-2.10.2.tgz'
      source_sha1 '86b4e38703d511ccf045e261a0e04f6e59e3c926'
      source_filetype 'tgz'
      binary_url 'https://nitrousio-autoparts-use1.s3.amazonaws.com/scala-2.10.2-binary.tar.gz'
      binary_sha1 '7f77d38d7f171ebd071da1538b61e80b3648a706'

      def install
        Dir.chdir('scala-2.10.2') do
          prefix_path.mkpath
          execute 'cp', '-R', '.', prefix_path
        end
      end
    end
  end
end
