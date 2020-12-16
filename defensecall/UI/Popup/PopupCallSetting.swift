//
//  PopupCallSetting.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/16.
//

import SwiftUI

struct PopupCallSetting: View {
    var body: some View{
        VStack {
            Text("전화 설정을 해주시기 바랍니다..")
                .foregroundColor(.black)
                .background(Color.white)
                .padding(30)
            Spacer()
        }
        .frame(width: 200, height: 100, alignment: .bottom)
        .cornerRadius(10.0)
    }
}
