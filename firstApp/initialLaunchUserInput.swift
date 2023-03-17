//
//  initialLaunchUserInput.swift
//  firstApp
//
//  Created by wesley jackson on 3/14/23.
//

import SwiftUI
import Contacts

struct initialLaunchUserInput: View {
    
    @AppStorage("firstTimeUser") var firstTimeUser = false
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @State private var phoneNumber = ""
    @State private var path = NavigationPath()
    @AppStorage("userInfo") var userInfo: String?
    
    var body: some View {
        if firstTimeUser{
            ContentView()
        }else{
            NavigationStack(){
                ZStack{
                    VStack{
                        Form {
                            TextField("First Name: ", text: $firstName)
                            TextField("Last Name: ", text: $lastName)
                            TextField("Email Address: ", text: $emailAddress)
                            TextField("Phone Number: ", text: $phoneNumber)
                        }
                        //".action", move view to contentView()
                        .navigationTitle("User Details")
                        .toolbar{ToolbarItemGroup(placement: .navigationBarTrailing){
                            Button{
                                hideKeyboard()
                            }label: {
                                Image(systemName: "keyboard.chevron.compact.down")
                            }
                            Button("Save", action: saveDefaultUser)
                            }
                        }
                        //1. come back to fix button!
                    }
                }
                RadialGradient(
                    gradient: Gradient(colors: [Color.purple, Color.indigo]),
                    center: .center,
                    startRadius: UIScreen.main.bounds.height,
                    endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            }
        }
    }
    
    
    func saveDefaultUser(){
        UserDefaults.standard.set(firstName, forKey: "userInfo")
        UserDefaults.standard.set(lastName, forKey: "userInfo")
        UserDefaults.standard.set(emailAddress, forKey: "userInfo")
        UserDefaults.standard.set(phoneNumber, forKey: "userInfo")
        contactPermission()
        firstTimeUser = true
    }
    
    private func contactPermission(){
        print("Access to contacts")
        let store = CNContactStore()
        store.requestAccess(for: .contacts){
            (granted, err) in
            if let err = err{
                print("Failed to request access", err)
                return
            }
            if granted{
                print("Access granted")
            }else {
                print("Access denied")
            }
        }
    }
    
}

struct initialLaunchUserInput_Previews: PreviewProvider {
    static var previews: some View {
        initialLaunchUserInput()
    }
}

extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
