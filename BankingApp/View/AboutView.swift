//
//  AboutView.swift
//  BankingApp
//
//  Created by Udita Chakraborty on 14/08/24.
//

import SwiftUI
 
struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showMore = false
    @State private var buttonRotation = 0.0
    
    var body: some View {
       
            
            VStack(alignment: .leading, spacing: 20) {
                HStack{
                    Spacer()
                    Text("About This App")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding() // Background color for the title
                        .foregroundColor(Color(.systemGray2)) // Text color
                        .cornerRadius(10)
                        .padding(.top, 40)
                    Spacer()
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle")
                            .imageScale(.large)
                            .foregroundColor(Color(.systemRed))
                    }
                }
                
                HStack{
                    Spacer()
                    Text("This is a sample app to demonstrate a SwiftUI About screen with animations. It showcases various UI elements and animations.")
                        .font(.body)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.bottom, 20)
                    Spacer()
                }
                if showMore {
                    Text("Here is some additional information about the app. This section can include more detailed information, such as version history, credits, or links to resources.")
                        .font(.body)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .transition(.opacity)
                }
                Spacer()
                
                Button(action: {
                    withAnimation {
                        showMore.toggle()
                        buttonRotation += 180
                    }
                }) {
                    HStack {
                        Spacer()
                        Text(showMore ? "Show Less" : "Show More")
                        Image(systemName: "chevron.down")
                            .rotationEffect(.degrees(buttonRotation))
                        Spacer()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button{
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle")
                                .imageScale(.large)
                                .foregroundColor(Color(.red))
                        }
                    }
                }
                
            }
            .padding(50)
            .background(Color(.systemGray6))
            .cornerRadius(20)
            .shadow(radius: 10)
            .animation(.easeInOut, value: showMore)
            
            .edgesIgnoringSafeArea(.all)
            
     
        
    }
}
 
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AboutView()
        }
    }
}
