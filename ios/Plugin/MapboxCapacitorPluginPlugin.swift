import Foundation
import Capacitor

@objc(MapboxCapacitorPluginPlugin)
public class MapboxCapacitorPluginPlugin: CAPPlugin {

    @objc func showMapbox(_ call: CAPPluginCall) {
            DispatchQueue.main.async {
                let mapboxVC = MapboxCapacitorPluginViewController()
                let navigationController = UINavigationController(rootViewController: mapboxVC)
                
                if let viewController = self.bridge?.viewController {
                    viewController.present(navigationController, animated: true, completion: nil)
                }
            }
            call.resolve()
        }
}
