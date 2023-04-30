//
//  MenuListView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct MenuListView: View {
    @State var searchText = ""
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
        
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("what can we offer you today?", text: $searchText)
                Image(systemName: "slider.horizontal.3")
            }
            .padding()
            .background(Color.gray.opacity(0.3).cornerRadius(10))
        .frame(width: 350)
        
        
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


