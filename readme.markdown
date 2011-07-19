### Simple Gemset: A generator for minimal a .rvmrc file

I am a Ruby developer. As such, I am constantly creating new Ruby projects.

Simple Gemset is a thor script that generates a .rvmrc file without ANY configuration. Fire and forget.     

This is the .rvmrc that is generated:

    rvm gemset create '#{rvm-gemset}' # defaults to the name of the current folder
	rvm gemset use '#{rvm-gemset}'

## Installing:

    $ thor install https://github.com/Nerian/Simple_gemset/simple_gemset.thor

## Using it:

    $ mkdir my_new_project
    $ cd my_new_project

    $ thor rvmrc:new
		create  .rvmrc
	
	$ thor rvmrc:new some_other_name_for_the_new_gemset
		create  .rvmrc		
