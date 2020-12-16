require 'pry'

class MP3Importer
    attr_accessor :path, :list_of_filenames
  
    def initialize(path)
      @path = path
      @list_of_filenames = get_filenames
    end
  
    def import
      self.list_of_filenames.each do |filename|
        Song.new_by_filename(filename)
      end
    end
  
    def get_filenames 
      filenames = [ ]
  
      Dir.foreach(self.path).each do |filename| 
        filenames << filename
      end 
      
      # => ['..', '.', 'song 1', 'song 2'] 
      filenames = filenames[2..filenames.size]
  
      filenames
    end
  
    def files
      list_of_filenames
    end
  
  end



# class MP3Importer
#     attr_accessor :path, :list_of_filenames
#     def initialize(path)
#         @path = path
#     end
#     def import
#         self.list_of_filenames.each do |filename|
#             Song.new_by_filename(filename)
#         end
#     end
#     def files
#         Dir.foreach(self.path).each do |filename|
#             if filename != "." ||filename != ".."
#                 self.list_of_filenames << filename
#             end
            
#         end 
#         self.list_of_filenames
#         # filenames << filename
#         # end
#         # filenames = filenames[2..filenames.size]
#         # filenames.each {|imported| Song.new_by_filename(imported)}
#         # filenames
#     end



# end
# require 'pry'
# class MP3Importer
#     attr_accessor :path, :list_of_filenames

#     def initialize(path)
#         @path = path
#         @list_of_filenames = get_filenames
#     end

#     def import
    
#         #binding.pry
#         self.list_of_filenames.each do |filename|
#             Song.new_by_filename(filename)
#         end
#     end

#     def files
#         filenames = [ ]

#         Dir.foreach(self.path).each do |filename| 
#            filenames << filename
#         end 

#         filenames = filenames[2..filenames.size]

#         self.list_of_filenames = filenames

#         filenames
#     end

# end