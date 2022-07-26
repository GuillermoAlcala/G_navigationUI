//
//  BuyView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 14/07/22.
//

import SwiftUI
struct BuyView: View {
    let _Iphone13 = "https://www.apple.com/mx/shop/buy-iphone/iphone-13-pro"
    let mensaje=""
  //  @EnvironmentObject var views: SettingViews
    var body: some View {
        NavigationView {
            
            List(0 ..< 1){ item in
                ZStack() {
                    HStack(){
                            Image(systemName: "shippingbox")
                            //.scaledToFit()
                            //.font(.system(size: 30))
                        VStack(alignment:.leading) {
                            Text(cost)
                                .bold()
                                .scaledToFill()
                            Text(devolutions)
                                .font(.caption)
                                    Link(destination: URL(string:_Iphone13)!){
                                        MoreInformation()
                                    }
                                
                        }
                                //.frame(height:600)
                    }//img
                }
                VStack(alignment:.leading) {
                    Text(new)
                        .font(.system(size: 15))
                        .foregroundColor(Color(
                            hue: 1.0, saturation: 0.036, brightness: 0.542))
                        .bold()
                    VStack {
                        Text(TitleMac)
                            .font(.system(size: 30))
                            .fontWeight(.regular)

                    }
                    Spacer()
                    VStack(alignment:.leading) {
                        Text(descrption)
                            .font(.system(size: 17))
                    }
                    VStack{
                    Image("macbook-transparent")
                        .resizable()
                        //.scaledToFit()
                        .frame(width: 300, height: 300)
                        .fixedSize()
                        //.aspectRatio(contentMode: .fit)
                        //.clipped()
                    
                 /*           Rectangle()
                        .fill(Color("AccentColor"))
                                .frame(width: 300, height: 300)
                        padding()*/
                         //   .frame(alignment: .leading)
                        }
                        HStack(alignment:.center) {
                            Text("Desde $29,000")
                                .font(.system(size:15))
                                .fontWeight(.thin)
                            padding()
                            
                            //TODO: Implementación del boton comprar
                            ZStack(alignment:.topTrailing) {
                                Button("Comprar"){}
                            }
                        }
                    Divider()
                    ZStack(){
                           // .frame(height:700)
                        VStack(alignment:.leading){
                            Text("NUEVO")
                                .font(.system(size:15))
                                .fontWeight(.thin)
                            Text("iPhone 13 Pro")
                                .font(.system(size: 30))
                                .fontWeight(.regular)
                            
                        
                        Image("iphone13pmax")
                            //.frame(width: 300)
                            .scaledToFit()
                            .cornerRadius(330.0)
                            
                            HStack(alignment:.center) {
                                Text("Desde $25,999")
                                    .font(.system(size:15))
                                .fontWeight(.thin)
                                padding()

                                //TODO: Implementación del boton comprar
                                    Button("Comprar"){}
                                

                            }
                            Divider()
                            VStack{
                                Text("Destacados")
                                    .font(.system(size: 25))
                                    .bold()
                            }
                        }
                    }
                }
            }.navigationTitle("Comprar")
        }//list
        //.listRowBackground(Color.white)
} //body
}//struc
   /*   .toolbar{
          VStack{
              Image(systemName: "gamecontroller.fill")
                  .foregroundColor(.indigo)

          }
          
      }//Toolbar
       */
struct BuyView_Previews: PreviewProvider {
    static var previews: some View {
        BuyView()
            
    }
}




/*
 


 */


struct MoreInformation: View {
    var body: some View {
        Text("Más información")
            .font(.system(size: 14))
    }
}
