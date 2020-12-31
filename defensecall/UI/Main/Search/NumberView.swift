//
//  NumberView.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/15.
//

import SwiftUI
import CallKit

struct NumberView: View {
    let numbers = ["070-0000-00xx","070-0000-01xx","070-0000-02xx","070-0000-03xx","070-0000-04xx"]
    
    @State private var searchText: String = ""
    
    var body: some View{
        NavigationView{
            VStack {
                SearchBar(text: $searchText)
                List{
                    ForEach(self.numbers.filter{
                        self.searchText.isEmpty ? true : $0.contains(self.searchText)
                    }, id: \.self) {
                        num in NavigationLink(
                            destination: DetailView(text: num)
                                .onAppear(perform:{
                                    CXCallDirectoryManager.sharedInstance.reloadExtension(withIdentifier: "datau.defensecall.defensecall-callkit"){
                                        error in
                                        if error != nil {
                                            
                                        } else {
                                            
                                        }
                                    }
                                })
                            ,
                            label: {
                                Text(num)
                            })
                    }
                }.navigationBarTitle(Text("Defense Call"))
        
            }
        }
    }
}
