//
//  ContentView.swift
//  firstApp Watch App
//
//  Created by Luke Ryktarsyk on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Verify navigation functionality on Watch
        //Doesn't work in preview on XCode...
        NavigationView{
            List{
                NavigationLink(destination: CompanionAppDemoView()){
                    CompanionAppRow()
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
