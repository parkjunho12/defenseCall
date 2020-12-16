//
//  SettingView.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/16.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Image("Setting_phone")
                VStack{
                    Text("번호 차단")
                        .padding(20)
                    Text("나에게 걸려오는 인터넷 전화 번호를 차단하세요")
                        .padding(20)
                
                    Button(action: {
                        if let url = URL(string:UIApplication.openSettingsURLString) {
                            if UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            }
                        }
                    }, label: {
                        Text("이동")
                    })
                        .padding(20)
                }
              
            }
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea(.keyboard)
        
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
