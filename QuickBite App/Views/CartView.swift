//
//  CartView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct CartView: View {
    @State  var list = ViewCart()
    
    var body: some View {
        //Nav Bar
        VStack{
            HStack{
                backButton
                
                Spacer()
                
                titleSection
                    .fontWeight(.bold)
                    
                
                Spacer()
                
                barButton
                
            }
            .font(.title)
            .padding()
            .accentColor(.black)
            
            //Nav
            NavigationView {
                ScrollView{
                    ForEach(list.data){ items in
                        List(cart: items)
                    }
                }
            }
            
            HStack {
                Button(action: {
                           print("Button tapped!")
                       }) {
                           Text("Confirm Order")
                       }
                       .frame(width: 270, height: 70)
                       .background(Color.red)
                       .cornerRadius(24.88)
                       .foregroundColor(.white)
                       .fontWeight(.bold)
                       .font(.system(size: 20))
            }
            .padding(.bottom, 50)
            }
            
        }
}
    struct CartView_Previews: PreviewProvider {
        static var previews: some View {
                CartView()
        }
    }
    
//Extension to keep code clean
    extension CartView {
        private var backButton: some View {
            Button(action:{}, label: {Image(systemName: "chevron.left")  })
        }
        
        private var titleSection: some View {
            VStack(spacing: 4){
                Text("Your Cart")
            }
        }
        
        private var barButton: some View {
            Button(action:{}, label: {Image(systemName: "bell")  })
        }
    }
