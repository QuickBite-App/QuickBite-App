//
//  MenuDetailView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct MenuDetailView: View {
    @StateObject var cartViewModel = CartViewModel()
    @ObservedObject var data = FoodDetailViewModel()
    @State var id: String = ""
    @State var image: String = ""
    @State var title: String = ""
    @State var description: String = ""
    @State var price: String = ""
    
    var body: some View {
        NavigationView {
            if let meal = data.filteredMeal {
                ScrollView {
                    ZStack {
                            VStack(alignment: .trailing) {

                                    VStack {
                                        AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                                            image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height: 500)
                                                .clipped()
                                                .edgesIgnoringSafeArea(.all)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                    }
                                    Spacer()
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                 
                            VStack {
                                Spacer()
                                VStack {
                                    HStack {
                                        Text(meal.strMeal)
                                            .font(.title)
                                            .fontWeight(.bold)
                                        Spacer()
                                        Image("FavoriteIcon")
                                            .resizable()
                                            .frame(width: 34, height: 34)
                                    }
                                    .padding(.top, 20)
                                    
                                    HStack {
                                        Text(meal.strInstructions)
                                            .font(.body)
                                            .fontWeight(.light)
                                            .padding(.top, 5)
                                    }
                                    
                                    HStack {
                                        HStack {
                                            HStack {
                                                VStack {
                                                    Button(action: {
                                                        cartViewModel.removeItem(meal: meal)
                                                    }) {
                                                        Image("CountDown")
                                                            .resizable()
                                                            .frame(width: 31.68, height: 26)
                                                    }
                                                }
                                                Text("\(cartViewModel.cart.items.first(where: { $0.meal.idMeal == meal.idMeal })?.quantity ?? 0)")
                                                    .font(.body)
                                                    .fontWeight(.medium)
                                                    .foregroundColor(Color.red)
                                                VStack {
                                                    Button(action: {
                                                        cartViewModel.removeItem(meal: meal)
                                                    }) {
                                                        Image("CountUp")
                                                            .resizable()
                                                            .frame(width: 31.68, height: 26)
                                                    }
                                                }
                                            }
                                            Spacer()
                                        }
                                        .padding(.vertical, 16)
                                        Spacer()
                                        Text("£\(meal.price)")
                                            .font(.body)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color.red)
                                    }
                                    .padding(.vertical, 16)
                                    
                                    HStack {
                                        Button(action: {
                                                   print("Button tapped!")
                                               }) {
                                                   Text("Add to cart")
                                               }
                                               .foregroundColor(Color.white)
                                               .fontWeight(.bold)
                                               .font(.system(size: 20))
                                               .frame(width: 289, height: 72)
                                               .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                                               .cornerRadius(23.88)
                                    }
                                    .padding(.bottom, 70)
                                }
                                .padding()
                                .frame(width: UIScreen.main.bounds.width, height: 465)
                                .background(Color.white)
                                .cornerRadius(61)
                            }
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            
                        
                    }
                }
                .navigationBarBackButtonHidden(true)
                .edgesIgnoringSafeArea(.all)
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
             data.selectedMealId = id
         }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(id: "52881")
    }
}
