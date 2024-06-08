//
//  SearchBar.swift
//  HyroxSocialClub
//
//  Created by Dhruv Shrivastava on 20/09/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var countryName : String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.gray)
            TextField("Search", text: $countryName)
                .font(Font.system(size: 21))
        }
        .padding(7)
        .background(Color.white)
        .cornerRadius(16)
//        .shadow(color: Color(hex: "FBE8E8"),radius: 10)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(countryName: .constant("hey"))
    }
}
