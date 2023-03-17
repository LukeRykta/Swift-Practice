//
//  CompanionAppDemoView.swift
//  firstApp Watch App
//
//  Created by Nicholas Schultz on 3/17/23.
//

import SwiftUI

struct CompanionAppDemoView: View {
    
    var body: some View {
        Button("Send Message to Phone", action: sendmessage)
    }
    func sendmessage() {
        //Current placeholder for the WCSession
        print("Sent a message! :)")
    }
}

struct CompanionAppDemoView_Previews: PreviewProvider {
    static var previews: some View {
        CompanionAppDemoView()
    }
}
