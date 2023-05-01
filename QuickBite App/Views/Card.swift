//
//  Card.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 01/05/2023.
//

import SwiftUI

struct Card: View {
    var food: FoodItems
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(food.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .cornerRadius(5)
            
                .overlay(alignment: .topTrailing, content: {
                    Text(food.price)
                        .font(.headline)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(.white))
                        )
                        .foregroundColor(Color.black)
                        .padding()
                })
            
            
            
            HStack{
                Text(food.name)
                    .font(.title2.bold())
                    .offset(x:10)
                    .foregroundColor(Color.black)
                
            }
                
                Text(food.description)
                .font(.body)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
                .padding(.top, 1)
                .padding(.bottom, 30)
                .padding([.leading, .trailing], 10)
            
                .overlay(alignment: .bottomTrailing, content: {
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
                })
                .padding(.bottom, 10)
        }
        .background(Rectangle())
        .foregroundColor(Color.white)
        .cornerRadius(5)
        .shadow(radius: 5)
        .padding([.leading, .trailing])
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(food: FoodItems(name: "Burger", imageName: "Steak", description: "Delicious and tasty cheese burger one of tasty town’s finest.", price: "£12.5"))
    }
}
