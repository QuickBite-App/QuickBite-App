//
//  HomeView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 97.97, height: 43)
            .background(Color(#colorLiteral(red: 1, green: 0.7569, blue: 0.1804, alpha: 1)))
            .cornerRadius(15)
            .foregroundColor(.black)
            .fontWeight(.bold)
            .font(.system(size: 14))
            
    }
}

struct HomeView: View {
    @State private var categories = loadCategoryData()
    @ObservedObject var viewModel = SearchFoodViewModel()
    @State private var isSearchActive = false
    
    @State var searchText = "a"
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search meals...", text: $viewModel.searchQuery, onEditingChanged: { isEditing in
                    self.isSearchActive = isEditing
                })
                .padding()
                .background(Color(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353))
                .frame(width: 350)
                .accentColor(.black)
                .cornerRadius(13)
                
                ScrollView {
                    if isSearchActive && !viewModel.searchQuery.isEmpty {
                        ForEach(viewModel.filteredMeals, id: \.idMeal) { meal in
                            NavigationLink( destination: MenuDetailView(id: meal.idMeal)) {
                                HStack {
                                    Text(meal.strMeal)
                                    Spacer()
                                    Text("$\(meal.price)")
                                }
                                .padding(20)
                                .frame(maxWidth: .infinity, maxHeight: 200)
                                .background(Color(hue: 0.913, saturation: 0.031, brightness: 0.994))
                                .foregroundColor(Color.black)
                                .cornerRadius(10)
                                .padding(1)
                            }
                        }
                    } else {
                        VStack{
                            ZStack {
                                Color(.red)
                                HStack{
                                    Image("BannerAdImage")
                                        .resizable()
                                        .frame(width: 122, height: 122.96)
                                        .padding(.trailing, 15)
                                    VStack(alignment: .leading) {
                                        Text("50% off special deal in May")
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                        NavigationLink(destination: MenuDetailView(id: "52813")) {
                                            Text("Buy now")
                                                .frame(width: 97.97, height: 43)
                                                .background(Color(#colorLiteral(red: 1, green: 0.7569, blue: 0.1804, alpha: 1)))
                                                .cornerRadius(15)
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.system(size: 14))
                                        }
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 134)
                                .background(
                                      Image("BannerBackground")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .edgesIgnoringSafeArea(.all)
                                )
                                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                            }
                        }
                        .cornerRadius(10)
                        .padding()
                        ForEach(categories?.meals ?? [], id: \.strCategory) { category in
                            VStack {
                                HStack {
                                    Text(category.strCategory)
                                        .fontWeight(.bold)
                                    Spacer()
                                    NavigationLink(destination: MenuListView(category: category.strCategory)) {
                                        Text("View more")
                                            .foregroundColor(.red)
                                            .fontWeight(.bold)
                                            .font(.system(size: 14))
                                    }
                                }
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                 HomeScroll(category: category.strCategory)
                            }
                            .padding(.vertical, 10)
                        }
                    }
                    }
                    
                }
            }
            
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
    
    //Extension to keep code clean
    extension HomeView {
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
    
    struct SearchBar: View {
        @Binding var text: String
        
        var body: some View {
            TextField("Search meals...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                )
        }
    }

