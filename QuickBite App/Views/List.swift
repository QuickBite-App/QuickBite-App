//
//  List.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 02/05/2023.
//

import SwiftUI

struct List: View {
    var cart: CartItems
    var body: some View {
        VStack (alignment: .leading, spacing: 5){
            HStack{
                Image(cart.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(50)
                VStack(alignment: .leading){
                    Text(cart.name)
                        .font(.system(size:21, weight: .medium, design: .default))
                        .padding(.vertical)
                        .padding(.leading)
                        
                    HStack {
                        Text(cart.price)
                            .font(.headline)
                            .padding(.leading)
                            .padding(.bottom)
                        
                        Spacer()
                        
                            .overlay(alignment: .trailing, content: {
                            HStack {
                                    HStack {
                                        Image("CountDown")
                                            .resizable()
                                            .frame(width: 31.68, height: 26)
                                        Text("1")
                                            .font(.body)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color.red)
                                        Image("CountUp")
                                            .resizable()
                                            .frame(width: 31.68, height: 26)
                                    }
                                }
                            .padding(.bottom)
                            })
                    }
                    
                }
                
            }
        }
        .padding(.horizontal)
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        List(cart: CartItems(name: "Burger", imageName: "Burger", price: "£12.5"))
    }
}
