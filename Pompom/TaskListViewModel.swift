//
//  File.swift
//  Pompom
//
//  Created by Zion Tuiasoa on 3/13/23.
//

import Foundation
import Combine

class TaskListViewModel {
    
    private var cancellables = Set<AnyCancellable>()
    
    init(navigateSubject: PassthroughSubject<Task, Never>) {
        navigateSubject.sink { event in
            switch event {
            case .detail:
                
            }
        }
    }
}
