import Foundation
import SwiftUI
import UIKit

import React

// This UIViewController will host the React Native view
class ReactNativeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Path to the main.jsbundle file in your project
        guard let jsCodeLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") else {
            fatalError("Could not find main.jsbundle")
        }
        
        // Set up the React Native root view
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "vibely",
            initialProperties: nil,
            launchOptions: nil
        )
        
        // Embed the React Native root view inside the view controller
        self.view = rootView
    }
}

// Create a SwiftUI view that represents the React Native view controller
struct ReactNativeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ReactNativeViewController {
        return ReactNativeViewController()
    }

    func updateUIViewController(_ uiViewController: ReactNativeViewController, context: Context) {
        // No need to update the view controller, React Native handles updates internally
    }
}



struct SecondView: View {
    var body: some View {
        VStack {
            
            // Add the React Native view to the SwiftUI screen
            ReactNativeView()
                .edgesIgnoringSafeArea(.all) // Makes the React Native view take up the entire available space
        }
        .navigationTitle("React Native Communities app")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
