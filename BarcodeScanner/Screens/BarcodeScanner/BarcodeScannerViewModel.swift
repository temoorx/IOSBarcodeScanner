//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Mac on 20/04/2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String{
        return scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor :Color{
        scannedCode.isEmpty ? .red : .green
    }
}
