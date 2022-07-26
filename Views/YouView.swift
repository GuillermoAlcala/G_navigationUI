//
//  YouView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 14/07/22.
//

import SwiftUI

struct YouView: View {
    var body: some View {
        NavigationView {
            
            List(0 ..< 1){ item in
                    VStack(){
                 Circle()
                        }
                        VStack(alignment:.trailing) {
                            Text("Desde $19,000")
                                .font(.system(size:14))
                        
                }
            }.navigationTitle("Para ti")
                .toolbar{
                    HStack{
                        NavigationLink(destination: VentanaModal()){
                            Image(systemName: "gamecontroller.fill")
                                .foregroundColor(.red)
                            
                         
                        }
                    }

        }//list
        //.listRowBackground(Color.white)
    }
}
}
struct YouView_Previews: PreviewProvider {
    static var previews: some View {
        YouView()
    }
}
