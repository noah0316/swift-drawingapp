//
//  AttributesControlView.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/12.
//

import UIKit

final class AttributesControlView: UIView {

    // MARK: - UI properties
    
    @UseAutoLayout private var backgroundColorControlBox: UIStackView = UIStackView()
    @UseAutoLayout private var backgroundColorControlTitle: UILabel = UILabel()
    @UseAutoLayout private var backgroundColorControl: UIButton = UIButton()
    @UseAutoLayout private var alphaControlBox: UIStackView = UIStackView()
    @UseAutoLayout private var alphaControlTitle: UILabel = UILabel()
    @UseAutoLayout private var alphaControl: UISlider = UISlider()
        
    override func updateConstraints() {
        super.updateConstraints()
        self.setupUIAtrributes()
        self.setupLayoutConstraints()
    }
    
    private func setupUIAtrributes() {
        self.setupAttributesControlViewUIAttributes()
        self.setupBackgroundColorControlBoxUIAttributes()
        self.setupBackgroundColorControlTitleUIAttributes()
        self.setupBackgroundColorControlUIAttributes()
        self.setupAlphaControlBoxUIAttributes()
        self.setupAlphaControlTitleUIAttributes()
        self.setupAlphaControlUIAttributes()
    }
    
    private func setupLayoutConstraints() {
        self.setupBackgroundColorControlBoxLayoutConstraints()
        self.setupAlphaControlBoxLayoutConstraints()
    }
}

// MARK: - Setup UIAttributes

extension AttributesControlView {
    private func setupAttributesControlViewUIAttributes() {
        self.backgroundColor = .systemGray6
        self.layer.borderWidth = SizeLiteral.Layer.BorderWidth.thin
        self.layer.borderColor = UIColor.systemGray4.cgColor
    }
    
    private func setupBackgroundColorControlBoxUIAttributes() {
        self.backgroundColorControlBox.axis = .vertical
        self.backgroundColorControlBox.alignment = .fill
        self.backgroundColorControlBox.distribution = .fill
        self.backgroundColorControlBox.spacing = 15
    }
    
    private func setupBackgroundColorControlTitleUIAttributes() {
        self.backgroundColorControlTitle.text = StringLiteral.BackgroundColorControl.title
        self.backgroundColorControlTitle.font = .boldSystemFont(ofSize: SizeLiteral.Font.regular)
        self.backgroundColorControlTitle.textColor = .systemGray
    }
    
    private func setupBackgroundColorControlUIAttributes() {
        var backgroundColorControlAttributedTitle = AttributedString(stringLiteral: StringLiteral.BackgroundColorControl.description)
        backgroundColorControlAttributedTitle.font = .systemFont(ofSize: SizeLiteral.Font.alphaControlDescription1, weight: .bold)
        
        var backgroundColorControlConfiguration = UIButton.Configuration.plain()
        backgroundColorControlConfiguration.attributedTitle = backgroundColorControlAttributedTitle
        backgroundColorControlConfiguration.baseForegroundColor = .systemGray
        backgroundColorControlConfiguration.buttonSize = .large
        
        self.backgroundColorControl.configuration = backgroundColorControlConfiguration
        self.backgroundColorControl.layer.borderWidth = SizeLiteral.Layer.BorderWidth.thin
        self.backgroundColorControl.layer.cornerRadius = SizeLiteral.Layer.CornerRadius.regular
        self.backgroundColorControl.layer.borderColor = UIColor.systemGray4.cgColor
    }
    
    private func setupAlphaControlBoxUIAttributes() {
        self.alphaControlBox.axis = .vertical
        self.alphaControlBox.alignment = .fill
        self.alphaControlBox.distribution = .fill
        self.alphaControlBox.spacing = 15
    }
    
    private func setupAlphaControlTitleUIAttributes() {
        self.alphaControlTitle.text = StringLiteral.AlphaControl.title
        self.alphaControlTitle.font = .boldSystemFont(ofSize: SizeLiteral.Font.regular)
        self.alphaControlTitle.textColor = .systemGray
    }
    
    private func setupAlphaControlUIAttributes() {
        self.alphaControl.tintColor = .darkGray
        self.alphaControl.thumbTintColor = .darkGray
    }
}

// MARK: - Setup Layout Constraints

extension AttributesControlView {
    private func setupBackgroundColorControlBoxLayoutConstraints() {
        self.addSubview(self.backgroundColorControlBox)
        [self.backgroundColorControlTitle, self.backgroundColorControl].forEach {
            self.backgroundColorControlBox.addArrangedSubview($0)
        }
        
        NSLayoutConstraint.activate(
            [
                self.backgroundColorControlBox.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
                self.backgroundColorControlBox.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                self.backgroundColorControlBox.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
            ]
        )
    }
    
    private func setupAlphaControlBoxLayoutConstraints() {
        self.addSubview(self.alphaControlBox)
        [self.alphaControlTitle, self.alphaControl].forEach {
            self.alphaControlBox.addArrangedSubview($0)
        }
        
        NSLayoutConstraint.activate(
            [
                self.alphaControlBox.topAnchor.constraint(equalTo: self.backgroundColorControlBox.bottomAnchor, constant: 30),
                self.alphaControlBox.leadingAnchor.constraint(equalTo: self.backgroundColorControlBox.leadingAnchor),
                self.alphaControlBox.trailingAnchor.constraint(equalTo: self.backgroundColorControlBox.trailingAnchor),
            ]
        )
    }
}
