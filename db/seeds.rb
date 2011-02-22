# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Project.delete_all
Project.create(:title => 'GIDM',
  :description => 
    %{<p>
        The <em>Get It Done Machine</em> will help me and my fellow Probity
        teammates complete our tasks in the most effective way possible. 
        Building the app will doubly count as a learning opportunity for us.
      </p>})
# . . .
Project.create(:title => 'campusCATALYST',
  :description =>
    %{<p>
        I am the Program Coordinator for a nonprofit consulting nonprofit
        that leverages student teams to provide probono consulting work
        for local Chicago nonprofit organizations.
      </p>})
# . . .

Project.create(:title => 'Probity',
  :description => 
    %{<p>
        <em>Probity</em> is an organization I created to pursue my chosen
        meaning of life. And that is to work with the best people to solve
        meaningful problems in the world. I am choosing to learn how to 
        solve problems with technology through software, and to create 
        software through learning to program.
      </p>})