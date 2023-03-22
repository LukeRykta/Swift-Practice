import SwiftUI
import CoreBluetooth

struct BluetoothViewiOS: View {
    
    @State private var isOn = false

    @ObservedObject private var model = BluetoothPeripheralModel()
    
    
    var body: some View {
        VStack{
            Text("The Sent message is: \n\(model.messageText)")
                .padding()
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
                    }.padding()
            }
        }
       
    }
}

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothViewiOS()
    }
}
