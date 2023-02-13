//
//  CountriesNames.swift
//  Map Master
//
//  Created by Rostyslav on 07.02.2023.
//

import Foundation
public let names_asia = [
    ["AF", "Afghanistan", "Republic of Afghanistan", "afghanistan", "Afganistan"],
    ["AM", "Armenia", "Republic of Armenia", "armenia"],
    ["AZ", "Azerbaijan", "azerbaijan", "Republic of Azerbaijan"],
    ["", "Bahrain", "Kingdom of Bahrain", "bahrain", "Bahrein"],//оставляем, просто слишком мелкий
    ["BD", "Bangladesh", "Republic of Bangladesh", "bangladesh"],
    ["BT", "Bhutan", "Butan", "Kingdom of Bhutan", "butan", "bhutan"],
    ["BN"," Brunei", "brunei", "Brunei Darussalam"],
    ["KH", "Cambodia", "cambodia"],
    ["CN","China", "china", "Republic of China", "PRC"],
    ["CY", "Cyprus", "cyprus", "Ciprus"],
    ["GE", "Georgia", "georgia", "Georgy"],
    ["IN", "India", "india", "Republic of India"],
    ["ID", "Indonesia", "indonesia"],
    ["IR", "Iran", "iran", "Republic of Iran"],
    ["IQ", "Iraq", "iraq", "Republic of Iraq"],
    ["IL", "Israel", "israel", "State of Israel"],
    ["JP", "Japan", "japan"],
    ["JO", "Jordan", "jordan", "Hashemite Kingdom of Jordan"],
    ["KZ", "Kazakhstan", "kazakhstan", "Kazahstan"],
    ["KW", "Kuwait", "kuwait", "State of Kuwait"],
    ["KG", "Kyrgyzstan", "kyrgyzstan", "kyrgystan"],
    ["LA", "Laos", "Lao People's Democratic Republic", "laos", "Lao"],
    ["LB", "Lebanon", "lebanon", "Republic of Lebanon"],
    ["MY", "Malaysia", "malaysia"],
    ["", "Maldives", "maldives"],//тоже просто мелкий, оставляем
    ["MN", "Mongolia", "mongolia"],
    ["MM", "Myanmar", "myanmar", "Burma", "burma"],
    ["NP", "Nepal", "nepal", "Federal Democratic Republic of Nepal"],
    ["KP", "North Korea", "north korea"],
    ["OM", "Oman", "oman", "Sultanate of Oman"],//g
    ["PK", "Pakistan", "pakistan", "Republic of Pakistan"],
    ["PS", "Palestine", "palestine", "State of Palestine"],
    ["PH", "Philippines", "philippines", "Philipines", "Republic of the Philippines"],
    ["QA", "Qatar", "qatar", "State of Qatar"],
    ["SA", "Saudi Arabia", "Riyadh", "34268528"],
    //["", "Singapore", "singapore", "Republic of Singapore"],//государство-город, не нужно
    ["KR", "South Korea", "south korea"],
    ["LK", "Sri Lanka", "sri lanka", "Ceylon", "ceylon"],
    ["SY", "Syria", "syria", "Syrian Arab Republic"],
    ["TW", "Taiwan", "taiwan", "Taywan"],
    ["TJ", "Tajikistan", "tajikistan", "Tadzhikistan", "Republic of Tajikistan"],
    ["TH", "Thailand", "thailand", "Kingdom of Thailand"],
    ["TR", "Turkey", "turkey", "Türkiye", "Republic of Türkiye"],
    ["TM", "Turkmenistan", "turkmenistan", "Türkmenistan"],
    ["AE", "United Arab Emirates"],
    ["UZ", "Uzbekistan", "uzbekistan", "Republic of Uzbekistan"],
    ["VN", "Vietnam", "vietnam", "Viet Nam", "Socialist Republic of Vietnam"],
    ["YE", "Yemen", "yemen", "Republic of Yemen"]
]


public let names_europe = [
    ["AL", "Albania", "albania",  "Republic of Albania"],
    ["","Andorra", "andorra"],//тоже мелкая страна, оставляем
    ["AT", "Austria", "austria", "Republic of Austria"],
    ["BY", "Belarus", "belarus", "Republic of Belarus"],
    ["BE", "Belgium", "belgium", "Kingdom of Belgium"],
    ["BA", "Bosnia and Herzegovina", "bosnia and herzegovina"],
    ["BG", "Bulgaria", "bulgaria", "Republic of Bulgaria"],
    ["HR" ,"Croatia", "croatia"],
    ["CZ", "Czechia", "czechia", "Czech Republic"],
    ["DK", "Denmark", "denmark", "Danmark"],
    ["EE", "Estonia", "estonia", "Republic of Estonia"],
    //["","Faroes", "faroes", "Faroe Islands"],//территория Дании, удаляем
    ["FI", "Finland", "finland", "Republic of Finland"],
    ["FR", "France", "france", "French Republic"],
    ["DE", "Germany", "germany", "Federal Republic of Germany"],
    //["","Gibraltar", "gibraltar"],//территория Великобритании, убираем
    ["GB", "United Kingdom", "united kingdom", "Britain", "britain", "Great Britain"],
    ["GR", "Greece", "greece", "Hellenic Republic"],
    ["HU", "Hungary", "hungary"],
    ["IS", "Iceland", "iceland"],
    ["IE", "Ireland", "ireland", "Airlann"],
    //["","Isle of Man", "isle of Man"], Великобритания, удаляем
    ["IT", "Italy", "italy", "Italian Republic"],
    ["LV", "Latvia", "latvia", "Republic of Latvia"],
    ["", "Liechtenstein", "liechtenstein"],//оставляем, Карлик
    ["LT", "Lithuania", "lithuania", "Litva", "Republic of Lithuania"],
    ["LU", "Luxembourg", "luxembourg", "Grand Duchy of Luxembourg", "Luxemburg"],
    ["","Malta", "malta", "Republic of Malta"],// оставляем
    ["MD", "Moldova", "moldova", "Republic of Moldova"],
    ["XK", "Kosovo", "kosovo","Republic of Kosovo"],
    //["","Monako", "monako", "Principality of Monaco"],//Государство-город, не нужно
    ["ME", "Montenegro", "montenegro"],
    ["NL", "Netherlands", "netherlands", "Holland", "Nederland"],
    ["MK","North Macedonia", "north macedonia", "Macedonia", "macedonia", "Republic of North Macedonia"],
    ["NO", "Norway", "norway", "Kingdom of Norway"],
    ["PL", "Poland", "poland", "Republic of Poland"],
    ["PT", "Portugal", "portugal", "Portuguese Republic"],
    ["RO", "Romania", "romania"],
    ["RU", "Russia", "russia", "Russian Federation"],
    ["","San Marino", "san marino"],// Государство-город
    ["RS", "Serbia", "serbia", "Republic of Serbia"],
    ["SK", "Slovakia", "slovakia", "Slovak Republic"],
    ["SI", "Slovenia", "slovenia", "Republic of Slovenia"],
    ["ES", "Spain", "spain", "Kingdom of Spain"],
    ["SE", "Sweden", "sweden", "Kingdom of Sweden"],
    ["CH", "Switzerland", "switzerland", "Swizerland", "Swiss Confederation"],
    ["UA", "Ukraine", "ukraine"],
    ["", "Vatican City", "vatican", "Vatican"] //государство-город
]

public let names_africa = [
    ["DZ", "Algeria", "algeria", "People's Democratic Republic of Algeria"],
    ["AO", "Angola", "angola", "Republic of Angola"],
    ["BJ", "Benin", "benin", "Republic of Benin"],
    ["BW", "Botswana", "botswana", "Republic of Botswana"],
    ["BF", "Burkina Faso", "burkina faso", "Burkina-Faso"],
    ["BI", "Burundi", "burundi", "Republic of Burundi"],
    ["CM", "Cameroon", "cameroon", "Republic of Cameroon"],
    ["", "Cape Verde", "Cape-Verde", "Cabo Verde", "Republic of Cabo Verde"],//Оставляем, мелочь
    ["CF", "Central African Republic", "CAR"],
    ["TD", "Chad", "chad", "Republic of Chad"],
    ["", "Comoros", "comoros", "Union of the Comoros"],// оставляем
    ["CG", "Congo", "congo", "Republic of Congo"],
    ["CD", "DR Congo", "Democratic Republic of Congo", "DRC"],
    ["DJ", "Djibouti", "djibouti", "Republic of Djibouti"],
    ["EG", "Egypt", "egypt", "Arab Republic of Egypt"],
    ["GQ", "Equatorial Guinea", "equatorial guinea", "Republic of Equatorial Guinea"],
    ["ER", "Eritrea", "eritrea", "State of Eritrea"],
    ["SZ", "Eswatini", "eswatini", "Kingdom of Eswatini", "Swaziland"],
    ["ET", "Ethiopia", "ethiopia", "Federal Democratic Republic of Ethiopia"],
    ["GA", "Gabon", "gabon", "Gabonese Republic"],
    ["GM", "Gambia", "gambia", "Republic of The Gambia"],
    ["GH", "Ghana", "ghana", "Republic of Ghana"],
    ["GN", "Guinea", "guinea", "Republic of Guinea"],
    ["GW", "Guinea-Bissau", "Guinea Bissau", "Republic of Guinea-Bissau"],
    ["CI", "Ivory Coast", "Côte d'Ivoire"],
    ["KE", "Kenya", "kenya", "Republic of Kenya", "Kenia"],
    ["LS", "Lesotho", "lesotho", "Kingdom of Lesotho", "Sotho"],
    ["LR", "Liberia", "liberia", "Republic of Liberia"],
    ["LY", "Libya", "libya", "Libia", "State of Libya"],
    ["MG", "Madagascar", "madagascar", "Republic of Madagascar"],
    ["MW", "Malawi", "malawi", "Republic of Malawi"],
    ["ML", "Mali", "mali", "Republic of Mali"],
    ["","Marshall Islands"],//оставляем
    ["MR", "Mauritania", "mauritania", "Islamic Republic of Mauritania"],
    ["","Mauritius", "mauritius", "Republic of Mauritius"], //осталвяем
    //["","Mayotte", "mayotte", "Department of Mayotte"], Франция
    ["MA", "Morocco", "morocco", "Moroko", "Kingdom of Morocco"],
    ["MZ", "Mozambique", "mozambique", "Republic of Mozambique"],
    ["NA", "Namibia", "namibia", "Republic of Namibia"],
    ["NE", "Niger", "niger", "Republic of the Niger"],
    ["NG", "Nigeria", "nigeria", "Federal Republic of Nigeria"],
    ["TF" , "Reunion", "reunion", "French Southern and Antarctic Lands"],
    ["RW", "Rwanda", "rwanda", "Ruanda", "Republic of Rwanda"],
    ["SN", "Senegal", "senegal", "Republic of Senegal"],
    ["","Seychelles", "seychelles", "Seycheles"], //оставляем
    ["SL", "Sierra Leone", "sierra leone"],
    ["SO", "Somalia", "somalia", "Federal Republic of Somalia"],
    ["ZA", "South Africa", "south africa", "Republic of South Africa"],
    ["SS", "South Sudan", "south sudan", "Republic of South Sudan"],
    ["SD", "Sudan", "sudan", "Republic of the Sudan"],
    ["TZ", "Tanzania", "tanzania", "United Republic of Tanzania"],
    ["TN", "Tunisia", "tunisia", "Republic of Tunisia"],
    ["UG", "Uganda", "uganda", "Republic of Uganda"],
    ["ZM", "Zambia", "zambia", "Republic of Zambia"],
    ["ZW", "Zimbabwe", "zimbabwe", "Republic of Zimbabwe"],
    ["TG", "Togo", "togo", "Togolese Republic"],
    ["EH", "Western Sahara", "Western sahara"],
    ["FK", "Falkland Islands", "Falkland"]
]

public let oceania_names = [
    //["","American Samoa", "american samoa"],//
    ["AU", "Australia", "australia", "Commonwealth of Australia"],
    ["TL", "Timor-Leste", "East Timor", "timor", "Timor"],
    ["FJ", "Fiji", "fiji", "Republic of Fiji"],
    //["","French Polynesia", "french polynesia"],//Франция
    //["","Guam", "guam"],// США
    ["" ,"Kiribati", "kiribati", "Kiribati"],// Оставляем
    ["","Micronesia", "micronesia"],// Оставляем
    ["", "Nauru", "nauru"],// Оставляем
    ["NC", "New Caledonia", "new caledonia", "Caledonia"],
    ["NZ", "New Zealand", "new zealand", "4783063"],
    //["","Niue", "niue"],//
    //["","Northern Mariana Islands", "northern mariana islands"],// США
    //["","Palau", "palau", "Republic of Palau"],//США
    ["PG", "Papua New Guinea", "papua new guinea", "Independent State of Papua New Guinea"],
    //["","Samoa", "samoa", "Independent State of Samoa"],// США
    ["SB", "Solomon Islands", "solomon islands"],
    //["","Tokelau", "tokelau"],// НЗ
    ["","Tonga", "Nukualofa", "110,940"],//оставляем
    ["","Tuvalu", "tuvalu"],//оставляем
    ["VU", "Vanuatu", "vanuatu", "299882"],//Оставляем
    //["","Wallis and Futuna", "wallis and futuna"]//Франция
]
public let americas_names = [
    //["","Anguilla", "anguilla"],// Англ
    ["","Antigua and Barbuda", "antigua and barbuda"],// оставляем
    ["AR", "Argentina", "argentina", "Argentine Republic"],
    //["","Aruba", "aruba"],// Нидерланды
    ["BS","Bahamas", "bahamas", "Commonwealth of The Bahamas"],
    ["","Barbados", "barbados"],//Оставляем
    ["BZ", "Belize", "belize", "Bileez"],
    //["","Bermuda", "bermuda"],// Англ
    ["BO", "Bolivia", "bolivia", "Plurinational State of Bolivia"],
    ["BR", "Brazil", "brazil", "Federative Republic of Brazil"],
    //["","British Virgin Islands"],//Англ
    ["CA","Canada", "canada"],
    //["","Cayman Islands"],// Англ
    ["CL", "Chile", "chile"],
    ["CO", "Colombia", "colombia", "Republic of Colombia"],
    ["CR", "Costa Rica", "costa rica", "Republic of Costa Rica"],
    ["CU", "Cuba", "cuba", "Republic of Cuba"],
    ["","Dominica", "dominica", "Commonwealth of Dominica"],//Оставляем
    ["DO", "Dominican Republic", "dominican republic", "10738958"],
    ["EC", "Ecuador", "ecuador", "Republic of Ecuador"],
    ["SV", "Salvador", "El Salvador", "salvador"],
    ["GF", "French Guiana", "Cayenne", "282,731"],
    ["GL", "Greenland", "greenland"],
    ["","Grenada", "grenada"],//оставляем
    //["","Guadeloupe", "guadeloupe"],//Франция
    ["GT", "Guatemala", "guatemala", "Republic of Guatemala"],
    ["GY", "Guyana", "guyana", "Co-operative Republic of Guyana"],
    ["HT", "Haiti", "haiti", "Republic of Haiti"],
    ["HN", "Honduras", "honduras", "Republic of Honduras"],
    ["JM", "Jamaica", "jamaica"],
    //["","Martinique", "martinique"], Франция
    ["MX", "Mexico", "mexico", "United Mexican States"],
    //["","Montserrat", "montserrat"], //англ
    ["NI", "Nicaragua", "nicaragua", "Republic of Nicaragua"],
    ["PA", "Panama", "panama", "Republic of Panama"],
    ["PY", "Paraguay", "paraguay", "Republic of Paraguay"],
    ["PE", "Peru", "peru", "Republic of Peru"],
    ["PR", "Puerto Rico", "puerto rico", "Commonwealth of Puerto Rico"],
    /*["Saint Kitts and Nevis", "Basseterre", "52823"],
    ["Saint Lucia", "Castries", "182790"],
    ["Saint Pierre and Miquelon",  "Saint-Pierre", "5822"],
    ["Saint Vincent and the Grenadines", "Kingstown", "110589"],
    ["Sint Maarten", "Philipsburg", "42388"],*/
    ["SR", "Suriname", "suriname", "Republic of Suriname"],
    ["TT", "Trinidad and Tobago", "trinidad and tobago"],
    /*["Turks and Caicos Islands", "Grand Turk", "38191"],
    ["Virgin Islands", "Charlotte Amalie", "104578"],*/
    ["US", "United States", "united states", "USA", "usa", "United States of America"],
    ["UY", "Uruguay", "uruguay", "Oriental Republic of Uruguay"],
    ["VE", "Venezuela", "venezuela", "Bolivarian Republic of Venezuela"]
]
