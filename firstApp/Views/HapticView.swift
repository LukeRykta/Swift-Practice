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
                Button ("Success") {
                    haptic(.success)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Error"){
                    haptic(.error)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Warning"){
                    haptic(.warning)
                }
                .padding(.bottom, 20)
            }
            Divider()
            HStack {
                Button ("Soft"){
                    impact(.soft)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Light"){
                    impact(.light)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Medium"){
                    impact(.medium)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Rigid"){
                    impact(.rigid)
                }
                .padding(.bottom, 20)
            }
            HStack {
                Button ("Heavy"){
                    impact(.heavy)
                }
                .padding(.bottom, 20)
            }
            Divider()
        }
    }
}

struct HapticView_Previews: PreviewProvider {
    static var previews: some View {
        HapticView()
    }
}
