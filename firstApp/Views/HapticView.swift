//
//  HapticView.swift
//  firstApp
//
//  Created by Brandon on 3/21/23.
//

import SwiftUI

struct HapticView: View {
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

struct HapticView_Previews: PreviewProvider {
    static var previews: some View {
        HapticView()
    }
}
