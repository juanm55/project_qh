
User.create(:email => 'a@a.a', :password => '123456', :show_name => 'JMLF', :password_confirmation => '123456', :role => 'megaadmin')
User.create(:email => 'b@b.b', :password => '123456', :show_name => 'admin', :password_confirmation => '123456', :role => 'admin')
User.create(:email => 'c@c.c', :password => '123456', :show_name => 'owner', :password_confirmation => '123456', :role => 'owner')
User.create(:email => 'd@d.d', :password => '123456', :show_name => 'user', :password_confirmation => '123456', :role => 'user')

Cplace.create(:name => 'Rumba', :description => 'pa rumbiar')
Cplace.create(:name => 'Cultural', :description => 'pa deleitarse')
Cplace.create(:name => 'Gastronomia', :description => 'pa tragar')
Cplace.create(:name => 'Turistico', :description => 'pa conocer')

Cmoney.create(:name => 10000)
Copen.create(:name => 'Diurno')
Copen.create(:name => 'Nocturno')

Place.create(:name => 'sitio de rumba', :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
Place.create(:name => 'sitio de cultura', :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
Place.create(:name => 'Restaurante Berenjena', :cmoney_id => 1, :copen_id => 1, :description => 'yuca')
Place.create(:name => 'sitio de turismo', :cmoney_id => 1, :copen_id => 1, :description => 'yuca')

Categorization.create(:place_id => 1, :cplace_id => 1)
Categorization.create(:place_id => 2, :cplace_id => 2)
Categorization.create(:place_id => 3, :cplace_id => 3)
Categorization.create(:place_id => 4, :cplace_id => 4)

