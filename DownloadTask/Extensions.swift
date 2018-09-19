//
//  Extensions.swift
//  DownloadTask
//
//  Created by Sindhura on 19/09/18.
//  Copyright © 2018 Sindhura. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    open func getDataFromUrl(url: URL) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                return
            }
          if response?.mimeType == "image/jpeg" || response?.mimeType == "image/png", let data = data {
            DispatchQueue.main.async {
                let image = UIImage.init(data: data)
                self.image = image
                return
            }
            }
        }.resume()
    }
}
