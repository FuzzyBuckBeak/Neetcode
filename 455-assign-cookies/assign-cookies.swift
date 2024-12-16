class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let greed = g.sorted()
        let cookieSize = s.sorted()

        var greedPointer = 0
        var cookiePointer = 0

        while(greedPointer < greed.count && cookiePointer < cookieSize.count) {
            if cookieSize[cookiePointer] >= greed[greedPointer] {
                greedPointer += 1
            }

            cookiePointer += 1
        }

        return greedPointer
    }
}