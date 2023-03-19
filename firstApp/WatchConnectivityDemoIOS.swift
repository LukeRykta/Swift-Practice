//
//  WatchConnectivityDemoIOS.swift
//  firstApp
//
//  Created by Nicholas Schultz on 3/19/23.
//

import SwiftUI

struct WatchConnectivityDemoIOS: View {
    @ObservedObject var model = PhoneConnectivity()
    @State var reachable = "No"
    var body: some View {
        VStack{
            Text("Reachable \(reachable)")
            Button(action: {
                if self.model.session.isReachable{
                    self.reachable = "Yes"
                }
                else{
                    self.reachable = "No"
                }
            }) {
                Text("Update")
            }
            Text(self.model.messageText)
        }
    }
}

struct WatchConnectivityDemoIOS_Previews: PreviewProvider {
    static var previews: some View {
        WatchConnectivityDemoIOS()
    }
}
