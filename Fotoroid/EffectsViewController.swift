//
//  EffectsViewController.swift
//  Fotoroid
//
//  Created by Rodrigo Dias on 09/09/21.
//

import UIKit

class EffectsViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viLoading: UIView!
    @IBOutlet weak var ivPhoto: UIImageView!
    
    var image: UIImage!
    lazy var filterManager: FilterManager = {
        let filterManager = FilterManager(image: image)
        return filterManager
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        ivPhoto.image = filterManager.applyFilter(type: FilterType(rawValue: 5)!)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
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

