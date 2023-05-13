//
//  SignInView.swift
//  QuickBite App
//
//  Created by Jehoshabeath Appiah on 09/05/2023.
//
import SwiftUI
import FirebaseAuth

struct SignInView: View {
    @AppStorage("uid") var userID: String = ""
    @State private var email = ""
    @State private var isEmailValid = false
    @State private var password = ""
    @State private var showPassword = false
    @State private var rememberMe = false
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Sign in")
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
                            .foregroundColor(.black)
                    }
                }
                .padding()
            )
            .padding(.horizontal)

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

            HStack {
                CheckboxFieldView(checked: $rememberMe, size: 18, color: .red)
                    .padding(.leading, 3)

                Text("Remember me")

                Spacer()

                NavigationLink(
                    destination: PasswordResetView(),
                    label: {
                        Text("Forgot password?")
                            .foregroundColor(.red)
                    }
                )
                .padding(.trailing, 15)
                .accentColor(.red) 
            }
            .padding(.horizontal)

            Button(action: {
                Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                    
                    if let error = error {
                        let nsError = error as NSError
                        if nsError.domain == AuthErrorDomain {
                            if nsError.code == AuthErrorCode.invalidEmail.rawValue {
                                alertMessage = "The email address is invalid."
                                showAlert = true
                            }
                            else if nsError.code == AuthErrorCode.wrongPassword.rawValue {
                                alertMessage = "Incorrect password, try again."
                                showAlert = true
                            }
                            else if nsError.code == AuthErrorCode.invalidCredential.rawValue {
                                alertMessage = "Invalid credentials, try again."
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
                        withAnimation {
                            userID = authResult.user.uid
                        }
                    }
                }
            }) {
                Text("Sign in")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, maxHeight: 53)
                    .background(Color("Reddish"))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }

            HStack {
                Text("Don't have an account?")

                NavigationLink(
                    destination: SignUpView(),
                    label: {
                        Text("Sign up")
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

struct CheckboxFieldView: View {
    @Binding var checked: Bool
    var size: CGFloat
    var color: Color

    var body: some View {
        Button(action: { checked.toggle() }) {
            RoundedRectangle(cornerRadius: 5)
                .fill(checked ? color : Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(color, lineWidth: 1)
                )
                .frame(width: size, height:size)
                .overlay(
                checked ?
                Image(systemName: "checkmark")
                .foregroundColor(.white)
                : nil
                )
            }
        }
    }


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
