//
//  SearchView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 14/07/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
     
        NavigationView {
            List(0 ..< 9){
                item in
                        VStack(alignment:.trailing) {
                            Text("Desde $19,000")
                                .font(.system(size:14))
                        
                }
            }.navigationTitle("Búsqueda")
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
