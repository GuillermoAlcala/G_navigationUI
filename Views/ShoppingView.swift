//
//  ShoppingView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 14/07/22.
//

import SwiftUI

struct ShoppingView: View {
    var body: some View {
        NavigationView {
                List(0 ..< 5){
                    item in
                            VStack(alignment:.trailing) {
                                Text("Desde $1,000")                                .font(.system(size:14))
                    }
                }.navigationTitle("Bolsa")
    //list
    }
        
}
}
struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
