//
//  UserData.swift
//  Map Master
//
//  Created by Rostyslav on 01.02.2023.
//

import Foundation
import SwiftUI
import CloudKit

public class userData: ObservableObject{
    @AppStorage("user_id") var user_id: String = ""
    @AppStorage("is_apple_id") var is_apple_id: Bool = false
    @AppStorage("is_record_exist") var is_record_exist: Bool = false
    @AppStorage("is_logged") var is_logged: Bool = false
    @AppStorage("minus_game") var minus_game: Bool = false
    
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
    //CloudKit
    @AppStorage("rating_flag_country") var rating_flag_country: Int = 0
    @AppStorage("rating_country_flag") var rating_country_flag: Int = 0
    @AppStorage("rating_capital_country") var rating_capital_country: Int = 0
    @AppStorage("rating_country_capital") var rating_country_capital: Int = 0
    @AppStorage("rating_border_country") var rating_border_country: Int = 0
    @AppStorage("rating_country_border") var rating_country_border: Int = 0
    @AppStorage("rating_name_country") var rating_name_country: Int = 0
    @AppStorage("rating_find_country") var rating_find_country: Int = 0
    @AppStorage("rating_find_states") var rating_find_states: Int = 0

    
    @AppStorage("unit1changed") var unit1Change: Bool = false
    @AppStorage("unit1") var unit1: [Bool] = [Bool](repeating: false, count: 9)
    
    @AppStorage("unit2changed") var unit2Change: Bool = false
    @AppStorage("unit2") var unit2: [Bool] = [Bool](repeating: false, count: 12)
    
    @AppStorage("unit3changed") var unit3Change: Bool = false
    @AppStorage("unit3") var unit3: [Bool] = [Bool](repeating: false, count: 15)
    
    @AppStorage("unit4changed") var unit4Change: Bool = false
    @AppStorage("unit4") var unit4: [Bool] = [Bool](repeating: false, count: 18)
    
    @AppStorage("hearts") var hearts: Int = 10
    @AppStorage("games_left") var games_left: Int = 10
    @AppStorage("last_day_games") var last_day: Int = -1
    @AppStorage("is_pro") var is_pro: Bool = false
    @AppStorage("last_day_hearts") var last_refill_hearts: Int = -1
    @AppStorage("email") var email: String = ""
    
    func deleteAllData(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase
        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        // Create a new CKRecord with the custom CKRecordID
        DispatchQueue.main.async {
            privateDatabase.delete(withRecordID: recordID) { (recordID, error) in
                   if let error = error {
                       // Handle the error
                       print(error)
                   } else {
                       // Record was successfully deleted
                       DispatchQueue.main.async {
                           self.is_apple_id = false
                           self.is_record_exist = false
                           print("Delete operation is done")
                       }
                   }
               }
        }
    }
    
    func CreateRecordCloudKit(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase
        let record = CKRecord(recordType: "User", recordID: CKRecord.ID(recordName: self.user_id))
        DispatchQueue.main.async {
            record["name"] = self.name as CKRecordValue
            record["unit1"] = self.unit1 as CKRecordValue
            record["unit2"] = self.unit2 as CKRecordValue
            record["unit3"] = self.unit3 as CKRecordValue
            record["unit4"] = self.unit4 as CKRecordValue
            record["rating_flag_country"] = self.rating_flag_country as CKRecordValue
            record["rating_country_flag"] = self.rating_country_flag as CKRecordValue
            record["rating_capital_country"] = self.rating_capital_country as CKRecordValue
            record["rating_country_capital"] = self.rating_country_capital as CKRecordValue
            record["rating_border_country"] = self.rating_border_country as CKRecordValue
            record["rating_country_border"] = self.rating_country_border as CKRecordValue
            record["rating_name_country"] = self.rating_name_country as CKRecordValue
            record["rating_find_country"] = self.rating_find_country as CKRecordValue
            record["rating_find_states"] = self.rating_find_states as CKRecordValue
            record["hearts"] = self.hearts as CKRecordValue
            record["games_left"] = self.games_left as CKRecordValue
            record["last_day"] = self.last_day as CKRecordValue
            record["last_refill_hearts"] = self.last_refill_hearts as CKRecordValue
            record["name"] = self.name as CKRecordValue
            record["email"] = self.email as CKRecordValue
            privateDatabase.save(record) { (savedRecord, saveError) in
                if let error = saveError {
                    print(error)
                } else {
                    DispatchQueue.main.async {
                        self.is_record_exist = true
                        self.is_apple_id = true
                        print("Record has been created successfuly")
                    }
                }
            }
        }
    }
    
    func setDataFromCloudKit(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        // Save the record to the CloudKit database
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    self.is_record_exist = false
                    self.is_apple_id = true
                    print(error)
                }
                
            } else if let record = record {
                DispatchQueue.main.async {
                    // The record already exists, get data
                    self.name = record["name"] as? String ?? "Rostyslav Liapkin"
                    self.unit1 = record["unit1"] as? [Bool] ?? [Bool](repeating: false, count: 9)
                    self.unit2 = record["unit2"] as? [Bool] ?? [Bool](repeating: false, count: 12)
                    self.unit3 = record["unit3"] as? [Bool] ?? [Bool](repeating: false, count: 15)
                    self.unit4 = record["unit4"] as? [Bool] ?? [Bool](repeating: false, count: 18)
                    self.rating_flag_country = record["rating_flag_country"] as? Int ?? 0
                    self.rating_country_flag = record["rating_country_flag"] as? Int ?? 0
                    self.rating_capital_country = record["rating_capital_country"] as? Int ?? 0
                    self.rating_country_capital = record["rating_country_capital"] as? Int ?? 0
                    self.rating_border_country = record["rating_border_country"] as? Int ?? 0
                    self.rating_country_border = record["rating_country_border"] as? Int ?? 0
                    self.rating_name_country = record["rating_name_country"] as? Int ?? 0
                    self.rating_find_country = record["rating_find_country"] as? Int ?? 0
                    self.rating_find_states = record["rating_find_states"] as? Int ?? 0
                    self.hearts = record["hearts"] as? Int ?? 20
                    self.games_left = record["games_left"] as? Int ?? 20
                    self.last_day = record["last_day"] as? Int ?? -1
                    self.last_refill_hearts = record["last_refill_hearts"] as? Int ?? -1
                    self.email = record["email"] as? String ?? "no email"
                    self.is_apple_id = true
                    self.is_record_exist = true
                }
            }
        }
    }
    
    func setUnit1(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["unit1"] = self.unit1 as CKRecordValue
                    record["last_refill_hearts"] = self.last_refill_hearts as CKRecordValue
                    record["hearts"] = self.hearts as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                self.unit1Change = false
                                print("Unit1 setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func setUnit2(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["unit2"] = self.unit2 as CKRecordValue
                    record["last_refill_hearts"] = self.last_refill_hearts as CKRecordValue
                    record["hearts"] = self.hearts as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                self.unit2Change = false
                                print("Unit2 setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func setUnit3(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["unit3"] = self.unit3 as CKRecordValue
                    record["last_refill_hearts"] = self.last_refill_hearts as CKRecordValue
                    record["hearts"] = self.hearts as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                self.unit3Change = false
                                print("Unit3 setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func setUnit4(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["unit4"] = self.unit4 as CKRecordValue
                    record["last_refill_hearts"] = self.last_refill_hearts as CKRecordValue
                    record["hearts"] = self.hearts as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                self.unit4Change = false
                                print("Unit4 setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_border_country(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_border_country"] = self.rating_border_country as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_capital_country(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_capital_country"] = self.rating_capital_country as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    func set_rating_country_border(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_country_border"] = self.rating_country_border as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_country_capital(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_country_capital"] = self.rating_country_capital as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    func set_rating_country_flag(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_country_flag"] = self.rating_country_flag as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_find_country(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_find_country"] = self.rating_find_country as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_find_states(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_find_states"] = self.rating_find_states as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_flag_country(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_flag_country"] = self.rating_flag_country as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    
    func set_rating_name_country(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["rating_name_country"] = self.rating_name_country as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
    func setGamesLeft(){
        let container = CKContainer.default()
        let privateDatabase = container.privateCloudDatabase

        // Create a CKRecordID with the user's ID as the recordName
        let recordID = CKRecord.ID(recordName: self.user_id)
        
        privateDatabase.fetch(withRecordID: recordID) { (record, fetchError) in
            if let error = fetchError {
                DispatchQueue.main.async {
                    print(error)
                }
            } else if let record = record {
                DispatchQueue.main.async {
                    record["last_day"] = self.last_day as CKRecordValue
                    record["games_left"] = self.games_left as CKRecordValue
                    privateDatabase.save(record) { (savedRecord, saveError) in
                        if let error = saveError {
                            print(error)
                        } else {
                            DispatchQueue.main.async {
                                print("Result setted to Cloud")
                            }
                        }
                    }
                }
            }
        }
    }
}

