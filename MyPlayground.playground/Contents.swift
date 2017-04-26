//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//隐式可选性的用处
class City{
    
    let cityName:String
    var country:Country
    init(cityName:String, country:Country) {
        self.cityName = cityName
        self.country = country
    }
    


}

class Country{

    let countryName:String
    var capital :City!
    init(country:String ,capital:String) {
        
        self.countryName = country;
        self.capital = City(cityName: capital, country: self)
        
    }
    
    func getInfo() -> Void {
        
        print("The Country Name is \(self.countryName)")
        print("The Country Capital Name is \( self.capital.cityName)")
        
    }
    
}

var country = Country(country: "China", capital: "BeiJing");
country.getInfo()



//数组的初始化 Array

var a:Array <Int> = [1,2,3,4,5,6]
let b:NSArray = []
let c:Array<String> = []
let d = Array<Int>()
let f = [Int]()


a.isEmpty
a.first
a.last
a.count

if let fitst = a.first {
    print("first is \(fitst)")
}

a.min()
a.max()


a[1..<4]
a[2..<a.count]
a.contains(2)
a.contains(7)
a.index(of: 3) //返回的是可选型
a.index(of: 7)
a.index(after: 1)
a.index(before: 1)


//遍历

for index in 0..<a.count{

    print("\(a[index])")
}

for asub in a {
    print("\(asub)")
}

for (index,value) in a.enumerated(){
    
    print("\(index) == \(value)");
}

var sortA : Array <String> = ["A","B","C","D","E"]
var sortB : Array <String> = ["One","Two","There","Four","Five"]
sortA == sortB

let names: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
var shorterIndices: [SetIndex<String>] = []
for (i, name) in zip(names.indices, names) {
    if name.characters.count <= 5 {
        shorterIndices.append(i)
    }
}

print("\(shorterIndices.first! )")

a.append(3)

print(a)

a += [7,8]

print(a)

a.insert(4, at: 3)
print(a)
a.removeLast()
a.removeFirst()
a.remove(at: 2)
print(a)
a.removeSubrange(Range(0..<3))
print(a)
print(a.count)
a[0...2] = [4,5,6,7]
print(a)

























































