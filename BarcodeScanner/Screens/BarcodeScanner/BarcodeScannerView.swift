//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Mac on 20/04/2024.
//

import SwiftUI



struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()

    
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                
                
                Text(
                    viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                
                
            } 
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem){alertItem in Alert(title: Text(viewModel.alertItem!.title),
                                                                  message: Text(viewModel.alertItem!.message),
                                                                  dismissButton: viewModel.alertItem?.dismissButton
                )
            }
            
        }
       
    }
}

#Preview {
    BarcodeScannerView()
}
