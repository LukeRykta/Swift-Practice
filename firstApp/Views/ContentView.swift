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
                    Text("Welcome to the Home Page")
                }
                
                NavigationLink(destination: WatchConnectivityDemoIOS()){
                    HStack{
                        Image(systemName: "mail.stack")
                        Text("Receive Message from a paired Watch via WatchConnectivity")
                    }
                    
                }
                NavigationLink(destination: HapticView()){
                    HStack{
                        Image(systemName: "bolt.fill")
                        Text("Haptic Buttons")
                    }
                    
                }
                NavigationLink(destination: BluetoothViewiOS()){
                    HStack{
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Send a message to a Watch via Bluetooth")
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
