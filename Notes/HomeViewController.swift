//
//  HomeViewController.swift
//  Notes
//
//  Created by Prerana on 01/11/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var array1 = ["India", "Germany", "Canada", "Shrilanka", "China", "USA", "Italy"]
    var array2 = ["India is a land of various cultures and heritage. It is the seventh-largest country by area and the second-most populous country globally. The peacock is India's national bird, and the Bengal tiger is the country's national animal. The national song is named Vande Matram and is written by Bankimchandra Chatterji.", "Germany is the seventh-largest country in Europe; bordering Denmark to the north, Poland and the Czech Republic to the east, Austria to the southeast, and Switzerland to the south-southwest. France, Luxembourg and Belgium are situated to the west, with the Netherlands to the northwest.", "Canada is a vast and rugged land. From north to south it spans more than half the Northern Hemisphere. From east to west it stretches almost 4,700 miles (7,560 kilometers) across six time zones. It is the second largest country in the world, but it has only one-half of one percent of the world's population.", "Sri Lanka is an island country located off the southern coast of India. Sri Lanka is surrounded by the Indian Ocean, Gulf of Mannar, the Palk Strait, and lies in the vicinity of India and the Maldives. The geography of Sri Lanka includes coastal plains in the north and hills and mountains in the interior.", "Stretching 3,100 miles (5,000 kilometers) from east to west and 3,400 miles (5,500 kilometers) from north to south, China is a large country with widely varying landscapes. Its territory includes mountains, high plateaus, sandy deserts, and dense forests. One-third of China's land area is made up of mountains.", "The United States of America is the world's third largest country in size and nearly the third largest in terms of population. Located in North America, the country is bordered on the west by the Pacific Ocean and to the east by the Atlantic Ocean. Along the northern border is Canada and the southern border is Mexico.", "Italy is a boot-shaped peninsula that juts out of southern Europe into the Adriatic Sea, Tyrrhenian Sea, Mediterranean Sea, and other waters. Its location has played an important role in its history. The sea surrounds Italy, and mountains crisscross the interior, dividing it into regions."]
    var array3:[UIImage] = [UIImage(named: "indiaFlag")!, UIImage(named: "germanyFlag")!, UIImage(named: "canadaFlag")!, UIImage(named:"shrilankaFlag")!, UIImage(named:"chinaFlag")!, UIImage(named:"usaFlag")!, UIImage(named:"italyFlag")!]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.country.text = array1[indexPath.row]
        cell.countryDetail.text = array2[indexPath.row]
        cell.flag.image = array3[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.lbl1 = array1[indexPath.row]
        detail.lbl2 = array2[indexPath.row]
        detail.img = array3[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    @IBAction func addButton(_ sender: Any) {
    
    }
    
    
}
