//
//  SignUpView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 09/05/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var isEmailValid = false
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Sign up")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding(.top, 50)
                .padding(.leading, 20)
            
            TextField("Email", text: $email, onEditingChanged: { (isEditing) in
                            if !isEditing {
                                self.validateEmail()
                            }
                        })
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).stroke(isEmailValid ? Color.green : Color.red, lineWidth: 1))
                        .overlay(
                            HStack {
                                Spacer()
                                if isEmailValid {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                        ).padding()
            
            SecureField("Password", text: $password)
               // .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(height: 55)
                .overlay(
                    Button(action: {
                        showPassword.toggle()
                    }) {
                        Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing, 10)
                    },
                    alignment: .trailing
                )
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        .padding()
            
            Button(action: {}) {
                Text("Sign up")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            HStack {
                Text("Already have an account?")
                
                NavigationLink(
                    destination: SignInView(),
                    label: {
                        Text("Sign in")
                            .foregroundColor(.red)
                    }
                )
            }
            .padding(.horizontal, 60)
            
            Spacer()
        }
    }
    
    private func validateEmail() {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            isEmailValid = emailPred.evaluate(with: email)
        }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
