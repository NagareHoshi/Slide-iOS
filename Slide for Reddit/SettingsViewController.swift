//
//  SettingsViewController.swift
//  Slide for Reddit
//
//  Created by Carlos Crane on 1/10/17.
//  Copyright © 2017 Haptic Apps. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    var general: UITableViewCell = UITableViewCell()
    var manageSubs: UITableViewCell = UITableViewCell()
    var mainTheme: UITableViewCell = UITableViewCell()
    var postLayout: UITableViewCell = UITableViewCell()
    var subThemes: UITableViewCell = UITableViewCell()
    var font: UITableViewCell = UITableViewCell()
    var comments: UITableViewCell = UITableViewCell()
    var linkHandling: UITableViewCell = UITableViewCell()
    var history: UITableViewCell = UITableViewCell()
    var dataSaving: UITableViewCell = UITableViewCell()
    var filters: UITableViewCell = UITableViewCell()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barTintColor = ColorUtil.getColorForSub(sub: "")
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    override func loadView() {
        super.loadView()
        
        self.view.backgroundColor = ColorUtil.backgroundColor
        // set the title
        self.title = "Settings"
        
        self.general.textLabel?.text = "General"
        self.general.accessoryType = .disclosureIndicator
        self.general.backgroundColor = ColorUtil.foregroundColor
        self.general.textLabel?.textColor = ColorUtil.fontColor
        self.general.imageView?.image = UIImage.init(named: "settings")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.general.imageView?.tintColor = ColorUtil.fontColor
        
        self.manageSubs.textLabel?.text = "Manage your subreddits"
        self.manageSubs.accessoryType = .disclosureIndicator
        self.manageSubs.backgroundColor = ColorUtil.foregroundColor
        self.manageSubs.textLabel?.textColor = ColorUtil.fontColor
        self.manageSubs.imageView?.image = UIImage.init(named: "subs")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.manageSubs.imageView?.tintColor = ColorUtil.fontColor

        self.mainTheme.textLabel?.text = "Main theme"
        self.mainTheme.accessoryType = .disclosureIndicator
        self.mainTheme.backgroundColor = ColorUtil.foregroundColor
        self.mainTheme.textLabel?.textColor = ColorUtil.fontColor
        self.mainTheme.imageView?.image = UIImage.init(named: "colors")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.mainTheme.imageView?.tintColor = ColorUtil.fontColor

        self.postLayout.textLabel?.text = "Post layout"
        self.postLayout.accessoryType = .disclosureIndicator
        self.postLayout.backgroundColor = ColorUtil.foregroundColor
        self.postLayout.textLabel?.textColor = ColorUtil.fontColor
        self.postLayout.imageView?.image = UIImage.init(named: "layout")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.postLayout.imageView?.tintColor = ColorUtil.fontColor

        self.subThemes.textLabel?.text = "Subreddit themes"
        self.subThemes.accessoryType = .disclosureIndicator
        self.subThemes.backgroundColor = ColorUtil.foregroundColor
        self.subThemes.textLabel?.textColor = ColorUtil.fontColor
        self.subThemes.imageView?.image = UIImage.init(named: "subs")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.subThemes.imageView?.tintColor = ColorUtil.fontColor

        self.font.textLabel?.text = "Font"
        self.font.accessoryType = .disclosureIndicator
        self.font.backgroundColor = ColorUtil.foregroundColor
        self.font.textLabel?.textColor = ColorUtil.fontColor
        self.font.imageView?.image = UIImage.init(named: "size")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.font.imageView?.tintColor = ColorUtil.fontColor

        self.comments.textLabel?.text = "Comments"
        self.comments.accessoryType = .disclosureIndicator
        self.comments.backgroundColor = ColorUtil.foregroundColor
        self.comments.textLabel?.textColor = ColorUtil.fontColor
        self.comments.imageView?.image = UIImage.init(named: "comments")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.comments.imageView?.tintColor = ColorUtil.fontColor

        self.linkHandling.textLabel?.text = "Link handling"
        self.linkHandling.accessoryType = .disclosureIndicator
        self.linkHandling.backgroundColor = ColorUtil.foregroundColor
        self.linkHandling.textLabel?.textColor = ColorUtil.fontColor
        self.linkHandling.imageView?.image = UIImage.init(named: "link")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.linkHandling.imageView?.tintColor = ColorUtil.fontColor

        self.history.textLabel?.text = "History"
        self.history.accessoryType = .disclosureIndicator
        self.history.backgroundColor = ColorUtil.foregroundColor
        self.history.textLabel?.textColor = ColorUtil.fontColor
        self.history.imageView?.image = UIImage.init(named: "history")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.history.imageView?.tintColor = ColorUtil.fontColor

        self.dataSaving.textLabel?.text = "Data saving"
        self.dataSaving.accessoryType = .disclosureIndicator
        self.dataSaving.backgroundColor = ColorUtil.foregroundColor
        self.dataSaving.textLabel?.textColor = ColorUtil.fontColor
        self.dataSaving.imageView?.image = UIImage.init(named: "data")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.dataSaving.imageView?.tintColor = ColorUtil.fontColor

        self.filters.textLabel?.text = "Filters"
        self.filters.accessoryType = .disclosureIndicator
        self.filters.backgroundColor = ColorUtil.foregroundColor
        self.filters.textLabel?.textColor = ColorUtil.fontColor
        self.filters.imageView?.image = UIImage.init(named: "filter")?.withRenderingMode(.alwaysTemplate).imageResize(sizeChange: CGSize.init(width: 25, height: 25))
        self.filters.imageView?.tintColor = ColorUtil.fontColor
        
}
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 60
    }
    

    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
             }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch(indexPath.section) {
        case 0:
            switch(indexPath.row) {
            case 0: return self.general
            case 1: return self.manageSubs
            default: fatalError("Unknown row in section 0")
            }
        case 1:
            switch(indexPath.row) {
            case 0: return self.mainTheme
            case 1: return self.postLayout
            case 2: return self.subThemes
            case 3: return self.font
            case 4: return self.comments
            default: fatalError("Unknown row in section 1")
            }
        case 2:
            switch(indexPath.row){
            case 0: return self.linkHandling
            case 1: return self.history
            case 2: return self.dataSaving
            case 3: return self.filters
            default: fatalError("Unknown row in section 2")
            }
        default: fatalError("Unknown section")
        }

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.section == 0 && indexPath.row == 1){
            show(SubredditReorderViewController(), sender: self)
        }
    }
    /* maybe future
 override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cornerRadius : CGFloat = 12.0
        cell.backgroundColor = UIColor.clear
        var layer: CAShapeLayer = CAShapeLayer()
        var pathRef:CGMutablePath = CGMutablePath()
        var bounds: CGRect = cell.bounds.insetBy(dx: 25, dy: 0)
        var addLine: Bool = false
        
        if (indexPath.row == 0 && indexPath.row == tableView.numberOfRows(inSection: indexPath.section)-1) {
            pathRef.__addRoundedRect(transform: nil, rect: bounds, cornerWidth: cornerRadius, cornerHeight: cornerRadius)
        } else if (indexPath.row == 0) {
            pathRef.move(to: CGPoint.init(x: bounds.minX, y: bounds.maxY))
            pathRef.addArc(center: CGPoint.init(x: bounds.minX, y: bounds.maxY), radius: bounds.midX, startAngle: bounds.minY, endAngle: cornerRadius, clockwise: false)
            pathRef.addArc(center: CGPoint.init(x: bounds.maxX, y: bounds.minY), radius: bounds.maxX, startAngle: bounds.midY, endAngle: cornerRadius, clockwise: false)
            pathRef.addLine(to: CGPoint.init(x: bounds.maxX, y: bounds.maxY))
            addLine = true
        } else if (indexPath.row == tableView.numberOfRows(inSection: indexPath.section)-1) {
            pathRef.move(to: CGPoint.init(x: bounds.minX, y: bounds.maxY))
            pathRef.addArc(center: CGPoint.init(x: bounds.minX, y: bounds.maxY), radius: bounds.midX, startAngle: bounds.maxY, endAngle: cornerRadius, clockwise: false)
            pathRef.addArc(center: CGPoint.init(x: bounds.maxX, y: bounds.maxY), radius: bounds.maxX, startAngle: bounds.midY, endAngle: cornerRadius, clockwise: false)
            pathRef.addLine(to: CGPoint.init(x: bounds.maxX, y: bounds.minY))
        } else {
            pathRef.addRect(bounds)
            addLine = true
        }
        
        layer.path = pathRef
        layer.fillColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8).cgColor
        
        if (addLine == true) {
            var lineLayer: CALayer = CALayer()
            var lineHeight: CGFloat = (1.0 / UIScreen.main.scale)
            lineLayer.frame = CGRect.init(x: bounds.minX+10, y:  bounds.size.height-lineHeight, width: bounds.size.width-10, height: lineHeight)
            lineLayer.backgroundColor = tableView.separatorColor?.cgColor
            layer.addSublayer(lineLayer)
        }
        var testView: UIView = UIView(frame: bounds)
        testView.layer.insertSublayer(layer, at: 0)
        testView.backgroundColor = UIColor.clear
        cell.backgroundView = testView

    }*/
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch(section) {
        case 0: return "General"
        case 1: return "Appearance"
        case 2: return "Content"
        default: fatalError("Unknown section")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 2    // section 0 has 2 rows
        case 1: return 5    // section 1 has 1 row
        case 2: return 4
        default: fatalError("Unknown number of sections")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}