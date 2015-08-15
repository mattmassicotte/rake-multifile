require 'rake-multifile/multi_file_task'

module RakeMultifile
  module DSL
    def multifile(*args, &block)
      RakeMultifile::MultiFileTask.define_task(*args, &block)
    end
  end
end

self.extend RakeMultifile::DSL
