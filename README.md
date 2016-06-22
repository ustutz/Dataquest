# Dataquest

####Solutions of [dataquest.io](https://www.dataquest.io/learn) missions in Haxe language

I want to learn more about Data Science. The tutorials are written for the Python language. Because the project I want to use this for is written in [Haxe](http://haxe.org/) I'm trying to find out if I can use the Python compile target of [Haxe](http://haxe.org/) to do this.

The directories of the missions contain the following files

- **compile.hxml**  
Instructions for the [Haxe](http://haxe.org/) compiler to create the Python script.
If you don't use [Haxedevelop](http://haxedevelop.org/) you can compile the Haxe code with this script.
When external libraries like pandas or numpy are use you sometimes have to include this line  
<code>-cp ../../../../../pyextern</code>

- **Project.hxproj**  
Project file for users of [Haxedevelop](http://haxedevelop.org/)

- **Run.bat**  
Batch file to run the Pyhon script

- **Script.hx**  
[Haxe](http://haxe.org/) sourcecode

- **script.py**  
Python sourcecode created by the [Haxe](http://haxe.org/) compiler

Some examples use the pyextern classes. They are not included in the git.
You can get them at [https://github.com/andyli/pyextern/tree/master/out](https://github.com/andyli/pyextern/tree/master/out)