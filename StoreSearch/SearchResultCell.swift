//
//  SearchResultCell.swift
//  StoreSearch
//
//  Created by Austin Sparks on 2/20/24.
//

import UIKit

class SearchResultCell: UITableViewCell {
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var artistNameLabel: UILabel!
  @IBOutlet var artworkImageView: UIImageView!

  var downloadTask: URLSessionDownloadTask?

  override func awakeFromNib() {
    super.awakeFromNib()
    let selectedView = UIView(frame: CGRect.zero)
    selectedView.backgroundColor = UIColor(named: "SearchBar")?.withAlphaComponent(0.5)
    selectedBackgroundView = selectedView
  }

  override func prepareForReuse() {
    super.prepareForReuse()
    downloadTask?.cancel()
    downloadTask = nil
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    // Configure the view for the selected state
  }

  // MARK: - Helper Methods
  func configure(for result: SearchResult) {
    nameLabel.text = result.name

    if result.artist.isEmpty {
      artistNameLabel.text = NSLocalizedString("Unknown", comment: "Artist name: Unknown")
    } else {
      artistNameLabel.text = String(
        format: NSLocalizedString(
          "ARTIST_NAME_LABEL_FORMAT",
          comment: "Format for artist name"),
        result.artist,
        result.type)
    }
    artworkImageView.image = UIImage(systemName: "square")
    if let smallURL = URL(string: result.imageSmall) {
      downloadTask = artworkImageView.loadImage(url: smallURL)
    }
  }
}
