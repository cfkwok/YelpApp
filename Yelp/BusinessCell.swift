//
//  BusinessCell.swift
//  Yelp
//
//  Created by Chun Kwok on 1/26/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    @IBOutlet weak var thImageView: UIImageView!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thImageView.setImageWithURL(business.imageURL!)
            ratingImageView.setImageWithURL(business.ratingImageURL!)
            addressLabel.text = business.address
            distanceLabel.text = business.distance
            categoryLabel.text = business.categories
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thImageView.layer.cornerRadius = 3
        thImageView.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
