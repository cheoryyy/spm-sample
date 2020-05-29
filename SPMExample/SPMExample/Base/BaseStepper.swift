//
//  BaseStepper.swift
//  SPMExample
//
//  Created by hclim on 2020/05/29.
//  Copyright © 2020 hclim. All rights reserved.
//

import Foundation
import RxFlow
import RxSwift
import RxRelay
import UIKit

class BaseStepper: Stepper {
     let steps = PublishRelay<Step>()
     private let disposeBag = DisposeBag()
     
     var initialStep: Step {
          return BaseStep.appStart
          
     }
     
     func navigate(step: BaseStep) {
          self.steps.accept(step)
     }
     
     static func navigate(to step: BaseStep) {
          guard let delegate = UIApplication.shared.delegate as? AppDelegate else { return }
          if delegate.baseStepper != nil {
               delegate.baseStepper.navigate(step: step)
          }
     }
}
