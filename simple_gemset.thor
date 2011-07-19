class Rvmrc < Thor                                                                                 
  include Thor::Actions
       
  desc "new [gemset_name]", "Create a new .rvmrc file configured with a new Gemset"
  def new(gemset_name = File.basename(Dir.getwd))                                                                                                                                      
    create_file('.rvmrc') do      
      "rvm gemset create '#{gemset_name}'\n" +
      "rvm gemset use '#{gemset_name}'"
    end
  end                                                                                                  
end