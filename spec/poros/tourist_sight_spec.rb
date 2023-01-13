RSpec.describe TouristSight do
		before :each do
			data = {:type=>"Feature",
               :properties=>
                {:name=>"Maison de Chateaubriand",
                 :country=>"France",
                 :country_code=>"fr",
                 :region=>"Metropolitan France",
                 :state=>"Ile-de-France",
                 :county=>"Hauts-de-Seine",
                 :city=>"Châtenay-Malabry",
                 :municipality=>"Antony",
                 :postcode=>"92290",
                 :suburb=>"La Butte Rouge",
                 :quarter=>"Robinson",
                 :street=>"Rue de Chateaubriand",
                 :housenumber=>"87",
                 :lon=>2.2642505154094605,
                 :lat=>48.77268875,
                 :formatted=>"Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France",
                 :address_line1=>"Maison de Chateaubriand",
                 :address_line2=>"87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France",
                 :categories=>
                  ["building",
                   "building.historic",
                   "building.tourism",
                   "entertainment",
                   "entertainment.museum",
                   "fee",
                   "heritage",
                   "tourism",
                   "tourism.sights"],
                 :details=>["details", "details.contact", "details.heritage", "details.wiki_and_media"],
                 :datasource=>
                  {:sourcename=>"openstreetmap",
                   :attribution=>"© OpenStreetMap contributors",
                   :license=>"Open Database Licence",
                   :url=>"https://www.openstreetmap.org/copyright",
                   :raw=>
                    {:fee=>"full:3;discount:1,5;free:1st sunday of month",
                     :name=>"Maison de Chateaubriand",
                     :email=>"reservations-chateaubriand@cg92.fr",
                     :image=>"https://commons.wikimedia.org/wiki/Category:Maison_de_Chateaubriand",
                     :phone=>"+33155521300",
                     :osm_id=>89674206,
                     :"ref:mhs"=>"PA00088087",
                     :tourism=>"museum",
                     :website=>"http://maison-de-chateaubriand.hauts-de-seine.net/web/chateaubriand/la-maison-de-chateaubriand",
                     :building=>"yes",
                     :heritage=>2,
                     :historic=>"manor",
                     :operator=>"Département des Hauts de Seine",
                     :osm_type=>"w",
                     :wikidata=>"Q2509432",
                     :"addr:city"=>"Châtenay-Malabry",
                     :wikipedia=>"fr:Maison de Chateaubriand",
                     :"addr:street"=>"Rue de Chateaubriand",
                     :"ref:FR:label"=>"Maisons des Illustres",
                     :"addr:postcode"=>92290,
                     :opening_hours=>"Mar-Oct: Tu-Su 10:00-12:00,13:00-18:00; Nov-Feb: Tu-Su 10:00-12:00, 13:00 - 16:00",
                     :"addr:housenumber"=>87,
                     :"heritage:operator"=>"mhs",
                     :"mhs:inscription_date"=>"1978-01-24"}},
                 :place_id=>"515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64"},
               :geometry=>{:type=>"Point", :coordinates=>[2.264378326861261, 48.772677721040615]}}
			@test_sight = TouristSight.new(data)
		end

		it "exists" do
			expect(@test_sight).to be_a(TouristSight)
		end

		it "has attributes" do
			expect(@test_sight.name).to eq("Maison de Chateaubriand")
			expect(@test_sight.address).to eq("Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France")
			expect(@test_sight.place_id).to eq("515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64")
    end
end
