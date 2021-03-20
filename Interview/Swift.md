#Interview Swift quiz



1. **Đã từng release Len App Store, hay build lên Testflight chưa?**

2. **Sự khác nhau giữa Synchronous task và Asynchronous task là gì?**
Synchronous task sẽ block thread đang chạy, chờ đến khi task thực thi xong mới chạy tiếp thread Asynchronous task sẽ không block thread, thực thi xong task thì sẽ có notify báo lại cho biết là task đã thực thi xong

3. **Enum swift và các ngôn ngữ thông thường khác**
- Cho phép định nghĩa hàm và các hàm Static
- Khả năng liên kết giá trị

```
// khai báo
enum State<T>{
case loading
case error(Error)
case success(T)
}
// Sử dụng
 switch result {
    case .loading
    case .success(let data):
    case .failure(let error):
  
    }
// Gán
Let State state = .success(data)
```

4. *Struct và Class*
Struct: Value type, can have stored properties
Enum: Value type, can not have stored properties
Class: Reference type, have stored properties

4, Tuples trong swift
Tuple nhóm nhiều giá trị 
Sử dụng truyền giá trí hoặc để function return nhiều giá trị 1 lúc

5, Type Safe trong swift
Complier sẽ tự động kiểm tra kiểu dữ liệu và bắt lỗi giúp bạn. Điều đó sẽ giúp bạn dễ dàng hơn trong việc fix những lỗi này ngay trong thời gian đang phát triển.


6, Đoạn code nào sai chỗ nào
var str: String = “Hello” 
str = nil 

var str2: String? = “Hell” 
str2 = nil

7, Xem đoạn code dưới. Lỗi ở đâu và tại sao? Fix như thế nào?
let op1: Int = 1
let op2: Double = 3.34
var result = op1 + op2

Fix: var result = Double(op1) + op2

8, Cho 1 mãng String, yêu cầu sắp xếp theo bảng chữ cái
var animals = ["fish", "cat", "chicken", "dog"]
Đáp án: 
animals.sort { (one, two) in return one < two }
animals.sort { return $0 < $1 }
animals.sort { $0 < $1 }
animals.sort { < }



UIKit

1, Mục đích sử dụng của khái niệm "reuseIdentifier" 

2,  Có bao nhiêu Cell được khởi tạo khi lần đầu tiên bạn load một UITableView? Mỗi khi scroll màn hình thì có bao nhiêu Cell được thêm vào?
UITableView sẽ khởi tạo một số lượng object Cell vừa đủ để hiển thị trên màn hình của thiết bị. Và với cơ chế reuseIdentifier, UITableView sẽ không tạo thêm Cell nào cả, mà sẽ tái sử dụng các đối tượng sẵn có để tránh tình trạng giật, lag máy.

3, Phân biệt viewDidLoad và viewDidAppear? Nên dùng phương thức nào để load dữ liệu từ server để hiển thị trên view? 
– viewDidLoad: Được gọi một lần khi lần đầu tiên đối tượng view của đối tượng UIViewController hiển thị.
– viewDidAppear: Tương tự viewWillAppear, có thể được gọi nhiều lần. Method này được gọi sau khi view đã hiển thị.

4, Làm thế nào để truyền data giữa các ViewController
- Using Segue, in prepareForSegue method (Forward).
- Setting the variable directly (Backword).
- Using Delegate (Backword).

5, Làm sao để render 1 url image trên UIKit


Code:

1, Các giá trị của tutorial1.difficulty và tutorial2.difficulty là gì
struct Tutorial {
  var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1
tutorial2.difficulty = 2

-> Đoạn code bên trên tạo một bảo sao chép của tutorial1 và gán nó cho tutorial2:
