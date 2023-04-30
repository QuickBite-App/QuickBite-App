//
//  MenuListView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        HStack{
            Button(action:{}, label: {Image(systemName: "chevron.left")  })
            
            
            
            VStack(spacing: 4){
                Text("Search")
            }
            
            .fontWeight(.bold)
            Spacer()
            Button(action:{}, label: {Image(systemName: "bell")  })
        }
        .font(.title)
        .padding()
        .accentColor(.black)
        }
    }
    
    struct MenuListView_Previews: PreviewProvider {
        static var previews: some View {
            VStack {
                MenuListView()
                Spacer()
            }
        }
    }


