//
//  ContentView.swift
//  firstApp
//
//  Created by Luke Ryktarsyk on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            List{
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Welcome to the Home Page2")
                }
                
                NavigationLink(destination: WatchConnectivityDemoIOS()){
                    HStack{
                        Image(systemName: "mail.stack")
                        Text("Message to Phone")
                    }
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
