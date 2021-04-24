//
//  peopleListTableViewController.swift
//  Telegram
//
//  Created by 翁燮羽 on 2021/4/21.
//

import UIKit

class peopleListTableViewController: UITableViewController {

    //讀人員名單資料
    //list 1 = 最近有上限 0 = 好久沒上
    //image 1 = 男 0 ＝ 女
    var peoples = [
        Peoples(name: "鄭先生", listNumber: 1, imageNumber: 1),
        Peoples(name: "大Ｊ", listNumber: 1, imageNumber: 1),
        Peoples(name: "啊涵", listNumber: 1, imageNumber: 0),
        Peoples(name: "北港溪沙巴度假村", listNumber: 0, imageNumber: 1),
        Peoples(name: "香蕉", listNumber: 0, imageNumber: 1),
        Peoples(name: "Janie", listNumber: 0, imageNumber: 0),
        Peoples(name: "怡玲", listNumber: 1, imageNumber: 0),
        Peoples(name: "瑞妤", listNumber: 0, imageNumber: 0),
        Peoples(name: "Lan chee", listNumber: 1, imageNumber: 1),
        Peoples(name: "Lin Pei", listNumber: 1, imageNumber: 1),
        Peoples(name: "寶島-張智凱", listNumber: 1, imageNumber: 1),
        Peoples(name: "王力宏", listNumber: 0, imageNumber: 1),
        Peoples(name: "周杰倫", listNumber: 1, imageNumber: 1),
        Peoples(name: "五月天-阿信", listNumber: 1, imageNumber: 1),
        Peoples(name: "鄧紫棋", listNumber: 0, imageNumber: 0),
        Peoples(name: "蔡依玲", listNumber: 1, imageNumber: 0),
        Peoples(name: "曹啟泰", listNumber: 0, imageNumber: 1),
        Peoples(name: "張忠謀", listNumber: 0, imageNumber: 1),
        Peoples(name: "嚴長壽", listNumber: 1, imageNumber: 1)
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peoples.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "show", for: indexPath)
        let people = peoples[indexPath.row]
        let choosePeopleListNumber = peoples[indexPath.row].listNumber
        let choosePeopleImageNumber = peoples[indexPath.row].imageNumber
        //狀態顯示
        switch choosePeopleListNumber {
        case 0:
            cell.detailTextLabel?.text = "好久沒上線"
        case 1:
            cell.detailTextLabel?.text = "最後上線於不久前"
        default:
            break
        }
        //圖片顯示
        switch choosePeopleImageNumber {
        case 0:
            cell.imageView?.image = UIImage(named: "girl")
        case 1:
            cell.imageView?.image = UIImage(named: "boy")
        default:
            break
        }
        cell.textLabel?.text = people.name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
