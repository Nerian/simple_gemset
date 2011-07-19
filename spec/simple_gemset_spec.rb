require 'wrong/adapters/rspec'      

ENV['testing'] = 'true'   

describe '# Command line calls' do                 

  before(:each) { if File.exist?('spec/rvmrc') then File.delete('spec/rvmrc') end }

  describe "# simple_gemset" do
    
    subject {
      `./bin/simple_gemset`
      get_rvmrc_content      
    } 
    
    it { assert { subject == 
      "# Generated with Simple_gemset \n"+
      "rvm gemset create 'simple_gemset'\n"+
      "rvm gemset use 'simple_gemset'" }}        
  end

  describe "# simple_gemset my_gemset_name" do
    
    subject {
      `./bin/simple_gemset my_gemset_name`
      get_rvmrc_content      
    }
    
    it { assert { subject == 
      "# Generated with Simple_gemset \n"+
      "rvm gemset create 'my_gemset_name'\n"+
      "rvm gemset use 'my_gemset_name'" } } 
  end                 
  
  describe "# simple_gemset --ruby" do
    
    subject {
      `./bin/simple_gemset --ruby`
      get_rvmrc_content      
    }
    it { assert { subject == 
      "# Generated with Simple_gemset \n"+
      "rvm use 'ruby-1.9.2-p180'\n"+
      "rvm gemset create 'simple_gemset'\n"+
      "rvm gemset use 'simple_gemset'" } }        
  end  
  
  describe "# simple_gemset my_gemset_name --ruby" do       
    
    subject {
      `./bin/simple_gemset my_gemset_name --ruby`
      get_rvmrc_content      
    }               
    
    it { assert { subject == 
      "# Generated with Simple_gemset \n"+
      "rvm use 'ruby-1.9.2-p180'\n"+
      "rvm gemset create 'my_gemset_name'\n"+
      "rvm gemset use 'my_gemset_name'" } }           
  end
end

def get_rvmrc_content
  contents = ''
  File.open("spec/rvmrc", "r") do |file|
    contents = file.read
  end   
  contents  
end 