//
//  UserData.swift
//  Map Master
//
//  Created by Rostyslav on 01.02.2023.
//

import Foundation
import SwiftUI

public class userData: ObservableObject{
    @AppStorage("is_data_inserted") var is_data_inserted: Bool = false
    @AppStorage("name") var name: String = "Player"
    @AppStorage("result_flag_light") var result_flag_light: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_country_flag") var result_country_flag: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_population_country") var result_population_country: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_country_population") var result_country_population: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_capital_country") var result_capital_country: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_country_capital") var result_country_capital = [0, 0, 0, 0, 0]
    @AppStorage("result_border_country") var result_border_country: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_country_border") var result_country_border: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_name_countries") var result_name_countries: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_find_countries") var result_find_countries: [Int] = [0, 0, 0, 0, 0]
    @AppStorage("result_find_us") var result_find_us: [Int] = [0, 0, 0]
    @AppStorage("rating_flag_country") var rating_flag_country: Int = 0
    @AppStorage("rating_country_flag") var rating_country_flag: Int = 0
    @AppStorage("rating_capital_country") var rating_capital_country: Int = 0
    @AppStorage("rating_country_capital") var rating_country_capital: Int = 0
    @AppStorage("rating_border_country") var rating_border_country: Int = 0
    @AppStorage("rating_country_border") var rating_country_border: Int = 0
    @AppStorage("rating_name_country") var rating_name_country: Int = 0
    @AppStorage("rating_find_country") var rating_find_country: Int = 0
    @AppStorage("rating_find_states") var rating_find_states: Int = 0
    @AppStorage("hearts") var hearts: Int = 20 //Not CloudKit
    @AppStorage("unit1") var unit1: [Bool] = [Bool](repeating: false, count: 9)
    @AppStorage("unit2") var unit2: [Bool] = [Bool](repeating: false, count: 12)
    @AppStorage("unit3") var unit3: [Bool] = [Bool](repeating: false, count: 15)
    @AppStorage("unit4") var unit4: [Bool] = [Bool](repeating: false, count: 18)
    
    @AppStorage("games_left") var games_left: Int = 10
    @AppStorage("last_day_games") var last_day: Int = -1
    @AppStorage("is_pro") var is_pro: Bool = false
    @AppStorage("last_day_hearts") var last_refill_hearts: Int = -1
}
