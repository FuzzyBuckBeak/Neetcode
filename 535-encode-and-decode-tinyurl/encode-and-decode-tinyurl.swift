class Codec {
    // Encodes a URL to a shortened URL.
    var short_to_long: [String: String] = [:]
    func encode(_ longUrl: String) -> String {
        var shortenURL = ""
        repeat {
            shortenURL = urlShortner(longURL: longUrl)
        } while short_to_long[shortenURL] != nil
        short_to_long[shortenURL] = longUrl
        
        return shortenURL
    }
    
    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        guard let value = short_to_long[shortUrl] else { return "Not Found"}
        return value
    }

    private func urlShortner(longURL: String) -> String {
        let value = String(Int.random(in: 1...100))
        return "tiny" + longURL + value
    }
}

/**
 * Your Codec object will be instantiated and called as such:
 * let obj = Codec()
 * val s = obj.encode(longUrl)
 * let ans = obj.decode(s)
*/