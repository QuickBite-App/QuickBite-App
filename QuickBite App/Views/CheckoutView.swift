//
//  CheckoutView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 13/05/2023.
//

import SwiftUI

struct CheckoutView: View {
    @State private var location: String = ""
    @State private var cardName: String = ""
    @State private var cardNumber: String = ""
    @State private var expiryDate: String = ""
    @State private var cvc: String = ""
    @State private var isOrderPlaced: Bool = false
  
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Image(systemName: "chevron.left")
                    Spacer()
                    Text("Confirm your order").fontWeight(.bold).font(.title)
                    Spacer()
                    Image(systemName: "bell")
                }
                .padding(.horizontal)
                
                
                Text("Deliver to").padding(.trailing,270)
                HStack {
                    TextField("Select your location", text: $location)
                        .padding(.leading, 55)
                        .frame(height: 50)
                        .background(
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                                Image(systemName: "location.fill")
                                    .foregroundColor(.red)
                                    .padding(.leading, 10)
                                if !location.isEmpty {
                                    Image(systemName: "plus")
                                        .foregroundColor(.black)
                                        .padding(.leading, 320)
                                }
                            }
                        )

                    
                }
                .padding(.horizontal)

                VStack(spacing: 10) {
                    Text("Payment Method").padding(.trailing, 190)
                        .foregroundColor(.black)
                        .frame(width: .infinity, alignment: .trailing)
                    
                    HStack(spacing: 20) {
                        Image("Mastercard")
                            .resizable()
                            .frame(maxWidth: 50, maxHeight: 25)
                        
                        Text("2121 6335 8465 ****")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(15)
                    .frame(maxWidth: 560)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .padding()
                .frame(maxWidth: 710)
                .background(Color(red: 1, green: 0.9, blue: 0.9))
                .cornerRadius(15)
                .shadow(radius: 5)
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Image(systemName: "person").fontWeight(.bold)
                            .foregroundColor(.red)
                        Text("Name on the card").fontWeight(.bold)
                            .foregroundColor(.red)
                        Spacer()
                    }
                    .padding(.horizontal)
                    TextField("Enter name", text: $cardName)
                        .padding(.horizontal)
                        .overlay(
                            Rectangle()
                                .frame(height: 1.0, alignment: .bottom)
                                .foregroundColor(Color.gray)
                                .offset(y: 10)
                                .padding(.horizontal)
                        )
                    
                    HStack {
                        Image(systemName: "creditcard").fontWeight(.bold)
                            .foregroundColor(.red)
                        Text("Card number").fontWeight(.bold)
                            .foregroundColor(.red)
                        Spacer()
                        if !cardNumber.isEmpty {
                            if cardNumber.prefix(1) == "4" {
                                Image("VISA")
                                    .resizable()
                                    .frame(width: 40, height: 20)
                            } else if cardNumber.prefix(1) == "5" {
                                Image("Mastercard")
                                    .resizable()
                                    .frame(width: 40, height: 20)
                            } else {
                                Image(systemName: "creditcard")
                                    .font(.title)
                            }
                        }
                    }
                    .padding(.bottom, 5)
                    .padding(.horizontal)
                    TextField("Enter card number", text: $cardNumber)
                        .keyboardType(.numberPad)
                        .padding(.horizontal)
                        .overlay(
                            Rectangle()
                                .frame(height: 1.0, alignment: .bottom)
                                .foregroundColor(Color.gray)
                                .offset(y: 10)
                                .padding(.horizontal)
                        )
                    
                    HStack {
                        HStack {
                            Text("Expiry date").fontWeight(.bold)
                                .foregroundColor(.red)
                            TextField("MM/YYYY", text: $expiryDate)
                                .keyboardType(.numberPad)
                        }
                        .padding()
                        .overlay(
                            Rectangle()
                                .frame(height: 1.0, alignment: .bottom)
                                .foregroundColor(Color.gray)
                                .offset(y: 10)
                                .padding(.horizontal)
                        )
                        .fixedSize(horizontal: true, vertical: false)
                        .frame(maxWidth: .infinity)
                        HStack {
                            Text("CVC").fontWeight(.bold)
                                .foregroundColor(.red)
                            TextField("123", text: $cvc)
                                .keyboardType(.numberPad)
                        }
                        .padding(.horizontal)
                        .overlay(
                            Rectangle()
                                .frame(height: 1.0, alignment: .bottom)
                                .foregroundColor(Color.gray)
                                .offset(y: 10)
                                .padding(.horizontal)
                        )
                        .fixedSize(horizontal: true, vertical: false)
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom, 5)

                }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Sub-Total").fontWeight(.bold)
                            Spacer()
                            Text("£").fontWeight(.bold)
                        }
                        HStack {
                            Text("Delivery Charge").fontWeight(.bold)
                            Spacer()
                            Text("£").fontWeight(.bold)
                        }
                        HStack {
                            Text("Discount").fontWeight(.bold)
                            Spacer()
                            Text("£").fontWeight(.bold)
                        }
                        Divider()
                        HStack {
                            Text("Total:")
                                .font(.title3)
                                .fontWeight(.bold)
                            Spacer()
                            Text("£")
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                        
                        NavigationLink(destination: OrderSuccessView(), isActive: $isOrderPlaced) {
                                    EmptyView()
                                }
                                
                                Button(action: {
                                    isOrderPlaced = true
                                }, label: {
                                    Text("Place My Order")
                                        .fontWeight(.bold)
                                        .foregroundColor(.red)
                                        .font(.headline)
                                })
                                .frame(maxWidth: 550, maxHeight: 20)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                    }
                    .frame(maxWidth: 550, maxHeight: 173)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(15)
                    .padding()
                    
                   
            }
        }
    }
}


struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}

