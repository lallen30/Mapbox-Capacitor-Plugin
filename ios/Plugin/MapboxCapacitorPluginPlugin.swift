import Foundation
import Capacitor

@objc(MapboxCapacitorPluginPlugin)
public class MapboxCapacitorPluginPlugin: CAPPlugin {

    @objc func showHelloWorld(_ call: CAPPluginCall) {
            DispatchQueue.main.async {
                let helloWorldVC = MapboxCapacitorPluginViewController()
                let navigationController = UINavigationController(rootViewController: helloWorldVC)
                
                if let viewController = self.bridge?.viewController {
                    viewController.present(navigationController, animated: true, completion: nil)
                }
            }
            call.resolve()
        }
}
