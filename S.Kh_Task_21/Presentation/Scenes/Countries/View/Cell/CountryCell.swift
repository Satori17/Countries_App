//
//  CountryCell.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import UIKit

class CountryCell: UITableViewCell {

    //MARK: - IBOutlets
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    //MARK: - Vars
    let identifier = "CountryCell"
    
    //MARK: - Cell Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //MARK: - Methods
    func configure(_ country: CountryViewModel) {
        countryNameLabel.text = country.name
    }
    
}
