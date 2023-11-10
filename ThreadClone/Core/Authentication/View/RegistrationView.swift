//
//  RegistrationView.swift
//  ThreadClone
//
//  Created by Kay on 10/11/2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        NavigationStack () {
            VStack() {
                
                Spacer()
                
                ThreadsAppIcon()
                
                VStack() {
                     
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your full name", text: $fullName)
                        .modifier(ThreadsTextFieldModifier())

                    TextField("Enter your username", text: $username)
                        .modifier(ThreadsTextFieldModifier())

                }
                
               
                Button () {
                    
                } label: {
                    Text("Sign up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                Button() {
                    dismiss()
                } label: {
                    HStack(spacing: 3){
                        Text("Already have an account")
                            .font(.footnote)
                        Text("Sign in")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
