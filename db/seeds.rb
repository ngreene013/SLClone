# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

links = [
# Norcal
# San Mateo/San Francisco
    ['North Ocean Beach', 'San Francisco', 'oceanbeachncam', 4127, 2957],
    ['South Ocean Beach', 'San Francisco', 'obsfsouthcam', 4128, 2957],
    ['Linda Mar', 'Pacifica', 'pacificacam', 5013, 2957],
    ['Mavericks', 'Half Moon Bay', 'maverickscam', 4152, 2957],

    # Central Cal
    # Santa Cruz
    ['Steamer Lane - Fixed', 'Santa Cruz', 'steamerfixedcam', 132587, 2958],
    ['Steamer Lane - PTZ', 'Santa Cruz', 'steamercam', 4188, 2958],
    ['Pleasure Point', 'Santa Cruz', 'pleasureptcam', 4190, 2958],
    ['Pleasure Point - 38th Street', 'Santa Cruz', 'thirtyeightstcam', 4191, 2958],
    ['Pleasure Point - Capitola', 'Santa Cruz', 'capitolacam', 10763, 2958],
    ['Steamer Lane - Cowells', 'Santa Cruz', 'cowellscam', 4189, 2958],

    # Monterey
    ['Marina Beach', 'Monterey', 'marinasbcam', 4957, 2959],
    ['Monterey Bay', 'Monterey', 'montereybaycam', 135849, 2959],

    # San Luis Obispo
    ['Point Piedras Blancas', 'Big Sur', 'piedrasblancascam', 135851, 2692],
    ['Cayucos Pier', 'Cayucos', 'cayucospiercam', 5056, 2692],
    ['Cayucos Overview', 'Cayucos', 'cayucosovcam', 135838, 2692],
    ['Morro Bay North', 'Morro Bay', 'morrobaynorthcam', 135840, 2692],
    ['Morro Bay Cam', 'Morro Bay', 'morrocam', 4193, 2692],
    ['Morro Bay Harbor Entrance', 'Morro Bay', 'morroharborentcam', 136184, 2692],
    ['Morro Bay Harbor', 'Morro Bay', 'morrobayharborcam', 135841, 2692],
    ['Morro Bay Boat Launch', 'Morro Bay', 'morroboatlaunchcam', 138701, 2692],
    ['Baywood Beach', 'Baywood Beach', 'baywoodbeachcam', 135850, 2692],
    ['Avila', 'Avila Beach', 'avilabeachcam', 5064, 2692],
    ['Pismo Pier', 'Pismo Beach', 'pismocam', 5065, 2692],
    ['Pismo North', 'Pismo Beach', 'pismonorthcam', 135842, 2692],
    ['Pismo South', 'Pismo Beach', 'pismosouthcam', 135843, 2692],

    # Southern California
    # North Santa Barbara
    ['Jamala', 'North Santa Barbara', 'jalamacam', 5038, 2693],

    # Santa Barbara
    ['Campus Point', 'Santa Barbara', 'campusptcam', 4997, 2141],
    ['Sandspit', 'Santa Barbara', 'campusptcam', 4998, 2141],

    # Ventura
    ['Ventura Point', 'Ventura', 'venturapointcam', 89981, 2952],
    ['C Street', 'Ventura', 'venturacam', 4200, 2952],
    ['C Street - Fixed', 'Ventura', 'cstreetfixedcam', 135844, 2952],

    # North Los Angeles
    ['County Line', 'Ventura', 'countylinecam', 4203, 2142],
    ['County Line Overview', 'Ventura', 'countylineovcam', 135846, 2142],
    ['Zuma', 'Malibu', 'zumacam', 4949, 2142],
    ['Malibu', 'Malibu', 'malibucam', 4209, 2142],
    ['Malibu 1st Point', 'Malibu', 'malibufirstptcam', 119811, 2142],
    ['Malibu Overview', 'Malibu', 'malibuovcam', 135847, 2142],
    ['Topanga Beach', 'Malibu', 'topangabeachcam', 4210, 2142],
    ['Chart House', 'Malibu', 'charthousecam', 4940, 2142],
    ['Sunset Point', 'Malibu', 'sunsetpointcacam', 4883, 2142],
    ['Sunset Beach', 'Malibu', 'sunsetbeachcam', 119813, 2142],

    # South Los Angeles
    ['Venice Beach', 'Venice', 'venicebeachcam', 4211, 2951],
    ['El Porto', 'El Porto', 'elportocam', 4900, 2951],
    ['Manhattan Beach', 'Manhattan Beach', 'manhattanbeachcam', 4901, 2951],
    ['Haggartys', 'Torrance', 'torrancecam', 4910, 2951],

    # North Orange County
    ['Seal Beach', 'Seal Beach', 'sealbeachcam', 4217, 2143],
    ['South Side/13th Street', 'Seal Beach', 'sealbeachsscam', 4865, 2143],
    ['Anderson Street', 'Huntington Beach', 'andersonstreetcam', 4219, 2143],
    ['Bolsa Chica SB', 'Huntington Beach', 'bolsachicasbcam', 4868, 2143],
    ['Bolsa Chica Overview', 'Huntington Beach', 'bolsachicacam', 103685, 2143],
    ['Goldenwest Street', 'Huntington Beach', 'goldenwestcam', 4870, 2143],
    ['17th Street', 'Huntington Beach', 'seventeenthstcam', 4871, 2143],
    ['HB Pier North', 'Huntington Beach', 'hbpiernscam', 4223, 2143],
    ['HB Pier South', 'Huntington Beach', 'hbpiersscam', 4874, 2143],
    ['Huntington SB', 'Huntington Beach', 'hbstatebeachcam', 103681, 2143],

    ['56th Street', 'Newport Beach', 'westnewportcam', 43103, 2143],
    ['54th Street', 'Newport Beach', 'fiftyfourthstcam', 130559, 2143],
    ['Newport Jetties', 'Newport Beach', 'fiftysixstcam', 4876, 2143],
    ['36th Street', 'Newport Beach', 'thirtysixstscamtest', 4226, 2143],
    ['Lower Jetties', 'Newport Beach', 'twentyeighthstcam', 131676, 2143],
    ['Blackies', 'Newport Beach', 'blackiescam', 53412, 2143],
    ['Newport Pier', 'Newport Beach', 'newportpiercam', 4227, 2143],
    ['The Wedge', 'Newport Beach', 'wedgecam', 4232, 2143],

    # South Orange County
    ['Salt Creek', 'Orange County', 'saltcreekcam', 4233, 2950],
    ['Doheny SB', 'Orange County', 'dohenycam', 4848, 2950],
    ['T-Street', 'San Clemente', 'tstreetcam', 4235, 2950],
    ['San Clemente SB', 'San Clemente', 'scstatebeachcam', 4843, 2950],
    ['Upper Trestles', 'San Clemente', 'upperscam', 4738, 2950],
    ['Lower Trestles', 'San Clemente', 'lowerscam', 4740, 2950],
    ['The Point, San Onofre', 'San Onofre - The Point', 'sanosbcam', 4237, 2950],
    ['Old Mans, San Onofre', 'San Onofre - Old Mans', 'oldmanssanocam', 109918, 2950],

    # North San Diego
    ['Oceanside Harbor', 'Oceanside', 'oceansidecacam', 4238, 2144],
    ['Oceanside Pier - North', 'Oceanside', 'osidepiernscam', 4241, 2144],
    ['Oceanside Pier - South', 'Oceanside', 'osidepiersscam', 68366, 2144],
    ['Tamarack', 'Carlsbad', 'tamarackcam', 4242, 2144],
    ['Ponto at South Carlsbad', 'Carlsbad', 'pontostatecam', 12803, 2144],
    ['Ponto', 'Carlsbad', 'pontohdcam', 4773, 2144],
    ['Grandview', 'Carlsbad', 'grandviewcam', 4771, 2144],
    ['Beacons', 'Carlsbad', 'beaconscam', 4772, 2144],
    ['Swamis', 'Carlsbad', 'swamiscam', 4789, 2144],
    ['Pipes at San Elijo SB', 'Carlsbad', 'pipessandiegocam', 4790, 2144],
    ['San Elijo SB', 'Carlsbad', 'sanelinocam', 4791, 2144],
    ['Cardiff', 'Cardiff', 'cardiffcam', 4786, 2144],
    ['Del Mar', 'Del Mar', 'delmarcam', 4783, 2144],

    # South San Diego
    ['Torrey Pines SB', 'San Diego', 'torreypinescam', 107951, 2953],
    ['Scripps', 'San Diego', 'scrippscam', 4246, 2953],
    ['La Jolla Shores', 'San Diego', 'lajollashorescam', 4812, 2953],
    ['Windansea', 'San Diego', 'windanseacam', 4248, 2953],
    ['Old Mans - Tourmaline', 'San Diego', 'tourmalinecam', 4804, 2953],
    ['Pacific Beach', 'San Diego', 'pacificbeachcam', 4250, 2953],
    ['Mission Beach', 'San Diego', 'missionbeachcam', 4252, 2953],
    ['Ocean Beach - SD', 'San Diego', 'oceanbeachsdcam', 4253, 2953],
    ['Imperial Beach', 'San Diego', 'imperialbeachcam', 4255, 2953],


    # Hawaii
    #Ohau - North Shore
    #['Pipeline', 'Ohau', 'pipelinecam'],

    # Costa Rica
    # North Costa Rica  region_id = 2979
    # Central Costa Rica  region_id = 2164
    ['Playa Grande', 'Playa Grande', 'void', 6637, 2979],
    ['Avellanas', 'Avellanas', 'void', 6636, 2979],
    ['Nosara - Guiones', 'Nosara', 'void', 5559, 2979],
]


# t.integer :spot_id
# t.integer :region_id
# t.string :spot_full_name
# t.string :spot_city_name
# t.string :spot_cam_name
links.each do |entry|
  SurfSpot.create(spot_full_name: entry[0], spot_city_name: entry[1], spot_cam_name: entry[2], id: entry[3], region_id: entry[4])
end

