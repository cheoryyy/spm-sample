//
//  BaseFlow.swift
//  SPMExample
//
//  Created by hclim on 2020/05/29.
//  Copyright © 2020 hclim. All rights reserved.
//

import Foundation
import RxFlow
import UIKit

class BaseFlow: Flow {
     var root: Presentable {
          return self.rootWindow
     }
     
     private let rootWindow: UIWindow
     
     private var currentPresentedViewController: UIViewController? {
          if let presentedController = self.rootWindow.rootViewController {
               return topViewController(base: presentedController)
          } else {
               return self.rootWindow.rootViewController
          }
     }
     
     private func topViewController(base: UIViewController?) -> UIViewController? {
          if let navigationController = base as? UINavigationController {
               return topViewController(base: navigationController.visibleViewController)
          }
          
          if let tabBarController = base as? UITabBarController, let selectedController = tabBarController.selectedViewController {
               return topViewController(base: selectedController)
          }
          
          if let presentedController = base?.presentedViewController {
               return topViewController(base: presentedController)
          }
          return base
     }
     
     init(withWindow window: UIWindow) {
          self.rootWindow = window
     }
     
     func navigate(to step: Step) -> FlowContributors {
          guard let step = step as? BaseStep else { return .none }
          
          switch step {
          case .appStart:
               return .none
               
          }
     }
}

// MARK: - 😀 주요 이동 프로세스!
extension BaseFlow {
     
}

