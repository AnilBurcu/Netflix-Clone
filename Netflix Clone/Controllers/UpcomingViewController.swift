//
//  UpcomingViewController.swift
//  Netflix Clone
//
//  Created by Anıl Bürcü on 5.07.2023.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    private var titles: [Title] = [Title]()
    
    private let upcomingTitle: UITableView = {
        let table = UITableView()
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Upcoming"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(upcomingTitle)
        upcomingTitle.dataSource = self
        upcomingTitle.delegate = self
        
        fetchUpcoming()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        upcomingTitle.frame = view.bounds
    }
    private func fetchUpcoming() {
        APICaller.shared.getUpcomingMovies { result in
            switch result {
            case .success(let titles):
                self.titles = titles
                DispatchQueue.main.async {
                    self.upcomingTitle.reloadData()
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        
        }
    }

}

extension UpcomingViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier,for: indexPath) as? TitleTableViewCell else {
            return UITableViewCell()
        }
        
        let title = titles[indexPath.row]
        cell.configure(with: TitleViewModel(titleName: (title.original_title ?? title.original_name) ?? "hgcg", postURL: title.poster_path ?? "hcg"))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
