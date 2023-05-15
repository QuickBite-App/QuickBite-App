//
//  Card.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 01/05/2023.
//

import SwiftUI

struct Card: View {
    @StateObject var data = FoodDetailViewModel()
    @State var id: String = ""
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            if let meal = data.filteredMeal {
                NavigationLink(destination: MenuDetailView(id: meal.idMeal)){
                    VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                                    image.resizable()
                                        .scaledToFill()
                                        .frame(width: .infinity, height: 200)
                                        .clipped()
                                        .overlay(alignment: .topTrailing, content: {
                                            Text("£\(meal.price)")
                                                    .padding(5)
                                                    .background(Color.red)
                                                    .foregroundColor(Color.white)
                                                    .fontWeight(.bold)
                                                    .cornerRadius(10)
                                                    .padding()
                                        })
                                } placeholder: {
                                    ZStack {
                                        ProgressView()
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 200)
                                }
                                .frame(width: .infinity, height: 200)
                                .clipped()
                            }
                    
                        HStack{
                            Text("")
                                .font(.title2.bold())
                                .offset(x:10)
                                .foregroundColor(Color.black)
                                .padding(.vertical, 5)

                        }
                        HStack {
                            Text(String(meal.strInstructions.prefix(100)))
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
            } else {
                ProgressView()
            }
        }
        .background(Rectangle())
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .shadow(radius: 1)
        .padding([.leading, .trailing])
        .onAppear {
             data.selectedMealId = id
         }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(id: "52881")
    }
}
