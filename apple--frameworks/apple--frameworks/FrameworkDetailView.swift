//
//  FrameworkDetailView.swift
//  apple--frameworks
//
//  Created by Prateek Kumar on 22/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework:Framework
    @State private var isShowingSafariView = false
    
    var body : some View{
        VStack{
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .fontWeight(.light)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {Label("Learn More", systemImage:"book.fill")}
                    .buttonStyle(.borderedProminent)
                    .controlSize(.extraLarge)
                    .foregroundStyle(.white)
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    .tint(.orange)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string : framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
