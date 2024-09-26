import Foundation
import SwiftUI
import UIKit
import React

// This UIViewController will host the React Native view
class ReactNativeViewController: UIViewController, RCTBridgeDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the React Native bridge
        guard let bridge = RCTBridge(delegate: self, launchOptions: nil) else {
            fatalError("Could not initialize React Native bridge")
        }
        
        let initialProps: [String: Any] = [
            "userId": 1234,
            "token": "1223",
            "communitiyId": "123"
        ]
        
        // Create a React Root View with the unwrapped bridge and the module name
        let rootView = RCTRootView(bridge: bridge, moduleName: "vibely", initialProperties: initialProps)
        
        // Set the root view for this view controller
        self.view = rootView
    }

    // MARK: - RCTBridgeDelegate Method
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
    }
}

// Create a SwiftUI view that represents the React Native view controller
struct ReactNativeView: UIViewControllerRepresentable {
    // Required methods for UIViewControllerRepresentable
    
    func makeUIViewController(context: Context) -> ReactNativeViewController {
        return ReactNativeViewController()
    }

    func updateUIViewController(_ uiViewController: ReactNativeViewController, context: Context) {
        // No need to update the view controller, React Native handles updates internally
    }

    // This typealias tells SwiftUI how to manage the view controller's lifecycle
    typealias UIViewControllerType = ReactNativeViewController
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
