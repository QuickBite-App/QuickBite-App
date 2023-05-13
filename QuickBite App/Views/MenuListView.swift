//
//  MenuListView.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 22/04/2023.
//

import SwiftUI

struct MenuListView: View {
    @State  var item = ViewFood()
    
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack{
                    backButton
                    titleSection
                        .fontWeight(.bold)
                    Spacer()
                    barButton
                }
                .font(.title)
                .padding()
                .accentColor(.black)
                searchSection
                    .padding()
                    .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
                    .frame(width: 350)
                    .accentColor(.black)
                    .cornerRadius(13)
                
                ScrollView{
                    ForEach(item.data){ items in
                        Card(food: items)
                    }
                }
                .padding(.top, 20)
            }
        }
    }
}
    struct MenuListView_Previews: PreviewProvider {
        static var previews: some View {
                MenuListView()
        }
    }

//Extension to keep code clean
extension MenuListView {
    private var backButton: some View {
        Button(action:{}, label: {Image(systemName: "chevron.left")  })
    }
    
    private var titleSection: some View {
        VStack(spacing: 4){
            Text("Search")
        }
    }
    
    private var barButton: some View {
        Button(action:{}, label: {Image(systemName: "bell")  })
    }
    
    private var searchSection: some View {
        HStack {
            Button(action:{}, label: {Image(systemName: "magnifyingglass")})
            TextField("what can we offer you today?", text: $searchText)
            Button(action:{}, label: {Image(systemName: "slider.horizontal.3")})
            
            
        }
    }
}
