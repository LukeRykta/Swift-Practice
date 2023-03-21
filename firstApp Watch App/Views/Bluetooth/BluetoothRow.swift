//
//  BluetoothRow.swift
//  firstApp Watch App
//
//  Created by Luke Ryktarsyk on 3/19/23.
//

import SwiftUI

struct BluetoothRow: View {
    var body: some View {
        HStack{
            Image(systemName: "wifi.circle")
            Text("Test Bluetooth Connection")
        }
    }
}

struct BluetoothRow_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothRow()
    }
}
