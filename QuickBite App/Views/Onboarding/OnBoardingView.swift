//
//  OnBoardingView.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 12/05/2023.
//

import SwiftUI

struct OnBoardingView: View {
    @State var onBoardingState: Int = 0
    
    var body: some View {
        ZStack {
            switch onBoardingState {
            case 0: Onb1View(continueButtonAction: handleNextButtonClick)
            case 1: Onb2View(continueButtonAction: handleNextButtonClick)
            case 2: Onb3View(continueButtonAction: handleNextButtonClick)
            case 3: HomeView()
            default:
                HomeView()
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}

extension OnBoardingView {
    func handleNextButtonClick() {
        withAnimation(.spring()) {
            onBoardingState += 1
        }
    }
}
