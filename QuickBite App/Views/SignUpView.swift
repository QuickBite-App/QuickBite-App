//
//  SignUpView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 09/05/2023.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var userID: String = ""
    @State private var email: String = ""
    @State private var isEmailValid: Bool = false
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    @State private var shouldNavigate = false
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Sign up")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(Color("Reddish"))
                .padding(.top, 50)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            
            TextField("Email", text: $email, onEditingChanged: { (isEditing) in
                            if !isEditing {
                                self.validateEmail()
                            }
                        })
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        .overlay(
                            HStack {
                                Spacer()
                                if isEmailValid {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.green)
                                }
                            }
                            .padding()
                        ).padding(.horizontal)
            
            ZStack(alignment: .trailing) {
                if showPassword {
                    TextField("Password", text: $password)
                        .padding()
                        .frame(height: 55)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                } else {
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(height: 55)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                }

                Button(action: {
                    showPassword.toggle()
                }) {
                    Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
            .padding(.horizontal)
            
            Button(action: {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let error = error {
                        let nsError = error as NSError
                        if nsError.domain == AuthErrorDomain {
                            if nsError.code == AuthErrorCode.emailAlreadyInUse.rawValue {
                                alertMessage = "The email address is already in use by another account."
                                showAlert = true
                            }
                            else if nsError.code == AuthErrorCode.invalidEmail.rawValue {
                                alertMessage = "The email address is invalid."
                                showAlert = true
                            }
                            else {
                                alertMessage = "Error: \(error.localizedDescription)"
                                showAlert = true
                            }
                        }
                        return
                    }
                    
                    if let authResult = authResult {
                        self.userID = authResult.user.uid
                        if self.userID != "" {
                            self.shouldNavigate = true
                        }
                    }
                }
            }) {
                Text("Sign up")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, maxHeight: 53)
                    .background(Color("Reddish"))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .background(
                NavigationLink(
                    destination: SignInView(),
                    isActive: $shouldNavigate,
                    label: { EmptyView() }
                )
                .accentColor(.red) 
            )
            
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
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
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
