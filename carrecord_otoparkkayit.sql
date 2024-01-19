-- Otopark kayıtları için tablo oluşturuyoruz
-- Gereksinimlere gore ileride ucretlendirme sütunları koyulabilir
CREATE TABLE IF NOT EXISTS OtoparkKayit (
    KayitID INT PRIMARY KEY AUTO_INCREMENT,
    Plaka VARCHAR(15) NOT NULL,
    SahipAdi VARCHAR(50) NOT NULL,
    IletisimBilgisi VARCHAR(20),
    GirisTarihi DATETIME NOT NULL,
    CikisTarihi DATETIME,
    Durum VARCHAR(15) DEFAULT 'Otoparkta'
);

-- Örnek kayıt
INSERT INTO OtoparkKayit (Plaka, SahipAdi, IletisimBilgisi, GirisTarihi)
VALUES ('ABC123', 'Ahmet Yılmaz', '555-1234', '2024-01-19 09:00:00');

-- Arac çıkışı için örnek bir update işlemi
UPDATE OtoparkKayit SET CikisTarihi = '2024-01-19 14:30:00', Durum = 'Çıkış Yapıldı' WHERE KayitID = 1;

-- Anlık olarak otoparkta olan araçları sorgu işlemi
SELECT * FROM OtoparkKayit WHERE Durum = 'Otoparkta';
