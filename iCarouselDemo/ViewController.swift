//
//  ViewController.swift
//  iCarouselDemo
//
//  Created by Kondiram Sonawane on 3/21/18.
//  Copyright © 2018 Kondiram Sonawane. All rights reserved.
//

import UIKit
class ViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {
    var items: [String] = []
   
    @IBOutlet var carousel: iCarousel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
       items.append("2")
        items.append("2")
        items.append("2")
         items.append("1")
         items.append("2")
         items.append("3")
         items.append("4")
         items.append("5")
         items.append("6")
        items.append("1")
        items.append("2")
        items.append("3")
        items.append("4")
        items.append("5")
        items.append("6")
        items.append("1")
        items.append("2")
        items.append("2")
        items.append("2")
        items.append("2")
        items.append("2")
        items.append("3")
        items.append("4")
        items.append("5")
        items.append("6")
        items.append("1")
        items.append("2")
        items.append("3")
        items.append("4")
        items.append("5")
        items.append("6")
        items.append("1")
        items.append("2")
        items.append("3")
        items.append("4")
        items.append("5")
        items.append("6")
        items.append("1")
        items.append("2")
        items.append("3")
        items.append("4")
        items.append("5")
        items.append("6")
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isToolbarHidden = true
        self.navigationController?.navigationBar.isHidden = true
        carousel.type = .linear
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return items.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        
        
        
        var itemView: UIView
        
        //reuse view if available, otherwise create a new view
      
            //don't do anything specific to the index within
            //this `if ... else` statement because the view will be
            //recycled and used with other index values later
            itemView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width  , height: self.view.frame.size.height))
     
        let customView = CustomView().loadNib() as! CustomView
        customView.frame = (itemView.frame)
        customView.imageView.image = UIImage(named: items[index])
        customView.labl.text =  "\(index) Page index"
        itemView.addSubview(customView)
        return itemView
    }
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if (option == .spacing) {
            return value
        }
        return value
    }
    
}

extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
