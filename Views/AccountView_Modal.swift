//
//  AccountView_Modal.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 26/07/22.
//

import SwiftUI

struct AccountView_Modal: View {
    var body: some View {
        NavigationView{
        NavigationLink(destination: SessionView(mensaje: "variable"))
            {
                List(oceans) {
                    Text($0.name)

            //        Text("Cuenta")
            //        Text("Comprar")
            //        Text("Comprar")

                }.listStyle(.insetGrouped)
            }
        }.navigationTitle("Cuenta")
    }
    }

struct AccountView_Modal_Previews: PreviewProvider {
    static var previews: some View {
        AccountView_Modal()
    }
}
struct Ocean: Identifiable {
    let name: String
    let id = UUID()
}


private var oceans = [
    Ocean(name: "Pacific"),
    Ocean(name: "Atlantic"),
    Ocean(name: "Indian"),
    Ocean(name: "Southern"),
    Ocean(name: "Arctic")
]
