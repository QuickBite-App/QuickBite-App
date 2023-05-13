//
//  MenuDetailView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct MenuDetailView: View {
    @State var image: String = ""
    @State var title: String = ""
    @State var description: String = ""
    @State var price: String = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .trailing) {
                VStack {
                    Image(image)
                        .resizable()
                        .frame(width: .infinity, height: 500)
                        .edgesIgnoringSafeArea(.all)
                }
                Spacer()
            }
            .frame(width: .infinity, height: .infinity)

            VStack {
                Spacer()
                VStack {
                    HStack {
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Image("FavoriteIcon")
                            .resizable()
                            .frame(width: 34, height: 34)
                    }
                    
                    HStack {
                        HStack {
                            Image("RatingIcon")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("4,8 Rating")
                                .font(.subheadline)
                                .fontWeight(.medium)
                        }
                        Spacer()
                        HStack {
                            Image("ShoppingBag")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("2000+ Order")
                                .font(.subheadline)
                                .fontWeight(.medium)
                        }
                    }
                    
                    HStack {
                        Text(description)
                            .font(.body)
                            .fontWeight(.light)
                            .padding(.top, 5)
                    }
                    
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
                        Spacer()
                        Text(price)
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
                    .padding(.bottom, 50)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width, height: 465)
                .background(Color.white)
                .cornerRadius(61)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(image: "FoodExample", title: "Chicken Burger", description: "Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction. no dull yourself oh!!", price: "£13.2")
    }
}
