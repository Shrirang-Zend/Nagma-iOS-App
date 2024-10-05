//
//  OnboardingView.swift
//  Nagma
//
//  Created by Shrirang Zend on 04/10/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Image("The Band Treble Clef")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .background(Color(red: 60 / 255, green: 46 / 255, blue: 99 / 255))
                    .cornerRadius(10)

                Text("Nagma")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 50)
            
            Spacer()
            
            // Header Text
            Text("Let the music take you away...")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 50)
                .padding(.bottom, 40)
            
            // Onboarding Image
            Image("The Band Speaker 2")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Spacer()
            
            // Navigation Button to go to Home View
            Button(action: {
                // Handle Navigation to HomeView
            }) {
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 80))
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(50)
            }
            .padding(.bottom, 40)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
