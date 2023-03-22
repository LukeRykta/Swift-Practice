//
//  BluetoothConnectivityView.swift
//  firstApp Watch App
//
//  Created by Luke Ryktarsyk on 3/19/23.
//

import SwiftUI

struct BluetoothConnectivityView: View {
    
    @ObservedObject private var model = BluetoothCentralModel()
    var body: some View {
            HStack{
                Text(model.messageText)
            }
    }
}

struct BluetoothConnectivityView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothConnectivityView()
    }
}
