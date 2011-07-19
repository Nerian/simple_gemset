### Simple Gemset: A generator for a minimal .rvmrc file

I am a Ruby developer. As such, I am constantly creating new Ruby projects.                       

Simple gemset is a generator for .rvmrc files. 

## Installing:

    $ gem install simple_gemset

## Using it:                

Basically: 

    simple_generator [ name_of_gemset ] [ --ruby ] # if you want to select the ruby version       

Examples:

    $ mkdir my_new_project
    $ cd my_new_project

    $ simple_generator
		create  .rvmrc               

		# Generated with Simple_gemset	
	    rvm gemset create 'name of the current folder'
		rvm gemset use 'name of the current folder'
	
	$ simple_generator my_gemset
		create  .rvmrc		                        
		                                  
		# Generated with Simple_gemset
		rvm gemset create 'my_gemset'
		rvm gemset use 'my_gemset'

	$ simple_generator --ruby
		Choose which Ruby version do you want to use
   	 	0: ruby-1.8.6-p420
		1: ruby-1.8.6-head
		2: ruby-1.8.7-p352
		3: ruby-1.8.7-head
		4: ruby-1.9.1-p378
		5: ruby-1.9.1-p431
		6: ruby-1.9.1-head
		7: ruby-1.9.2-p180
		8: ruby-1.9.2-p290
		9: ruby-1.9.2-head
		10: ruby-1.9.3-head
		11: ruby-head
		12: goruby
		13: jruby-1.2.0
		14: jruby-1.3.1
		15: jruby-1.4.0
		16: jruby-1.6.1
		17: jruby-1.6.2      
		Which ruby? Just tell me the number: 7
	
		create  .rvmrc		                        
                                
		# Generated with Simple_gemset
		rvm use 'ruby-1.9.2-p180'
		rvm gemset create 'name of the current folder'
		rvm gemset use 'name of the current folder' 
		
	$ simple_generator my_gemset --ruby
		Choose which Ruby version do you want to use
   	 	0: ruby-1.8.6-p420
		1: ruby-1.8.6-head
		2: ruby-1.8.7-p352
		3: ruby-1.8.7-head
		4: ruby-1.9.1-p378
		5: ruby-1.9.1-p431
		6: ruby-1.9.1-head
		7: ruby-1.9.2-p180
		8: ruby-1.9.2-p290
		9: ruby-1.9.2-head
		10: ruby-1.9.3-head
		11: ruby-head
		12: goruby
		13: jruby-1.2.0
		14: jruby-1.3.1
		15: jruby-1.4.0
		16: jruby-1.6.1
		17: jruby-1.6.2      
		Which ruby? Just tell me the number: 7

		create  .rvmrc		                        
        
		# Generated with Simple_gemset
		rvm use 'ruby-1.9.2-p180'
		rvm gemset create 'my_gemset'
		rvm gemset use 'my_gemset'		
