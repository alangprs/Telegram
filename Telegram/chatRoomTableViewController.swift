//
//  chatRoomTableViewController.swift
//  Telegram
//
//  Created by 翁燮羽 on 2021/4/21.
//

import UIKit

class chatRoomTableViewController: UITableViewController {

    var chatrooms = [Chatroom]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //自定義要顯示資料
         chatrooms = [
            Chatroom(roomName: "前進ios工程師討論區", peopleName: "彼得潘", chatList: "水瓶座當工程師機率+30%", chatNumber: 30, time01: 07, time02: 18),
            Chatroom(roomName: "Swift線上讀書會", peopleName: "叮叮", chatList: "instancetype 不是一個實際的 type", chatNumber: 103, time01: 05, time02: 50),
            Chatroom(roomName: "疾管家", peopleName: "疾管家", chatList: "今日境內感染人數：0，境外移入感染人數:0", chatNumber: 306, time01: 10, time02: 00),
            Chatroom(roomName: "97華導第一期群組", peopleName: "Johnny", chatList: "請各位同學記得要去換導遊證唷", chatNumber: 170, time01: 11, time02: 03),
            Chatroom(roomName: "97華領第三期群組", peopleName: "小蘋果", chatList: "一年多了，各位同學們都還好嗎？需要短期打工的可以來找我", chatNumber: 174, time01: 12, time02: 04),
            Chatroom(roomName: "蔡依玲", peopleName: "蔡依玲", chatList: "will,晚點找你女朋友一起唱歌？我教你唱泡沫不破音", chatNumber: 1, time01: 03, time02: 55),
            Chatroom(roomName: "周杰倫", peopleName: "我", chatList: "ㄟ杰倫，等下一起打球？晚上去找紫琪唱歌？", chatNumber: 17, time01: 03, time02: 57),
            Chatroom(roomName: "嚴長壽", peopleName: "嚴長壽", chatList: "程式學好，記得來台東給我看一下，我有事情要找你做", chatNumber: 11, time01: 10, time02: 49)
            ]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    //設定幾個section
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    //設定有幾個cell
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return chatrooms.count
    }

    //設定cell顯示內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(chatTableViewCell.self)", for: indexPath) as? chatTableViewCell else { return UITableViewCell()}
        let chat = chatrooms[indexPath.row]
        cell.chatImageView.image = UIImage(named: "黑色")
        cell.chatList[0].text = chat.roomName
        cell.chatList[1].text = chat.peopleName
        cell.chatList[2].text = chat.chatList
        cell.chatList[3].text = "\(chat.time01):\(chat.time02)"
        cell.chatList[4].text = "\(chat.chatNumber)"
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
