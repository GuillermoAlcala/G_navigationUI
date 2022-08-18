//
//  SessionView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 14/07/22.
//

import SwiftUI
struct SessionView: View {
    @State var mensaje:String
 //   @EnvironmentObject var views: SettingViews2
    var body: some View {
        
        NavigationView {
            
            List(0 ..< 1){ item in
                    VStack(){
                    Image("macbook-transparent")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .fixedSize()
            
                        }
                        VStack(alignment:.trailing) {
                            Text("Desde $29,000")
                                .font(.system(size:14))
                            Text(mensaje)

                        
                }
            }.navigationTitle("Sesiones")
        }//list
        //.listRowBackground(Color.white)
} //body
}//struc

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionView(mensaje: "")
    }
}


/*class SettingViews2: ObservableObject {
    @Published var Title = "Sesiones"
}
*/
