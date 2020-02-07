# As a visitor,
# When I visit a project's show page ("/projects/:id"),
# I see that project's name and material
# And I also see the theme of the challenge that this project belongs to.
# (e.g.    Litfit
#     Material: Lamp Shade
#   Challenge Theme: Apartment Furnishings)

require 'rails_helper'

RSpec.describe 'As a visitor' do
    describe 'When I visit the projects show page' do
        before :each do
            @project1 = Project.create(name: "Litfit",
                                        material: "Lamp Shade",
                                        challenge_theme: "Apartment Furnishings")
        end 

        it "I see that projects name, material and theme of the challenge it belongs to" do

            visit "/projects/#{@project1.id}"

            expect(current_path).to eq("/projects/#{@project1.id}")
            
            expect(page).to have_content(@project1.name)
            expect(page).to have_content(@project1.material)
            expect(page).to have_content(@project1.challenge_theme)
        end
    end
end