
# iOS

This page will guide you through the integration of Revlum in your iOS app.

## 1. Add the Revlum SDK to Your Project

To import the Revlum SDK into your iOS project, simply add the GitHub repository as a package dependency.

1. In Xcode, go to **File > Add Packages**.
2. Paste the following URL when prompted: `https://github.com/revlum/ios`.
3. Add the Revlum SDK to your project.

## 2. Configure the Revlum SDK

Configure the SDK by providing your API key, along with optional parameters like `userId` and `subId`. If you do not provide a user ID, the SDK will automatically generate one. If a user ID is set, it will be used unless manually changed.

```swift
import RevlumOfferwallSDK

RevlumOfferwallSdk.shared.configure(
    apiKey: "myapikey1234567890",
    subId: nil,
    userId: "myuserid"
)
```

## 3. Show the OfferwallView

To display the OfferwallView, use the following code snippets.

### SwiftUI Example

Use `NavigationLink` to present the OfferwallView:

```swift
import RevlumOfferwallSDK

NavigationLink(destination: RevlumOfferwallSdk.getOfferwallView()) {
    Text("Open Offerwall")
}
```

### UIKit Example

To display the OfferwallView using UIKit, push the `UIHostingController` with the OfferwallView:

```swift
import RevlumOfferwallSDK

self.navigationController?.pushViewController(
    UIHostingController(rootView: RevlumOfferwallSdk.getOfferwallView()), 
    animated: true
)
```

For UIKit, ensure that you configure a `UINavigationController` in the `SceneDelegate`:

```swift
import RevlumOfferwallSDK

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UINavigationController(rootViewController: ViewController())
        window.makeKeyAndVisible()
        self.window = window
    }
}
```

## 4. Check for a reward

To check for a reward, use the `checkReward` function. It requires a reward callback, which returns a reward value (0 if there is no reward) and a list of conversions, as well as an error callback.

```swift
import RevlumOfferwallSDK

RevlumOfferwallSdk.shared.checkReward(
    onCheckReward: { checkReward in
        print("Check Reward Success: \(checkReward)")
    },
    onError: { error in
        print("Check Reward Error: \(error)")
    }
)
```
