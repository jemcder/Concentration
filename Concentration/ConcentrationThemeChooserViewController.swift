//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by John McDermott on 5/5/18.
//  Copyright © 2018 John McDermott. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {


    // MARK: - Navigation


    let themes = [
        "Sports":"⚽️🏀🏈⚾️🎾🏐🏉🎱🏓⛷🎳⛳️",
        "Faces":"😀😂😎😩😰😴🙄🤔😘😷",
        "Animals":"🐶🐔🦊🐼🙈🐪🐓🐋🐙🦄🐵"
    ]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
}
