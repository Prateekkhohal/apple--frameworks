//
//  FrameworkGridViewModel.swift
//  apple--frameworks
//
//  Created by Prateek Kumar on 22/11/23.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    var selectedframework : Framework?{
        didSet{ isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
