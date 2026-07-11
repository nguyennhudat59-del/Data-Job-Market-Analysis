# 📊 Data Job Market & Skills Analysis

## 📖 Giới thiệu

Đây là dự án Data Analyst được thực hiện nhằm phân tích **thị trường tuyển dụng** và **xu hướng nghề nghiệp trong lĩnh vực dữ liệu** thông qua hai nguồn dữ liệu khác nhau:

- **Nguồn dữ liệu khảo sát nghề nghiệp quốc tế** với hơn 8.500 bản ghi.
- **Nguồn dữ liệu tuyển dụng tại Việt Nam** được thu thập bằng Web Scraping.

Dự án áp dụng quy trình phân tích dữ liệu từ làm sạch dữ liệu, chuẩn hóa, mô hình hóa dữ liệu, phân tích bằng SQL đến trực quan hóa bằng Power BI nhằm đưa ra các insight về xu hướng nghề nghiệp và nhu cầu tuyển dụng.

---

# 🛠 Công nghệ sử dụng

- Python (Pandas, Requests, BeautifulSoup)
- SQL Server (SSMS)
- Power BI
- Microsoft Excel

---

# 📂 Nội dung dự án

## PHẦN 1 - Phân tích dữ liệu khảo sát nghề nghiệp (Quốc tế)

### Nguồn dữ liệu

Developer Survey Dataset (CSV)

### Quy mô dữ liệu

- Hơn **8.500 bản ghi**
- Dữ liệu khảo sát từ nhiều quốc gia.

### Công việc thực hiện

- Làm sạch và chuẩn hóa hơn **8.500 bản ghi** bằng SQL Server.
- Xử lý dữ liệu trùng lặp và dữ liệu thiếu.
- Chuẩn hóa dữ liệu phục vụ phân tích.
- Thiết kế mô hình dữ liệu bằng cách chuẩn hóa các trường chứa nhiều giá trị thành các bảng chi tiết:
  - Programming Languages
  - Databases
  - Platforms
  - Development Tools
  - Job Roles
- Phát triển các truy vấn SQL để phân tích:
  - Quốc gia
  - Vị trí công việc
  - Kỹ năng
  - Mức lương
  - Trình độ học vấn
- Xây dựng dashboard Power BI trực quan hóa:
  - Xu hướng nghề nghiệp
  - Kỹ năng
  - Công nghệ
  - Quốc gia
  - Hình thức làm việc
  - Mức lương

### Insight

- Phân tích xu hướng nghề nghiệp trong lĩnh vực CNTT.
- Xác định các công nghệ được sử dụng phổ biến trên thị trường quốc tế.

---

# PHẦN 2 - Phân tích dữ liệu tuyển dụng (Việt Nam)

### Nguồn dữ liệu

Website: https://jobs.xomdata.com/

### Thời gian thu thập

11/06/2026 – 10/07/2026

### Quy mô dữ liệu

- Hơn **1.000 tin tuyển dụng**

Bao gồm các vị trí:

- Data Analyst
- Business Analyst
- Data Scientist
- Data Engineer
- Và các vị trí liên quan đến lĩnh vực dữ liệu.

### Công việc thực hiện

- Thu thập dữ liệu bằng kỹ thuật Web Scraping sử dụng Python.
- Làm sạch, chuẩn hóa và lưu trữ dữ liệu bằng SQL Server.
- Xây dựng dashboard Power BI phân tích:
  - Số lượng tuyển dụng theo vị trí.
  - Kỹ năng yêu cầu.
  - Địa điểm làm việc.
  - Mức lương tuyển dụng.

### Insight

- Phân tích nhu cầu tuyển dụng trong lĩnh vực dữ liệu tại Việt Nam.
- Xác định các kỹ năng được doanh nghiệp yêu cầu nhiều nhất.

---

# 📊 Quy trình thực hiện

```
Nguồn dữ liệu
        │
        ▼
Thu thập dữ liệu (Web Scraping / CSV)
        │
        ▼
Làm sạch & Chuẩn hóa dữ liệu
( SQL Server)
        │
        ▼
Mô hình hóa dữ liệu
        │
        ▼
Phân tích bằng SQL
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Insights
```

---

# 📈 Kết quả đạt được

- Thu thập hơn **1.000 tin tuyển dụng** từ website tuyển dụng tại Việt Nam.
- Làm sạch và chuẩn hóa hơn **8.500 bản ghi** khảo sát nghề nghiệp.
- Thiết kế mô hình dữ liệu phục vụ phân tích.
- Phát triển các truy vấn SQL để khai thác dữ liệu.
- Xây dựng dashboard Power BI trực quan hóa dữ liệu.
- Đưa ra các insight hỗ trợ đánh giá xu hướng nghề nghiệp và nhu cầu tuyển dụng.
