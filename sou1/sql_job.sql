SELECT*
  FROM [Job].[dbo].[tuyen_dung]

    -- kiem tra trung nhau
  SELECT link, COUNT(*) AS SoLanXuatHien
FROM [Job].[dbo].[tuyen_dung]
GROUP BY link
HAVING COUNT(*) > 1;
--chuan hoa
UPDATE tuyen_dung
SET vitri =
CASE
    WHEN [vitri] LIKE '%Data Analyst%' THEN 'DA'
    WHEN [vitri] LIKE '%Business Analyst%' THEN 'BA'
    WHEN [vitri] LIKE '%Business Intelligence%' THEN 'BI'
    WHEN [vitri] LIKE '%BI Analyst%' THEN 'BI'
    WHEN [vitri] LIKE '%BI Developer%' THEN 'BI'
    WHEN [vitri] LIKE '%Data Engineer%' THEN 'DE'
    WHEN [vitri] LIKE '%Data Scientist%' THEN 'DS'
    WHEN [vitri] LIKE '%Data Science%' THEN 'DS'
    WHEN [vitri] LIKE '%Machine Learning%' THEN 'MLE'
    WHEN [vitri] LIKE '%AI Engineer%' THEN 'AI Engineer'
    ELSE 'Other'
END;  

---
EXEC sp_rename 'tuyen_dung.thoigiandang', 'ThoiGianDangGoc', 'COLUMN';
--them cot

ALTER TABLE tuyen_dung
ADD NgayDang DATETIME;
--
UPDATE tuyen_dung
SET NgayDang =
CASE
    WHEN ThoiGianDangGoc = N'Vừa đăng'
        THEN GETDATE()

    WHEN ThoiGianDangGoc LIKE N'%phút trước%'
        THEN DATEADD(MINUTE,
            -CAST(LEFT(ThoiGianDangGoc, CHARINDEX(' ', ThoiGianDangGoc)-1) AS INT),
            GETDATE())

    WHEN ThoiGianDangGoc LIKE N'%giờ trước%'
        THEN DATEADD(HOUR,
            -CAST(LEFT(ThoiGianDangGoc, CHARINDEX(' ', ThoiGianDangGoc)-1) AS INT),
            GETDATE())

    WHEN ThoiGianDangGoc LIKE N'%ngày trước%'
        THEN DATEADD(DAY,
            -CAST(LEFT(ThoiGianDangGoc, CHARINDEX(' ', ThoiGianDangGoc)-1) AS INT),
            GETDATE())
    ELSE NULL
END;
-- tao bang moi
SELECT
    link,
    TRIM(value) AS kynangchitiet
INTO kynang
FROM tuyen_dung
CROSS APPLY STRING_SPLIT(kynang,',');