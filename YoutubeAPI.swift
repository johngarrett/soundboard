import Foundation

struct YoutubeAPI {
    private static let apiURL = "http://www.youtubeinmp3.com/fetch/?format=JSON&video="
    static func downloadAudio(from videoURL: String = "http://www.youtube.com/watch?v=KMU0tzLwhbE") {
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: nil)
        var request = URLRequest(url: URL(string: "\(apiURL)\(videoURL)")!)
        request.httpMethod = "GET"

        let task = session.dataTask(with: request, completionHandler: { data, response, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            if let response = response as? HTTPURLResponse {
                print("response=\(response)")
                if response.statusCode == 200 {
                    if data != nil {
                        do {
                            let responseJSON =  try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! NSDictionary
                            let urlString = responseJSON["link"] as! String
                            let directDownloadURL = URL(string: urlString)

                            // Call your method loadFileAsync
                            //YourClass.loadFileAsync(directDownloadURL!, completion: { (path, error) -> Void in
                              //  print(path)
                            //})

                        }
                        catch let JSONError as NSError {
                            print("\(JSONError)")
                        }
                        catch {
                            print("unknown error in JSON Parsing");
                        }
                    }
                }
            }
        })
        task.resume()
    }
}
