//
//  FrameworkGridView.swift
//  apple--frameworks
//
//  Created by Prateek Kumar on 22/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewmodel.columns){
                    ForEach(MockData.frameworks){framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .navigationDestination(for: Framework.self){ framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
}
#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
