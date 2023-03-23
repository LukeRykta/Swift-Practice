//
//  BluetoothConnectivityView.swift
//  firstApp Watch App
//
//  Created by Luke Ryktarsyk on 3/19/23.
//

import SwiftUI

struct BluetoothConnectivityView: View {
    var model = WatchSession()
    let dateFormatter = DateFormatter()
    
    @State var messageText = ""
    
    var body: some View {
        VStack {
            VStack{
                Text(messageText)
                Button("Transfer Data to Nearby Watch"){
                    SendData()
                    HapticManagerWatch.shared.playHaptic()
                }
//                Button("Transfer Data to Nearby Watch", action: SendData)
            }
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Start Broadcast")
            }
            .padding()
        }
    }
    func SendData() {
        print("hello bluetooth")
    }
}

struct BluetoothConnectivityView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothConnectivityView()
    }
}
