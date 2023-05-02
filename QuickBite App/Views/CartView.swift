//
//  CartView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct CartView: View {
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
            
        }
    }
}
    struct CartView_Previews: PreviewProvider {
        static var previews: some View {
            VStack{
                CartView()
                Spacer()
            }
        }
    }
    
//Eztension to keep code clean
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
