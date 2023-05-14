//
//  OrderSuccessView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 14/05/2023.
//

import SwiftUI

struct OrderSuccessView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("fastfood")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxHeight: UIScreen.main.bounds.height / 2.9)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [.clear, .white]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .opacity(1)
                    )
                
                Button(action: {
                    // Navigate back to previous screen
                }, label: {
                    Image(systemName: "chevron.backward")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.trailing, 320)
                        .padding(.bottom, 320)
                })
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundColor(.green)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 150)
                    .padding(.top, 240)
            }
            
            Text("Congratulations")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("Your order was successful!")
                .font(.headline)
                .padding(.top, 10)
            
            Spacer()
            
            NavigationLink(destination: HomeView()) {
                Text("Go to Home")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 300)
                    .background(Color.red)
                    .cornerRadius(15)
            }
            .padding(.bottom, 30)
        }
    }
}



struct OrderSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        OrderSuccessView()
    }
}

