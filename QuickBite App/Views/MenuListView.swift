//
//  MenuListView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI
//let FoodList:  = <#initializer#>FoodItems
//
private var data: [Int] = Array(1...20)

private let adaptiveColumns = [
    GridItem(.adaptive(minimum: 340))
]
struct MenuListView: View {
    @State var searchText = ""
    
    
    var body: some View {
        
        //Nav Bar
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
        
        //Search
        searchSection
            .padding()
            .background(Color.gray.opacity(0.3).cornerRadius(10))
        .frame(width: 350)
        .accentColor(.black)
    
//List Example
        
                //List
                VStack{
                    NavigationView{
                        ScrollView{
                            LazyVGrid(columns: adaptiveColumns, spacing:20) {
                                ForEach(data, id: \.self) { number in
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 340, height: 280)
                                    }
        
                                }
                            }//LazyVGrid
                        }//ScrollView
                    }//Navigation
                }//VStack
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        //List
//        VStack{
//            NavigationView{
//                ScrollView{
//                    LazyVGrid(columns: adaptiveColumns, spacing:20) {
//                        ForEach(data, id: \.self) { number in
//                            ZStack{
//                                RoundedRectangle(cornerRadius: 10)
//                                    .frame(width: 340, height: 280)
//                            }
//
//                        }
//                    }//LazyVGrid
//                }//ScrollView
//            }//Navigation
//        }//VStack
        
        
        
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

//Nav Bar
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
