//
//  VentanaModal.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 12/07/22.
//

import SwiftUI

struct VentanaModal: View {
    @Environment(\.presentationMode) var back
    
    var body: some View {

        ZStack{
            Color.indigo.edgesIgnoringSafeArea(.all)
                
            
            VStack{
                Text("Texto Ventana Modal")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .bold()
                Spacer()
                Button("Cerrar ventana modal")
                {
                    back.wrappedValue.dismiss()
                }
                .foregroundColor(.white)
                .font(.system(size: 30))
            }
        }
        
    }
}

struct VentanaModal_Previews: PreviewProvider {
    static var previews: some View {
        VentanaModal()
    }
}
