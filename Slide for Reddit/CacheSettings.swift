//
//  CacheSettings.swift
//  Slide for Reddit
//
//  Created by Carlos Crane on 5/22/18.
//  Copyright © 2018 Haptic Apps. All rights reserved.
//

import UIKit

class CacheSettings: UITableViewController {

    var subs: [String] = []
    var autoCache: UITableViewCell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "auto")
    var cacheContent: UITableViewCell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cache")
    var offlineScreen: UITableViewCell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "offline")

    var autoCacheSwitch = UISwitch()
    var cacheContentSwitch = UISwitch()
    var offlineScreenSwitch = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(SubredditCellView.classForCoder(), forCellReuseIdentifier: "sub")
        subs.append(contentsOf: Subscriptions.subreddits)
        self.subs = self.subs.sorted() {
            $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending
        }
        tableView.reloadData()


        autoCacheSwitch = UISwitch()
        autoCacheSwitch.isOn = SettingValues.viewType
        autoCacheSwitch.addTarget(self, action: #selector(CacheSettings.switchIsChanged(_:)), for: UIControlEvents.valueChanged)
        self.autoCache.textLabel?.text = "Cache subreddits automatically"
        self.autoCache.detailTextLabel?.text = "Will run the first time Slide opens in a day"
        self.autoCache.accessoryView = autoCacheSwitch
        self.autoCache.backgroundColor = ColorUtil.foregroundColor
        self.autoCache.textLabel?.textColor = ColorUtil.fontColor
        self.autoCache.detailTextLabel?.textColor = ColorUtil.fontColor

        cacheContentSwitch = UISwitch()
        cacheContentSwitch.isOn = SettingValues.hiddenFAB
        cacheContentSwitch.addTarget(self, action: #selector(CacheSettings.switchIsChanged(_:)), for: UIControlEvents.valueChanged)
        self.cacheContent.textLabel?.text = "Cache content"
        self.cacheContent.detailTextLabel?.text = "Other than images (gifs, albums, etc)"
        self.cacheContent.accessoryView = cacheContentSwitch
        self.cacheContent.backgroundColor = ColorUtil.foregroundColor
        self.cacheContent.textLabel?.textColor = ColorUtil.fontColor
        self.cacheContent.detailTextLabel?.textColor = ColorUtil.fontColor

        offlineScreenSwitch = UISwitch()
        offlineScreenSwitch.isOn = SettingValues.hiddenFAB
        offlineScreenSwitch.addTarget(self, action: #selector(CacheSettings.switchIsChanged(_:)), for: UIControlEvents.valueChanged)
        self.offlineScreen.textLabel?.text = "Open offline content screen"
        self.offlineScreen.detailTextLabel?.text = "Automatically display when no internet is detected"
        self.offlineScreen.accessoryView = offlineScreenSwitch
        self.offlineScreen.backgroundColor = ColorUtil.foregroundColor
        self.offlineScreen.textLabel?.textColor = ColorUtil.fontColor
        self.offlineScreen.detailTextLabel?.textColor = ColorUtil.fontColor

        self.tableView.tableFooterView = UIView()
    }

    var delete = UIButton()

    public static var changed = false

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 80 : 60
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        save(nil)
    }


    func save(_ selector: AnyObject?) {
        /* todo this
        SubredditReorderViewController.changed = true
        Subscriptions.set(name: AccountController.currentName, subs: subs, completion: {
            self.dismiss(animated: true, completion: nil)
        })*/
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label: UILabel = UILabel()
        label.textColor = ColorUtil.fontColor
        label.font = FontGenerator.boldFontOfSize(size: 20, submission: true)
        let toReturn = label.withPadding(padding: UIEdgeInsets.init(top: 0, left: 12, bottom: 0, right: 0))
        toReturn.backgroundColor = ColorUtil.backgroundColor

        switch (section) {
        case 0: label.text = "Caching settings"
            break
        case 1: label.text = "Subreddits to Cache"
            break
        default: label.text = ""
            break
        }
        return toReturn
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(70)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: – Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 3 : subs.count
    }


    func switchIsChanged(_ changed: UISwitch) {
       /* Todo this if (changed == viewTypeSwitch) {
            SubredditReorderViewController.changed = true
            SettingValues.viewType = changed.isOn
            UserDefaults.standard.set(changed.isOn, forKey: SettingValues.pref_viewType)
        } else if (changed == hideFABSwitch) {
            SettingValues.hiddenFAB = changed.isOn
            UserDefaults.standard.set(changed.isOn, forKey: SettingValues.pref_hiddenFAB)
        }
        UserDefaults.standard.synchronize()*/
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            if(indexPath.row == 0){
                return autoCache
            } else if(indexPath.row == 1) {
                return cacheContent
            } else {
                return offlineScreen
            }
        } else {
            let thing = subs[indexPath.row]
            var cell: SubredditCellView?
            let c = tableView.dequeueReusableCell(withIdentifier: "sub", for: indexPath) as! SubredditCellView
            c.setSubreddit(subreddit: thing, nav: nil)
            cell = c
            cell?.backgroundColor = ColorUtil.foregroundColor
            c.accessoryView = UISwitch()
            return cell!
        }
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barTintColor = ColorUtil.getColorForSub(sub: "")
        navigationController?.navigationBar.tintColor = UIColor.white
        self.title = "Manage subreddit caching"
    }

}
