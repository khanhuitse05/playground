## Flutter interview

1. Tại sao em lại chọn học flutter?
2. Ngoài Flutter em có học qua native chưa (Android và iOS).
3. Bạn có từng làm việc với firebase chưa, Và đã sữ dụng những dịch vụ gì của firebase
4. Em hiều thế nào là quản lý State.
- State là Data, Trạng thái của app. Quản lý state là có thể thay đổi state và khi state thay đổi thì sẽ thay đổi UI 1 cách hợp lý

6. Trình bày Mô hình quản lý state hay dùng nhât. Đi yếu và mạnh của nó là gì?
7. Giải thích mô hình MVC và MVVM? 
8. Giải thích Bloc
- Là 1 pattern. Viết tắt của từ "Bussiness Logic Components". Nó giúp cho việc quản lý state và sử dụng data từ các widget. Thông qua Stream và Event.
Bloc giúp tách phần logic riêng ra khỏi UI. Giúp cho việc code nhanh, dể test, và dể sử dụng lại
- Flow của nó là khi 1 Widget gọi event -> Các Widget khác sẽ phản hồi thông qua Bloc là trung gian
9. Tại sao lại sử dụng Bloc
- Biết ứng dụng đang ở state nào ở bất kỳ thời điểm nào
- Dể dàng kiểm tra mọi trường hợp, Đảm bảo ứng dụng thực thì và hiển thị đúng
- Có thể ghi lại mọi tương tác của người dùng, để có thể phân tích nấp cấp ứng dụng
- Dể sử dụng lại code, cho các ứng dụng hoặc tín năng khác
- Có một mo hình rỏ ràng, Giúp cho mọi người trong team làm việc hiệu quả với nhau. Và người mới dể dàng tiếp cận
- Đơn giản và hiệu quả
- Có hổ trợ và dể đàng viết test case

11. Giải thích Provider
12. Lấy 1 hình ảnh (Screen shot) và yêu cầu giải thích layout (widget tree).
13. Bạn có từng sử dụng CustomScrollView chưa, Liệt kê các Sliver sử dụng cho custom scroll view.
14. Giải thích sự khác nhau giữa ListView và ListView.builder
15. Lúc nào thì không nên sử dụng Flutter
- Instant Apps
- App với nhiều tín năng sử dụng platform channel.
- App có tín năng đặc biệt, Ít thư viện hỗ trợ như AR, Maps, Photo editor
- Khách hàng yêu cầu hoặc Product quan trọng của công ty, và công ty có đủ nhân lực và kinh nghiệm cho native app

16. Flutter AOT vs JIT
- Trong dev-mode. Flutter sẽ compiled just-in-time. Điều đó giúp cho chúng ta có thể sử dụng hot-reload hay hot-resest.
- Trong release-mode, Code flutter sẽ compiled ahead-of-time thành native code. Điều đó đảm bảo tốt hơn cho performace, giảm size app, và xoá hoặc bỏ qua nhưng thứ không cần thiến của dev-mode

17. Giải thích Threads trong Flutter
- Platform Thread: Flutter code giao tiếp bất đồng bộ với Native. Bằng cách gửi message và nhận phản hồi 1 cách bất đồng bộ.
- UI Thread: Thực thi dart code, Code mà lập trình viên viết và code của Flutter frameword.
- I/O Thread: Thực thi các task nặng. Chủ yếu là IO (data, file, )
- GPU Thread: Thực thi render dựa vào Render Tree và Render Object

18. Flutter hoạt động với Native channel như thế nào?
- Platform channel là channel cho phép Flutter code giao tiếp bất đồng bộ với Native. Bằng cách gửi message và nhận phản hồi 1 cách bất đồng bộ.
- Flutter hỗ trợ đầy đủ các kiểu khi giao tiếp với native như: String, Int, Double, Map, List...
- Platform channel có 2 phần MetholdChannel: (Class on Dart/ Flutter), và (Class on Native). Ở web thì không có rào cản này nên theo em sẽ có tiềm năng lơn 

19. Bất đồng bộ trong Flutter (Asynchronous in Flutter (Isolate))
Quy trình
- 1, Dart Plusgin sẽ đăng ký các hàm bất đồng bộ
- 2, Lưu lại các callback nếu có
- 3, Thực thi
- 4, Gọi những đã được lưu lại nếu có
-> Thông thường Flutter và Dart đã hỗ trợ nhiều hàm để thực thi bất đồng bộ. như http.get/post, Loadfile, Imageprovider.

20. Stream trong Flutter
- Là bất đồng bộ trong Dart. Ngoài ra còn có Future
- Là các chuổi Event, Liên quan và Liên tục. 
- Stream có thể thực thi bất đồng bộ Dữ liệu như API, Read file. hay được app dụng trong việc quản lý State.
- Stream có các phương thức tương tự như trong Interable. Nhưng thực thi 1 cách bất đồng bộ
- Có 2 loại Stream là Single và Boardcast

21. Giải thích Inherited Widget
- Một Số IW như MediaQuery, Theme. Thông qua context có thể lấy sử dụng được data và gọi các function trong các IW này. Ngoài ra còn được áp dụng trong việc quản lý state như scoped model, provider

22. Interface trong Dart
- Interface keyword đã bị xoá, Bạn có thể dùng abstract class để thay thế. Thay vì dùng extend thì xài implements rồi override lại các hàm bắt buộc.

23. Từ khoá Assert
- Dùng trong quá trình lập trình. Sữ dụng Assert nếu trả về false thì sẽ thông báo và throw exception. Giúp cho biết rỏ lỗi và message và tránh lỗi hoặc input không mong muốn sau khi release app. Có thể là lỗi logic hoặc crash

