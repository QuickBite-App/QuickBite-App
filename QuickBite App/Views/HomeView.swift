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
    var body: some View {
        ScrollView {
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
                            Button(action: {
                                       print("Button tapped!")
                                   }) {
                                       Text("Buy now")
                                   }
                                   .buttonStyle(CustomButtonStyle())
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
            
            ForEach(0..<10) { index in
                VStack {
                    HStack {
                        Text("Main dishes")
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {
                                   print("Button tapped!")
                               }) {
                                   Text("View more")
                               }
                               .foregroundColor(.red)
                               .fontWeight(.bold)
                               .font(.system(size: 14))
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 11) {
                            ForEach(0..<10) { index in
                                VStack {
                            
                                }
                                .frame(width: 129, height: 163)
                                .background(
                                      Image("SampleImage")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .edgesIgnoringSafeArea(.all)
                                )
                                .cornerRadius(10)
                            }
                        }
                        .padding()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 11) {
                            ForEach(0..<10) { index in
                                VStack {
                            
                                }
                                .frame(width: 129, height: 163)
                                .background(
                                      Image("SampleImage")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .edgesIgnoringSafeArea(.all)
                                )
                                .cornerRadius(10)
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    
                    }
                }
                .padding(.vertical, 10)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
