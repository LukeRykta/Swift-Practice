//
//  CompanionAppRow.swift
//  firstApp Watch App
//
//  Created by Nicholas Schultz on 3/17/23.
//

import SwiftUI

struct CompanionAppRow: View {
    var body: some View {
        HStack{
            Image(systemName: "mail.stack")
            Text("Message to Phone")
        }
    }
}

struct CompanionAppRow_Previews: PreviewProvider {
    static var previews: some View {
        CompanionAppRow()
    }
}
