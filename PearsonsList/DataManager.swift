//
//  DataManager.swift
//  PearsonsList
//
//  Created by Vladimir Dvornikov on 17.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names: Set = [
        "Harry", "Hermione", "Ronald", "Neville", "Luna",
        "Draco", "Albus", "Severus", "Minerva", "Alastor"
    ]
    let surnames: Set = [
        "Potter", "Granger", "Weasley", "Longbottom", "Lovegood",
        "Malfoy", "Dumbledore", "Snape", "McGonagall", "Moody"
    ]
    let emails: Set = [
        "qwe@gmail.com", "rty@gmail.com", "uio@gmail.com",
        "pas@gmail.com", "dfg@gmail.com", "hjk@gmail.com",
        "lzx@gmail.com", "cvb@gmail.com", "nmq@gmail.com", "wer@gmail.com"
    ]
    let phoneNumbers: Set = [
        "(000)00-00-00", "(111)11-11-11", "(222)22-22-22", "(333)33-33-33",
        "(444)44-44-44", "(555)55-55-55", "(666)66-66-66", "(777)77-77-77",
        "(888)88-88-88", "(999)99-99-99"
    ]
    
    private init () {}
    
}
