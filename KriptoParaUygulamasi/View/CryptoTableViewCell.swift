//
//  CryptoTableViewCell.swift
//  KriptoParaUygulamasi
//
//  Created by Seyit Murat Kaya on 21.10.2023.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {
    
    public var currency: String? {
        didSet {
            if let currency {
                currencyLabel.text = currency
            }
        }
    }
    
    public var price: String? {
        didSet {
            if let price {
                priceLabel.text = price
            }
        }
    }
        
    private let currencyLabel: UILabel = {
        let currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        return currencyLabel
    }()
    
    private let priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        return priceLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
        self.contentView.addSubview(currencyLabel)
        self.contentView.addSubview(priceLabel)
        
        let marginGuide = contentView.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            currencyLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor),
            currencyLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor),
            currencyLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor),
            
            priceLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor),
        ])
    }

}
