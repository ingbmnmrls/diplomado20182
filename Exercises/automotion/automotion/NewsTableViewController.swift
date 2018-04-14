//
//  NewsTableViewController.swift
//  automotion
//
//  Created by Benjamin Morales on 16/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var news: [News] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        loadDataNews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return news.count
    }
    
    private func loadDataNews() {
        let news1 = News(imgNews: "me", titleNews: "Nuevo Framework JS", descriptionNews: "Se lanza uno más, para llegar a ser 100k")
        let news2 = News(imgNews: "news", titleNews: "Nueva API Android", descriptionNews: "Se lanza un nuevo API, la API 28")
        let news3 = News(imgNews: "more", titleNews: "Nueva API iOS", descriptionNews: "Se lanza una nueva API, iOS 12")
        let news4 = News(imgNews: "me", titleNews: "Nuevo C", descriptionNews: "Deniss Ritchie revivió y va con todo")
        
        news.append(news1)
        news.append(news2)
        news.append(news3)
        news.append(news4)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as? NewsTableViewCell else {
            fatalError("The dequeued cell is not an instance of NewsTableViewCell.")
        }

        let newsItem = news[indexPath.row]
        
        cell.ivNews.image = UIImage(named: newsItem.imgNews)
        cell.lblTitleNews.text = newsItem.titleNews
        cell.lblDescriptionNews.text = newsItem.descriptionNews
        // Configure the cell...

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
