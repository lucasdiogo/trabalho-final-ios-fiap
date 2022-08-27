//
//  UIViewController+Context.swift
//  LucasRafaelBrunoJonasVictor
//
//  Created by Bruno Alves Moreira on 27/08/22.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
