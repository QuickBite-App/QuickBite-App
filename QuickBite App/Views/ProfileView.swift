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
            }
            .padding(.bottom)
            VStack{
                VStack(alignment: .leading){
                    Text("Username")
                        .fontWeight(.medium)
                        .frame(width: .infinity)
                        .multilineTextAlignment(.leading)
                    TextField("Your Username", text: $userName)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading){
                    Text("First Name")
                        .fontWeight(.medium)
                        .frame(width: .infinity)
                        .multilineTextAlignment(.leading)
                    TextField("Your First Name", text: $firstName)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                        
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                VStack(alignment: .leading){
                    Text("Last Name")
                        .fontWeight(.medium)
                        .frame(width: .infinity)
                        .multilineTextAlignment(.leading)
                    TextField("Your Last name", text: $lastName)
                    Rectangle()
                        .fill(Color.black)
                        .opacity(1)
                        .frame(height: 1)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                VStack{
                    DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
                        .fontWeight(.medium)
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
                           .foregroundColor(Color.white)
                           .fontWeight(.bold)
                           .font(.system(size: 20))
                           .frame(width: 289, height: 72)
                           .background(Color(red: 0.9450980392156862, green: 0.0, blue: 0.15294117647058825))
                           .cornerRadius(23.88)
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
            Text("Profile")
        }
    }
}
