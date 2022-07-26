//
//  ContentView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 12/07/22.
//

import SwiftUI
struct ContentView: View {
   // @StateObject var views = SettingViews()
    @State private var show=false
    //@State private var comprar="Comprar"
        
    var body: some View {
                TabViewScreen()
            .cornerRadius(10)
            .background()       //  .environmentObject(views)
      /*
        NavigationView{
            VStack{
                NavigationLink(destination: VentanaModal()){
                    Text("Vista 1")
                        .padding()
                }
                
              /*  Button("Abrir Modal"){
                    show.toggle()
                }
                .font(.title)
                .foregroundColor(.green)
            */
                
            } //Stack
            .sheet(isPresented: $show){
                VentanaModal()
            }
            .navigationTitle("Navigation")
            
            //Toolbar
            .toolbar{
                HStack{
                    NavigationLink(destination: VentanaModal()){
                        Image(systemName: "gamecontroller.fill")
                            .foregroundColor(.red)
                        
                     
                    }
                 
                    /*NavigationLink(destination: VentanaModal()){
                        Image(systemName: "gamecontroller")
                            .foregroundColor(.blue)
                }*/
            }//HStack
        } //NavigationView
        */
    }
}


/*class SettingViews: ObservableObject {
    @Published var Title = "Sesiones"
}
*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}




