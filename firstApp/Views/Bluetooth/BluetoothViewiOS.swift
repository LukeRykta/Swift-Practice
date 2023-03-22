import SwiftUI
import CoreBluetooth

struct BluetoothViewiOS: View {
    
    @State private var isOn = false

    @ObservedObject private var model = BluetoothPeripheralModel()
    
    
    var body: some View {
        HStack{
            Toggle("Advertise as Peripheral", isOn: $isOn)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
                .onChange(of: isOn){ value in
                    if value {
                        model.peripheralManager.startAdvertising([CBAdvertisementDataServiceUUIDsKey: [TransferService.serviceUUID]])
                    }
                    else {
                        model.peripheralManager.stopAdvertising()
                    }
                }
        }
    }
}

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothViewiOS()
    }
}
