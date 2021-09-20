//
//  MovieSuperheroViewController.swift
//  FlixMovieApp
//
//  Created by Adriel Murray on 9/17/21.
//

import UIKit
import AlamofireImage

class MovieSuperheroViewController: UIViewController {

    
    @IBOutlet weak var BackgroundPoster: UIImageView!
    
    
    @IBOutlet weak var SmallPoster: UIImageView!
    
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    
    @IBOutlet weak var ParagraphLabel: UILabel!
    
    @IBOutlet weak var ReleasedateLabel: UILabel!
    
    var movie: [String:Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TitleLabel.text = movie["title"] as? String
        TitleLabel.sizeToFit()
        ParagraphLabel.text = movie["overview"] as? String
        ParagraphLabel.sizeToFit()
        ReleasedateLabel.text = movie["release_date"] as? String
        ReleasedateLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        SmallPoster.af.setImage(withURL: posterURL!)
        
        let BackgroundPath = movie["backdrop_path"] as! String
        let BackgroundURL = URL(string: "https://image.tmdb.org/t/p/w780" + BackgroundPath)
        
        BackgroundPoster.af.setImage(withURL: BackgroundURL!)
        
        // Do any additional setup after loading the view.
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
