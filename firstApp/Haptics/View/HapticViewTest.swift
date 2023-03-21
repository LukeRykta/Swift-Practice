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
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Error Haptic!"){
                    haptic(.error)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Warning Haptic!"){
                    haptic(.warning)
                }
                .padding(.bottom, 20)
            }
        }
    }
}

struct HapticViewTest_Previews: PreviewProvider {
    static var previews: some View {
        HapticViewTest()
    }
}
