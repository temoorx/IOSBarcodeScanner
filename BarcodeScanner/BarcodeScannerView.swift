//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Mac on 20/04/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                
                
                Text(
                    scannedCode.isEmpty ? "Not yet Scanned"
                    : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
            } .navigationTitle("Barcode Scanner")
            
        }
       
    }
}

#Preview {
    BarcodeScannerView()
}
