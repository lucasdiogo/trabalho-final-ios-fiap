//
//  CriacaoFormViewController.swift
//  LucasRafaelBrunoJonasVictor
//
//  Created by Bruno Alves Moreira on 27/08/22.
//

import UIKit
import MapKit

class CriacaoFormViewController: UIViewController {
    @IBOutlet weak var textFieldProblemName: UITextField!
    @IBOutlet weak var textFieldRecordDate: UITextField!
    @IBOutlet weak var textViewProblemDescription: UITextView!
    @IBOutlet weak var mapViewLocation: MKMapView!
    @IBOutlet weak var buttonSave: UIButton!
    lazy var locationMananger = CLLocationManager()
    
    var problem: Problem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let problem = problem {
            textFieldProblemName.text = problem.name
            textFieldRecordDate.text = problem.date
            textViewProblemDescription.text = problem.detailing
//            mapViewLocation.annotations = problem.localization
            
            title = "Atualização de problema"
            buttonSave.setTitle("Atualizar", for: .normal)
        }
    }

    @IBAction func save(_ sender: UIButton) {
        if problem == nil {
            problem = Problem(context: context)
        }
        problem?.name = textFieldProblemName.text
        problem?.date = textFieldRecordDate.text
        problem?.detailing = textViewProblemDescription.text
//        problem?.localization =
        
        do {
            try context.save()
            navigationController?.popViewController(animated: true)
        } catch {
            print(error)
        }
    }
}
