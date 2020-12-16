//
//  SearchBar.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/15.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {

    @Binding
    var text: String
    
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding
        var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
    }
    
    func makeCoordinator() -> SearchBar.Coordinator{
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> some UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        searchBar.placeholder = "ex) 070-xxxx-xxxx"
        return searchBar
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
    
}
