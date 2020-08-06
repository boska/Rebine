//
//  Reducer.swift
//  Rebine
//
//  Created by Yang on 2020/8/2.
//  Copyright © 2020 Yang Lee. All rights reserved.
//

import Foundation

public struct Reducer<State, Action> {
    public typealias Closure = (inout State, Action) -> Void
    private let reducerClosure: Closure

    public init(_ reducerClosure: @escaping Closure) {
        self.reducerClosure = reducerClosure
    }

    func callAsFunction(_ state: inout State, _ action: Action) {
        reducerClosure(&state, action)
    }
}