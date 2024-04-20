//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Mac on 20/04/2024.
//

import SwiftUI

struct AlertItem : Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidDeviceinput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with camera. We are unable to capture the input", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Input", message: "The value scanned is not valid. This app scans EAN-8 and EAN-13", dismissButton: .default(Text("Ok")))

}
