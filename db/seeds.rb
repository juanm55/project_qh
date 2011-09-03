# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:email => 'a@a.a', :password => '123456', :password_confirmation => '123456', :role => 'megaadmin')
User.create(:email => 'b@b.b', :password => '123456', :password_confirmation => '123456', :role => 'user')

Cplace.create(:name => 'Rumba', :description => 'aaaaaaaaaaaaaaaaaaa')
Cplace.create(:name => 'Cultural', :description => 'aaaaaaaaaaaaaaaaaaa')
Cplace.create(:name => 'Gastronomia', :description => 'aaaaaaaaaaaaaaaaaaa')
Cplace.create(:name => 'Turistico', :description => 'aaaaaaaaaaaaaaaaaaa')

Cmoney.create(:name => 10000)
Copen.create(:name => 'Diurno')
Copen.create(:name => '')

Place.create(:name => 'sitio de rumba', :cplace_id => 1, :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
Place.create(:name => 'sitio de cultura', :cplace_id => 2, :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
Place.create(:name => 'Restaurante Berenjena', :cplace_id => 3, :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
Place.create(:name => 'sitio de turismo', :cplace_id => 4, :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
