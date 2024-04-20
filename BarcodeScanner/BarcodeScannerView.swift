//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Mac on 20/04/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                
                
                Text("Not yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
            } .navigationTitle("Barcode Scanner")
            
        }
       
    }
}

#Preview {
    BarcodeScannerView()
}
