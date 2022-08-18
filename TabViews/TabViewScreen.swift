//
//  TabView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 14/07/22.
//

import SwiftUI

struct TabViewScreen: View {
    var body: some View {
          //  HStack{
                TabView{
                    BuyView()
                        .tabItem(){
                         Label("Comprar",systemImage: "laptopcomputer.and.iphone")
                            //   Image(systemName:"laptopcomputer.and.iphone")
                         //   Text("Comprar")
                        }//tabItem
//                    background(.black)
                    
                    SessionView(mensaje: "mensaje").tabItem(){
                        Label("Sesiones",systemImage: "captions.bubble")
                    }
                    
                    YouView().tabItem(){
                        Label("Para ti",systemImage: "mustache")
                    }
                    SearchView().tabItem(){
                        Label("Búsqueda",systemImage: "computermouse")
                    }
                    
                    ShoppingView().tabItem(){
                        Label("Bolsa",systemImage: "cart")
                    }
                    
                    ShoppingView().tabItem(){
                        Label("Trash",systemImage: "trash")
                    }
                    
                    }//TabView
                .accentColor(Color(hue: 0.583, saturation: 0.701, brightness: 0.696))
                
      //      }
        
        }//BodyView
    
}//ViewPrincipal

            
        

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViewScreen()
    }
}
