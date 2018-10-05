

import UIKit

class ViewController: UIViewController {
    var MyBookManager = BookManager()
    @IBOutlet weak var textView : UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var book1 = Book(name:"The Lord of The Rings", genre: "Fantasy", author:"J.R.R Tolkien")
        var book2 = Book(name:"Harry Potter", genre: "Fantasy", author: "J.K Rowling")
        var book3 = Book(name:"Justice : What's the right thing to do", genre: "philosophy", author:"Michael J. Sandel")
        
        //book1.printBook()
        //book2.printBook()
        //book3.printBook()
        
        
        
        MyBookManager.registerBook(bookObject:book1)
        MyBookManager.registerBook(bookObject:book2)
        MyBookManager.registerBook(bookObject:book3)
    }
    
    @IBAction func showAllBooks(_ sender:Any){
        print("showAllBooks Button clicked!")
        var bookList = MyBookManager.showBooks()
        textView?.text = bookList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

