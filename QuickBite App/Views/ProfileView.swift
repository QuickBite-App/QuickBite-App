//
//  ProfileView.swift
//  QuickBite App
//
//  Created by Babatunde Olumoh on 28/04/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State var userName = ""
    @State var firstName = ""
    @State var lastName = ""
    @State var dateOfBirth = Date()
    
    
    
    
    var body: some View {
        VStack{
            ZStack{
                Image("Ellipse")
                    .resizable()
                    .ignoresSafeArea(.all)
                    .frame(width: 400, height: 260)

                Image("profile image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipped()
                    .cornerRadius(60)
                    .padding(.top, 80)
                    
                HStack {
                    backButton
                        .accentColor(.white)
                        .padding()
                    
                    
                    titleSection
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                
                }
                .font(.title3)
                .padding(.trailing, 40)
                .padding(.bottom, 200)
            }
            .padding(.bottom)
            VStack{
                VStack{
                    Text("Username")
                        .fontWeight(.semibold)
                    TextField("Your Username", text: $userName)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                }
                .padding(.horizontal)
                
                VStack{
                    Text("Firstname")
                        .fontWeight(.semibold)
                    TextField("Your First Name", text: $firstName)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                        
                }
                .padding(.horizontal)
                
                VStack{
                    Text("Last name")
                        .fontWeight(.semibold)
                    TextField("Your Last name", text: $lastName)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                }
                .padding(.horizontal)
                
                
                VStack{
                    DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
                        .fontWeight(.semibold)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                }
                .padding()
                
                
                Spacer()
                HStack {
                    Button(action: {
                               print("Button tapped!")
                           }) {
                               Text("Complete")
                           }
                           .frame(width: 270, height: 70)
                           .background(Color.red)
                           .cornerRadius(24.88)
                           .foregroundColor(.white)
                           .fontWeight(.bold)
                           .font(.system(size: 20))
                }
            }
                .padding(.vertical)
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    private var backButton: some View {
        Button(action:{}, label: {Image(systemName: "chevron.left")  })
    }
    
    private var titleSection: some View {
        VStack{
            Text("Fill in your bio to get started")
        }
    }
}
