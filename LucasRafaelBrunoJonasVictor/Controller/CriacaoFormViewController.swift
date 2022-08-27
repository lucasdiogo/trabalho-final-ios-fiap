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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
