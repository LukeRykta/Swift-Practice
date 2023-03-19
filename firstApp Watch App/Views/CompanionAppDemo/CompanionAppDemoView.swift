//
//  CompanionAppDemoView.swift
//  firstApp Watch App
//
//  Created by Nicholas Schultz on 3/17/23.
//

import SwiftUI
import WatchConnectivity

struct CompanionAppDemoView: View {
    var model = WatchSession()
    let dateFormatter = DateFormatter()
    
    @State var messageText = ""
    
    var body: some View {
        VStack{
            Text(messageText)
            Button("Send Timestamp to Phone", action: sendmessage)
            
        }
    }
    func sendmessage() {
        self.messageText = dateFormatter.string(from: Date())
        self.model.session.sendMessage(["message": self.messageText], replyHandler: nil){
            (error) in
            print(error.localizedDescription)
        }
        print("Sent a message! :)")
    }
}

struct CompanionAppDemoView_Previews: PreviewProvider {
    static var previews: some View {
        CompanionAppDemoView()
    }
}
