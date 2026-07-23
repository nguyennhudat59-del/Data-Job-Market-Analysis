📊 Phân tích nguồn nhân lực CNTT và thị trường tuyển dụng lĩnh vực Dữ liệu
1. Giới thiệu dự án

Trong những năm gần đây, nhu cầu tuyển dụng nhân sự trong lĩnh vực Dữ liệu (Data Analyst, Data Scientist, Data Engineer...) tại Việt Nam tăng trưởng mạnh cùng với quá trình chuyển đổi số của doanh nghiệp. Tuy nhiên, để xây dựng chiến lược tuyển dụng và phát triển nhân sự hiệu quả, doanh nghiệp không chỉ cần hiểu nhu cầu tuyển dụng của thị trường mà còn cần đánh giá đặc điểm của nguồn nhân lực hiện có.

Dự án được xây dựng nhằm cung cấp góc nhìn toàn diện về thị trường lao động thông qua việc kết hợp hai nguồn dữ liệu độc lập:

-Nguồn dữ liệu thứ nhất: Hơn 8.500 phản hồi khảo sát lập trình viên và chuyên gia CNTT trên toàn cầu, phản ánh đặc điểm nguồn nhân lực, kỹ năng, công nghệ sử dụng, trình độ học vấn, kinh nghiệm và thu nhập.

-Nguồn dữ liệu thứ hai: Hơn 1.000 tin tuyển dụng các vị trí Data tại Việt Nam, được thu thập bằng Python Web Scraping trong giai đoạn 11/06/2026 – 10/07/2026, phản ánh nhu cầu tuyển dụng thực tế của doanh nghiệp.

Thông qua việc phân tích đồng thời hai bộ dữ liệu, dự án hướng tới việc xác định mối quan hệ giữa nguồn cung nhân lực và nhu cầu tuyển dụng, từ đó đưa ra các insight hỗ trợ doanh nghiệp trong công tác tuyển dụng, đào tạo và phát triển nguồn nhân lực.

2. Mục tiêu dự án

Dự án được thực hiện nhằm giải quyết các câu hỏi sau:

-Nguồn nhân lực trong ngành CNTT hiện nay có những đặc điểm gì?
-Những công nghệ và kỹ năng nào đang được sử dụng phổ biến?
-Doanh nghiệp tại Việt Nam đang có nhu cầu tuyển dụng những vị trí và kỹ năng nào?
-Mức lương thay đổi như thế nào theo quốc gia, vị trí công việc, trình độ học vấn và kinh nghiệm?
-Những khu vực nào có nhu cầu tuyển dụng nhân lực Data cao nhất?
-Doanh nghiệp nên đầu tư vào kỹ năng và chiến lược tuyển dụng nào để đáp ứng nhu cầu thị trường?
3. Nguồn dữ liệu
Bộ dữ liệu 1 – Global Developer Career Survey

Bộ dữ liệu khảo sát quốc tế gồm 8.558 phản hồi từ các lập trình viên và chuyên gia CNTT trên nhiều quốc gia.

Các nhóm thông tin chính bao gồm:

Quốc gia làm việc
Trình độ học vấn
Kinh nghiệm làm việc
Thu nhập hằng năm
Vai trò nghề nghiệp (Developer Type)
Ngôn ngữ lập trình
Hệ quản trị cơ sở dữ liệu
Công cụ phát triển
Nền tảng công nghệ
Hình thức làm việc
Bộ dữ liệu 2 – Vietnam Data Job Market

Thu thập hơn 1.000 tin tuyển dụng Data từ website tuyển dụng bằng Python Web Scraping.

Dữ liệu bao gồm:

Chức danh tuyển dụng
Doanh nghiệp
Địa điểm làm việc
Mức lương
Kinh nghiệm yêu cầu
Kỹ năng yêu cầu
Hình thức làm việc
Thời gian đăng tuyển
4. Quy trình thực hiện
Bước 1. Thu thập dữ liệu
Thu thập dữ liệu tuyển dụng bằng Python Web Scraping.
Tiếp nhận bộ dữ liệu khảo sát quốc tế.
Bước 2. Kiểm tra chất lượng dữ liệu

Sử dụng Microsoft Excel để:

Phát hiện dữ liệu trùng lặp.
Kiểm tra giá trị thiếu.
Kiểm tra dữ liệu bất thường.
Đối chiếu dữ liệu trước khi xử lý.
Bước 3. Làm sạch và chuẩn hóa dữ liệu

Thực hiện trên SQL Server:

Xử lý dữ liệu NULL.
Loại bỏ bản ghi không hợp lệ.
Chuẩn hóa định dạng dữ liệu.
Chuẩn hóa mức lương.
Chuẩn hóa tên quốc gia.
Chuẩn hóa các trường chứa nhiều giá trị.
Chuyển đổi dữ liệu phục vụ phân tích.
Bước 4. Thiết kế mô hình dữ liệu

Thiết kế mô hình dữ liệu quan hệ nhằm:

Giảm dư thừa dữ liệu.
Tối ưu hiệu năng truy vấn.
Hỗ trợ trực quan hóa dữ liệu.

Các bảng chính được chuẩn hóa gồm:

Nghề nghiệp
Kỹ năng
Ngôn ngữ lập trình
Hệ quản trị cơ sở dữ liệu
Nền tảng công nghệ
Công cụ phát triển
Thông tin việc làm
Thông tin thu nhập
Bước 5. Phân tích dữ liệu

Thực hiện các truy vấn SQL để phân tích:

Khảo sát lập trình viên
Phân bố nghề nghiệp.
Xu hướng công nghệ.
Công cụ phát triển phổ biến.
Thu nhập theo quốc gia.
Thu nhập theo kinh nghiệm.
Thu nhập theo trình độ học vấn.
Hình thức làm việc.
Đặc điểm nguồn nhân lực.
Thị trường tuyển dụng
Nhu cầu tuyển dụng.
Kỹ năng được yêu cầu.
Mức lương.
Phân bố khu vực tuyển dụng.
Kinh nghiệm yêu cầu.
Xu hướng tuyển dụng.
Bước 6. Xây dựng Dashboard

Phát triển Power BI Dashboard gồm hai nhóm phân tích:

Dashboard 1

Global Developer Workforce Analysis

Workforce Overview
Salary Analysis
Technology Trends
Employment Analysis
Dashboard 2

Vietnam Data Job Market Analysis

Recruitment Overview
Skill Demand Analysis
Salary Analysis
Regional Analysis
5. Kết quả đạt được
Đối với bộ dữ liệu khảo sát
Phân tích đặc điểm nguồn nhân lực CNTT trên toàn cầu.
Xác định các công nghệ được sử dụng phổ biến.
So sánh mức lương theo quốc gia, vị trí công việc, trình độ học vấn và kinh nghiệm.
Đánh giá xu hướng nghề nghiệp của lập trình viên.
Đối với bộ dữ liệu tuyển dụng
Xác định các vị trí tuyển dụng có nhu cầu cao nhất.
Phân tích các kỹ năng doanh nghiệp yêu cầu.
Xác định khu vực có nhu cầu tuyển dụng lớn.
Phân tích xu hướng tuyển dụng trong lĩnh vực Dữ liệu.
6. Giá trị của dự án

Việc kết hợp hai nguồn dữ liệu giúp dự án không chỉ phản ánh thực trạng nguồn nhân lực CNTT, mà còn cho thấy nhu cầu tuyển dụng thực tế của doanh nghiệp.

Các kết quả phân tích có thể hỗ trợ:

Doanh nghiệp xây dựng chiến lược tuyển dụng hiệu quả.
Xác định các kỹ năng cần ưu tiên đào tạo.
Định hướng phát triển nguồn nhân lực trong lĩnh vực Dữ liệu.
Hỗ trợ sinh viên và người tìm việc xác định các kỹ năng đáp ứng nhu cầu thị trường.