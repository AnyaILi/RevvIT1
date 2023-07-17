//
//  ContentView.swift
//  RevvIT
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var feeling = ""
    var body: some View {
        NavigationStack{
            VStack {
                Image("")
                
                Image(systemName: "")
                    .font(.system(size: 100))
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    HStack{
                        VStack(alignment: .leading){
                            Text("check-in:")
                                .font(.title)
                                .foregroundColor(Color(hex: "EAECE3"))
                            Text("How are you\nfeeling?")
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)

                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color(hex: "CDD7B6"))
                    .mask(RoundedRectangle(cornerRadius: 10))
                    
                        
                }
                .padding()
                NavigationLink(destination: Text("")){
                    HStack{
                        VStack(alignment: .leading) {
                            Text("Journal:")
                                .font(.title)
                                .foregroundColor(Color(hex: "EAECE3"))
                            
                            Text("write down you \nthoughts...")
                                .foregroundColor(Color.black)
                                .padding(.horizontal, 30)
                                .padding(.vertical, 10)
                                .background(Color(hex: "FFFFFF"))
                                .mask(RoundedRectangle(cornerRadius: 10))
                                .multilineTextAlignment(.leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)

                    }
                    
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color(hex: "CDD7B6"))
                    .mask(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
                NavigationLink(destination: Text("")){
                    HStack{
                        VStack(alignment: .leading) {
                            Text("Habit Tracker:")
                                .font(.title)
                                .foregroundColor(Color(hex: "EAECE3"))
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)

                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color(hex: "CDD7B6"))
                    .mask(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
                NavigationLink(destination: Text("")){
                    HStack{
                        VStack(alignment: .leading) {
                            Text("Make a moodboard:")
                                .font(.title)
                                .foregroundColor(Color(hex: "EAECE3"))
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.black)

                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color(hex: "CDD7B6"))
                    .mask(RoundedRectangle(cornerRadius: 10))
                }
                .padding()

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
