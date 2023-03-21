//
//  ContentView.swift
//  firstApp Watch App
//
//  Created by Luke Ryktarsyk on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: CompanionAppDemoView()){
                    CompanionAppRow()
                }
                NavigationLink(destination: BluetoothConnectivityView()){
                    BluetoothRow()
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
