import Foundation

final class FillWithColor {
    
func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
    
    guard areValid(row: row, column: column, for: image) else { return image }
    
        guard image.count > 0, image.first!.count > 0 else { return image }
                
        let oldColor = image[row][column]
        guard oldColor != newColor else { return image }

        var newImage = image
        newImage[row][column] = newColor
                
        let neighbours = [(row + 1, column),
                          (row - 1, column),
                          (row, column - 1),
                          (row, column + 1)]
                
        for (nR, nC) in neighbours {
            guard areValid(row: nR, column: nC, for: image) else { continue }
         
            if image[nR][nC] == oldColor {
                newImage = fillWithColor(newImage, nR, nC, newColor)
            }
        }
                
        return newImage
    }
            
    private func areValid(row: Int, column: Int, for image: [[Int]]) -> Bool {
        return row >= 0 && column >= 0 && row < image.count && column < image.first!.count
    }
}
