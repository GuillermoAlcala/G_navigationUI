//
//  DevicesView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 27/07/22.
//

import SwiftUI

struct DevicesView: View {
    let nombres = ["Pedro", "Pablo", "Marmol", "Homero", "Lissa"]
    @State var mensaje:String
    var body: some View {
        
        NavigationView {
            List {
                ForEach(nombres,id:\.self){ item in
                    Text("\(item)")
                }
                TextField("CellPhone", text: $mensaje)
                    .keyboardType(.phonePad)
                
           
            }
            
            
            .navigationTitle("Nombres")
        }
    }
    
}

struct DevicesView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesView(mensaje: "")
    }
}
