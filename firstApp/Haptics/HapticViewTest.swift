//
//  HapticViewTest.swift
//  firstApp
//
//  Created by Brandon on 3/16/23.
//

import SwiftUI

struct HapticViewTest: View {
    var body: some View {
        VStack{
            HStack {
                Button ("Success Haptic!") {
                    haptic(.success)
                }
                .padding(.bottom)
                
            }
            HStack {
                Button ("Failure Haptic!"){
                    haptic(.error)
                }
            }
        }
    }
}

struct HapticViewTest_Previews: PreviewProvider {
    static var previews: some View {
        HapticViewTest()
    }
}
