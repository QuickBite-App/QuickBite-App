//
//  MenuListView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI
//
private var data: [Int] = Array(1...20)

private let adaptiveColumns = [
    GridItem(.adaptive(minimum: 340))
]
struct MenuListView: View {
    
  //  let FoodList: FoodItems
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
    
        // List Array
        
        FoodGrid
        
        
        
        
        
        
//List Example
        
                //List
        VStack{
            NavigationView{
                    ScrollView{
                        LazyVGrid(columns: adaptiveColumns, spacing:10) {
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
    
    private var FoodGrid: some View {
        VStack( spacing: 10){
            Image("Burger")
                .resizable()
                .frame(width: 333, height: 154)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius:5)
            
                .overlay(alignment: .topTrailing, content: {
                    Text("£12.20")
                        .background(
                            Capsule()
                                .fill(Color(.white))
                        )
                        .padding()
                })
            
        VStack(alignment: .leading, spacing: 5){
                Text("Burger")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Delicious and tasty cheese burger one of tasty town’s finest, it has a record sale of 2000 orders and a rating of 4.8 since it’s introduction.")
                    .font(.body)
                    .fontWeight(.light)
                .frame(width: 333, height: 119)
                .shadow(radius:5)
            
                .overlay(alignment: .bottomTrailing, content: {
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
                    }
                })
            }
        }
    }
}
