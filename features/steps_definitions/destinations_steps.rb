Dado /^que existe el destino "(.*?)"$/ do |nombre|
  unless Destination.find_by_name(nombre)
    Destination.new(:name => nombre,
                    :description => "Discover the magic of " + nombre,
                    :image_map => '<div style="text-align:center; width:880px; margin-left:auto; margin-right:auto;">
<img id="Image-Maps_3201211011822085" src="http://www.image-maps.com/uploaded_files/3201211011822085_chaxrasrestaurante-main.jpeg" usemap="#Image-Maps_3201211011822085" border="0" width="880" height="1058" alt="" />
<map id="_Image-Maps_3201211011822085" name="Image-Maps_3201211011822085">
<area shape="rect" coords="105,138,780,371" href="http://www.image-maps.com/" alt="" title=""    />
<area shape="rect" coords="878,1056,880,1058" href="http://www.image-maps.com/index.php?aff=mapped_users_3201211011822085" alt="Image Map" title="Image Map" />
</map>
<!-- Image map text links - Start - If you do not wish to have text links under your image map, you can move or delete this DIV -->
<div style="text-align:center; font-size:12px; font-family:verdana; margin-left:auto; margin-right:auto; width:880px;">
	<a style="text-decoration:none; color:black; font-size:12px; font-family:verdana;" href="http://www.image-maps.com/" title="Untitled">Untitled</a>
 | 	<a style="text-decoration:none; color:black; font-size:12px; font-family:verdana;" href="http://www.image-maps.com/index.php?aff=mapped_users_3201211011822085" title="Image Map">Image Map</a>
</div>
<!-- Image map text links - End - -->

</div>').save!
  end
  visit('/')
end

Cuando /^lleno el formulario para el destino "(.*?)"$/ do |nombre|
  fill_in("Name", :with => nombre)
  fill_in("Description", :with => "Discover the magic of " + nombre)
  fill_in("Image map", :with => '<div style="text-align:center; width:880px; margin-left:auto; margin-right:auto;">
<img id="Image-Maps_3201211011822085" src="http://www.image-maps.com/uploaded_files/3201211011822085_chaxrasrestaurante-main.jpeg" usemap="#Image-Maps_3201211011822085" border="0" width="880" height="1058" alt="" />
<map id="_Image-Maps_3201211011822085" name="Image-Maps_3201211011822085">
<area shape="rect" coords="105,138,780,371" href="http://www.image-maps.com/" alt="" title=""    />
<area shape="rect" coords="878,1056,880,1058" href="http://www.image-maps.com/index.php?aff=mapped_users_3201211011822085" alt="Image Map" title="Image Map" />
</map>
<!-- Image map text links - Start - If you do not wish to have text links under your image map, you can move or delete this DIV -->
<div style="text-align:center; font-size:12px; font-family:verdana; margin-left:auto; margin-right:auto; width:880px;">
	<a style="text-decoration:none; color:black; font-size:12px; font-family:verdana;" href="http://www.image-maps.com/" title="Untitled">Untitled</a>
 | 	<a style="text-decoration:none; color:black; font-size:12px; font-family:verdana;" href="http://www.image-maps.com/index.php?aff=mapped_users_3201211011822085" title="Image Map">Image Map</a>
</div>
<!-- Image map text links - End - -->

</div>')
end

Entonces /^no debería ver "(.*?)"$/ do |resultado|
  page.should have_no_content(resultado)
end

Entonces /^no debería ver los controles de administración$/ do
  page.should have_no_content("Edit")
  page.should have_no_content("Delete")
  #page.should have_no_content("New")
end

Entonces /^debería ver el destino "(.*?)"$/ do |destino|
  page.should have_content(destino)
  page.should have_content("Discover the magic of " + destino)
end

Entonces /^no debería ver el destino "(.*?)"$/ do |destino|
end
