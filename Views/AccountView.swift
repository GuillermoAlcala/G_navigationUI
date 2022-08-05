//
//  AccountView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 26/07/22.
//

import SwiftUI

struct AccountView: View {
    @State var isPresented2: Bool=false
    var body: some View {
        NavigationView{
            List(list_Accounts){item in
                NavigationLink(destination: MessageAppointment())
                {
                Text(item.name)
                }
            }.listStyle(.sidebar)
                /*ZStack{
                    
                    Color.white.ignoresSafeArea()
                    Button("¡Bienvenido a SwiftBeta! 🎉") {
                            isPresented2=true
                    }
                }*/
        }.navigationTitle("Cuenta")
        
        
     //       .toolbar{
           //     VStack{
                //Ejemplo solo con el texto
                //NavigationLink("Account", destination: AccountView())
                    
                    //Ejemplo con un Text a parte.
                    /*NavigationLink(destination:BuyView()) {
                        Text("OK")
                            .foregroundColor(Color.primary)
                    }*/
             //   }
                
       //     }//Toolbar

    }
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            
    }
}



struct MessageAppointment: View {
    var body: some View {
        VStack(){
        Text(Message)
        Text(MessageDetail)
            Spacer()
        }
    }
}
