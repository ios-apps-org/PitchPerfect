//: ## Classes, Properties and Methods
//: A class is defined just like a struct. Classes use a custom init() method that assigns member variables from the input parameters.
class Movie {
    let title: String
    let director: String
    let releaseYear: Int
    
    init(title: String, director: String, releaseYear: Int) {
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
    }
}
//: Classes can also have methods
class MovieArchive {
    var movies: [Movie]
    
    func filterByYear(year: Int) -> [Movie] {
        var filteredArray = [Movie]()
        for movie in self.movies {
            if movie.releaseYear == year {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
    
    init(movies: [Movie]) {
        self.movies = movies
    }
}

let movie1 = Movie(title: "Bride of Frankenstein", director: "James Whale", releaseYear: 1935)
let movie2 = Movie(title: "The Night Walker", director: "William Castle", releaseYear: 1964)

let archive = MovieArchive(movies: [movie1, movie2])
archive.filterByYear(year: 1935)
archive.movies



// By reference vs value
enum Instrument: String {
    case banjo, fiddle
}

class Musician {
    var instrument: Instrument

    init(instrument: Instrument) {
        self.instrument = instrument
    }
}
let duo = [Musician(instrument: .fiddle), Musician(instrument: .banjo)]

struct MusicianStruct {
    var instrument: Instrument
}
let structDuo = [MusicianStruct(instrument: .fiddle), MusicianStruct(instrument: .banjo)]


func prepareForDuelingBanjos(musician: Musician) {
    musician.instrument = .banjo
}

func prepareForDuelingBanjos(musician: MusicianStruct) {
    var musicianCopy = musician
    musicianCopy.instrument = .banjo
}

let fiddler = duo[0]
prepareForDuelingBanjos(musician: fiddler)
fiddler.instrument

let fiddlerStruct = structDuo[0]
prepareForDuelingBanjos(musician: fiddlerStruct)
fiddlerStruct.instrument


// Inheritance Example:
class Guitar {
    let strings: Int
    let frets: Int

    init(strings: Int, frets: Int) {
        self.strings = strings
        self.frets = frets
    }

    func pluckString() {
        print("twang")
    }
}

class ElectricGuitar: Guitar {
    var volumeLevel: Float = 1.0
    var toneLevel: Float = 1.0
    
    override func pluckString() {
        if volumeLevel > 0.7 {
            print("🎸🎸🎸 DRAOWWW")
        } else if volumeLevel > 0 {
            print("🎸 twang")
        } else { // volumeLevel is 0
            // Guitar's implementation of pluckString()
            super.pluckString()
        }
    }
}


// Polymorphism

var anyGuitar: Guitar = Guitar(strings: 6, frets: 20)
anyGuitar.pluckString()

anyGuitar = ElectricGuitar(strings: 6, frets: 20)
anyGuitar.pluckString()



/*
 Something that is passed by value such as an instance of a struct is copied when it's assigned to a variable or passed to a function. Changing a property on the instance will only apply to the copy, and the original instance will remain unchanged.

 Values that are passed by reference, such as instances of classes, are not copied. Changing a value on a copy will also modify the original instance, since the copy is simply referencing the original.
 
 */
//: [Next](@next)
