//
//  CardsView.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 27/07/22.
//

import SwiftUI

struct CardsView: View {
@State private var selectedColor = 0
    var body: some View {
        
        NavigationView {
            ScrollView(.horizontal) {
                HStack{
                    VStack { //agregue el vstack para efectos de ejemplo
                       /*NavigationLink(destination: BuyView()) {
                                Rectangle()
                                .frame(width: 100,
                                       height: 100)
                                .foregroundColor(.blue)
                            //.frame(width: 200, height: 200)
                            .border(.primary)
                            .cornerRadius(20)
                            .padding()
                    
                        }
                    */
                        
                    }//link
                    .padding(.leading)
                    VStack {
                        NavigationLink(destination: CardsDetails()){
                        Image("scarlett")
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 300, height: 500)
                            .border(.black)
                            .cornerRadius(20)
                        }
                        Text("Scarlett")
                    }
                    
                    
                    VStack{
                        NavigationLink(destination: DevicesView(mensaje: "")){
                         Image("ElizabethVestido")
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .frame(width: 300, height: 500)
                            //.frame(width: 140, height: 200) original
                                .border(.black)
                                .cornerRadius(20)
                        }
                        Text("Elizabeth Olsen")

                    }
                    VStack{
                        NavigationLink(destination:
                        CardsDetails()){
                        /*image: "jennifer",
                        category: "Drama",
                        heading: "Mision Imposible 5",
                        author: "Jeniffer Connelly"))
                         */
                         Image("jennifer")
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .frame(width: 300, height: 500)
                                //.frame(width: 140, height: 200) original
                                .border(.black)
                                .cornerRadius(20)
                        }
                        Text("Jeniffer Connelly")

                    }
                        HStack {
                            NavigationLink(destination: ModalLoguin()) {
                            Circle()
                            .frame(width: 100,
                                   height: 100)
                            .foregroundColor(.red)
                        .frame(width: 200, height: 200)
                        }
                        }
                    
                    
                    
                    HStack {
                        Rectangle()
                        .frame(width: 100,
                               height: 100)
                        .foregroundColor(.black)
                    .frame(width: 200, height: 200)
                    }
                    
            }
            }
            .navigationTitle("Destacados")
            }
        }
    }

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}


struct CardUI: View{
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body:some View{
                    ScrollView {
                    VStack {
                        Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        HStack {
                            VStack(alignment: .leading) {
                                Text(category)
                                    .font(.headline)
                                    .foregroundColor(.secondary)
                                Text(heading)
                                    .font(.title)
                                    .fontWeight(.black)
                                    .foregroundColor(.primary)
                                    .lineLimit(3)
                                Text(author.uppercased())
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            .layoutPriority(100)
                            Spacer()
                        }
                        .padding() // padding al texto
                   //     Text(heading)

                    }
                  //  .shadow(radius: 10)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.3), lineWidth:3)
            )
                      //  Text(heading)
                        .padding([.top, .horizontal])
                        
                    }//ScrollView
        
        Spacer()

    }
}




struct CardsDetails: View{
    var body: some View{
                    ScrollView(.vertical){
                    VStack{
                        CardUI(image: "scarlett",
                               category: "Ficción",
                               heading: "Infinity War",
                               author: "Scarlett Johannson")

                        CardUI(image: "jennifer",
                               category: "Drama",
                               heading: "Mision Imposible 5",
                               author: "Jeniffer Connelly")
                            
                        CardUI(image: "ElizabethVestido",
                               category: "Ficción",
                               heading: "Wanda Vision",
                               author: "Elizabeth Olsen")
                    }

                        
        }
            //.navigationTitle("prueba")
            //.navigationBarTitleDisplayMode(.automatic)
            
  
        
    }
}


