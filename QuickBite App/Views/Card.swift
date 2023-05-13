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
            NavigationLink(destination: MenuDetailView(image: food.imageName, title: food.name, description: food.description, price: food.price)){
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Image(food.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .cornerRadius(10)
                            .overlay(alignment: .topTrailing, content: {
                                Text(food.price)
                                    .padding(5)
                                    .background(Color.red)
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .cornerRadius(10)
                                    .padding()
                            })
                    }

                    HStack{
                        Text(food.name)
                            .font(.title2.bold())
                            .offset(x:10)
                            .foregroundColor(Color.black)
                            .padding(.vertical, 5)

                    }
                    HStack {
                        Text(food.description)
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 0)
                        .padding(.horizontal, 10)
                    }
                }
            }
            
            HStack {
                Spacer()
                Button(action:{}, label: {Image("CountDown")})
                    .frame(width: 31.68, height: 26)
                Text("1")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.red)
                Button(action:{}, label: {Image("CountUp")})
                    .frame(width: 31.68, height: 26)
            }
            .frame(maxWidth: .infinity)
            .padding(10)
        }
        .background(Rectangle())
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .shadow(radius: 1)
        .padding([.leading, .trailing])
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(food: FoodItems(name: "Jollof Rice", imageName: "Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest.", price: "£12.5"))
    }
}
