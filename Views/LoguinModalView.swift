//
//  LoguinModalView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 29/07/22.
//

import SwiftUI

struct LoguinModalView: View {
    @State var isPresented: Bool=false

    var body: some View {
        Button("Boton"){
            isPresented=true
        }.sheet(isPresented: $isPresented,
            onDismiss: {isPresented=false},
            content: {
            ModalLoguin()
        })
        
    }
}



struct ModalLoguin:View{
    @Environment(\.presentationMode) var back
    var body: some View{
        NavigationView {

           //     ScrollView {
                    VStack(alignment:.center) {
                        List(list_Accounts){item in
                            Text(item.name)
                        }
                        // Image("GraphQL_Logo")
                       //     .resizable()
                            //.fixedSize()
                       //     .scaledToFit()

                                //.edgesIgnoringSafeArea(.all)
                               // .frame(width: 400, height: 100, alignment: .bottom)
                                .navigationTitle("LoguinModal View")
                                .toolbar{
                                    ZStack{
                                        NavigationLink(destination: LoguinModalView()){
                                            Button("Cerrar"){
                                                back.wrappedValue.dismiss()
                                            
                                            }.foregroundColor(.primary)
                                            //Image(systemName: "person.crop.circle")
                                            //    .foregroundColor(.primary)
                                               
                                        }//NavigationLink
                            }
                            } // toolbar
                    }//Vstack
              //      }//ScrollView
                                 
        }//NavigationView
        
    }
}



//.toolbar(content: BuyView())

struct LoguinModalView_Previews: PreviewProvider {
    static var previews: some View {
        LoguinModalView()
            .preferredColorScheme(.dark)
    }
}
