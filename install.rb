#Open requirements_rb.txt File That Contains All Ruby Libraries
# That This Framework Need.
ruby_requires_file = open("requirements_rb.txt")

#Read All Lines Of That. Now We Have all_ruby_requires Array
# That Contains All Libraries.
all_ruby_requires = ruby_requires_file.readlines()

#Close The requirements_rb.txt File.
ruby_requires_file.close()

#Read All Requirements One By One And Install Them.
for i in all_ruby_requires
  system "gem install #{i.replace("\n","").downcase}"
end

#Open requirements_py.txt File That Contains All Python Libraries
# That This Framework Need.
python_requires_file = open("requirements_py.txt")

#Read All Lines Of That. Now We Have all_ruby_requires Array
# That Contains All Libraries.
all_python_requires = python_requires_file.readlines()

#Close The requirements_py.txt File.
python_requires_file.close()

#Read All Requirements One By One And Install Them.
for i in all_python_requires
  system "python -m pip install #{i.replace("\n","").downcase}"
end
