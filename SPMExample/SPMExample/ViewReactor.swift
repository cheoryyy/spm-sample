//
//  ViewReactor.swift
//  SPMExample
//
//  Created by hclim on 2020/05/29.
//  Copyright © 2020 hclim. All rights reserved.
//

import Foundation
import ReactorKit
import RxFlow
import RxSwift
import RxRelay

final class ViewReactor: Reactor, Stepper {
     var initialState: State
     
     
     var steps = PublishRelay<Step>()
     
     
     enum Action {

     }
     enum Mutation {

     }
     
     struct State {

     }
     
     init() {
         self.initialState = State(
         )
     }

}
