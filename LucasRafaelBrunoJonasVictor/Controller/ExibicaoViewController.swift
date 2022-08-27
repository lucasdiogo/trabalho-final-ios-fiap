//
//  ViewController.swift
//  LucasRafaelBrunoJonasVictor
//
//  Created by Lucas Diogo on 23/08/22.
//

import UIKit
import MapKit

class ExibicaoViewController: UIViewController {

    @IBOutlet weak var mapViewLocalization: MKMapView!
    @IBOutlet weak var labelProblemName: UILabel!
    @IBOutlet weak var labelRecordDate: UILabel!
    @IBOutlet weak var textViewProblemDescription: UITextView!
    
    var problem: Problem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? CriacaoFormViewController
        vc?.problem = problem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        labelProblemName.text = problem.name
        labelRecordDate.text = problem.date
        textViewProblemDescription.text = problem.detailing
    }


}
