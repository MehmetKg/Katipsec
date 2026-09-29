
# Katip Klavye Eğitim Uygulaması

Python ve CustomTkinter kullanılarak geliştirilen **Katip Klavye Eğitim Uygulaması**, özellikle zabıt kâtipliği ve benzeri klavye sınavlarına hazırlanan kullanıcıların yazma hızını, doğruluğunu ve klavye kullanım reflekslerini geliştirmesi amacıyla hazırlanmıştır.

Projenin temel amacı yalnızca bir yazma testi oluşturmak değil; farklı metinlerle çalışılabilen, harf bazlı alıştırmalar yapılabilen, internetten metin alınabilen ve kullanıcının gelişimini takip edebileceği sade bir masaüstü eğitim ortamı oluşturmaktır.

## 🚀 Temel Özellikler

### ⌨️ Klavye Sınav Sistemi

Uygulamada belirlenen süre içerisinde verilen metnin yazılması sağlanmaktadır.

Sınav sırasında:

* Doğru karakter sayısı
* Doğru kelime sayısı
* Yanlış kelime sayısı
* Toplam kelime
* Doğruluk oranı
* WPM (Words Per Minute)

anlık olarak hesaplanmaktadır.

Süre sona erdiğinde sınav otomatik olarak tamamlanır ve yazım alanı kilitlenir.

Bu sayede süre bittikten sonra kullanıcı tarafından yeni karakter, boşluk, Backspace veya başka bir klavye girdisi eklenerek sonuçların değiştirilmesinin önüne geçilir.

## ⏱️ Süre Sistemi

Kullanıcı sınav süresini dakika ve saniye olarak belirleyebilir.

Örneğin:

```text
01:00
02:00
05:00
10:00
```

gibi farklı sürelerde çalışma yapılabilir.

Sayaç sıfıra ulaştığında sınav otomatik olarak sonlandırılır.

## 📝 Metin Havuzu

Uygulamada hazır metinlerin yanında kullanıcı tarafından yeni metinler de eklenebilir.

Metinler:

* Başlık
* İçerik

şeklinde kaydedilir.

Eklenen metinler `metinler.json` dosyasında saklanarak uygulama tekrar açıldığında kullanılmaya devam eder.

## 🔤 29 Harf Matkabı

Çalışma Merkezi içerisinde Türk alfabesindeki 29 harf için ayrı alıştırmalar bulunmaktadır.

Kullanıcı istediği harfi seçerek o harfe yönelik özel bir çalışma metni oluşturabilir.

Örneğin:

```text
A
```

seçildiğinde A harfinin yoğun olarak kullanıldığı kelimeler ve cümlelerden oluşan bir çalışma hazırlanır.

Bu sistem özellikle belirli harflerde zorlanan kullanıcıların eksiklerini hedefli şekilde çalışmasına yardımcı olmak amacıyla geliştirilmiştir.

## ⌨️ F Klavye Çalışma Merkezi

Uygulamada ayrıca **F Klavye Ev Sırası** bölümü bulunmaktadır.

Burada F klavyenin temel parmak yerleşimi ve çeşitli alıştırma kalıpları gösterilmektedir.

Örnek:

```text
A K E İ L
O R D N H
```

Bunun yanında kelime ve karakter kombinasyonlarıyla refleks çalışmaları yapılabilmektedir.

Hazırlanan çalışma metni doğrudan sınav sistemine aktarılabilir.

## 🌐 İnternetten Metin Çekme

Uygulamanın önemli özelliklerinden biri de internet üzerinden çalışma metni oluşturabilmesidir.

### Vikipedi

Kullanıcı istediği konu veya harfi girerek Vikipedi üzerinden metin çekebilir.

Örneğin:

```text
Adalet
TBMM
Türk tarihi
Bilgisayar
```

gibi konular aranabilir.

Alınan içerik temizlenerek çalışma alanında gösterilir.

### 🔗 URL'den Metin Çekme

Kullanıcı doğrudan bir internet adresi girerek ilgili sayfanın metin içeriğini almaya çalışabilir.

HTML etiketleri temizlenerek yalnızca okunabilir metin elde edilmeye çalışılır.

Örneğin:

```text
https://ornek-site.com/makale
```

gibi bir adres kullanılabilir.

Çekilen metin daha sonra sınav havuzuna aktarılabilir.

### 🔎 Google Araması

Uygulamada ayrıca Google araması için ayrı bir bölüm bulunmaktadır.

Kullanıcı istediği arama sorgusunu girerek sonucu varsayılan web tarayıcısında açabilir.

## 📚 Web Metnini Sınav Havuzuna Aktarma

İnternetten alınan metnin yalnızca görüntülenmesiyle sınırlı kalınmamıştır.

Kullanıcı çektiği metni:

```text
İnternetten Metin
        ↓
Metni Al
        ↓
Sınav Havuzuna Ekle
        ↓
Sınav Metni
```

şeklinde doğrudan uygulamanın metin havuzuna aktarabilir.

Böylece farklı kaynaklardan elde edilen metinlerle kişisel bir çalışma arşivi oluşturulabilir.

## 🪟 Pencere Yönetimi

Geliştirme sırasında karşılaşılan problemlerden biri de uygulama içerisindeki yardımcı pencerelerin ana pencerenin arkasında açılmasıydı.

Bu sorun özellikle:

* Çalışma Merkezi
* İnternetten Metin
* Metin ekleme
* Yardımcı çalışma pencereleri

kullanılırken kullanıcı deneyimini olumsuz etkiliyordu.

Bu nedenle alt pencerelerin ana uygulamayla ilişkili şekilde açılması ve açıldıkları anda öne gelmesi sağlandı.

Alt pencereler için pencere odağı ve modal davranışlar düzenlenerek pencerenin yanlışlıkla arka planda kalmasının önüne geçildi.

## 💾 Kalıcı Kayıt Sistemi

Uygulamada kullanıcı tarafından eklenen metinler JSON formatında saklanmaktadır.

Örneğin:

```text
metinler.json
```

dosyası içerisinde kişisel çalışma metinleri tutulabilir.

Ayrıca yüksek WPM değeri de kaydedilerek kullanıcının ulaştığı en yüksek hız takip edilebilir.

## 🎯 Projenin Amacı

Bu proje yalnızca basit bir typing test uygulaması olarak tasarlanmadı.

Hedeflenen yapı:

```text
Harf Çalışması
      ↓
F Klavye Refleks Çalışması
      ↓
Metin Çalışması
      ↓
İnternetten Yeni Metin
      ↓
Süreli Sınav
      ↓
WPM + Doğruluk Analizi
      ↓
Kişisel Gelişim
```

şeklinde ilerleyen bir çalışma sistemi oluşturmaktır.

Özellikle düzenli olarak klavye sınavına hazırlanan kullanıcıların farklı metinlerle çalışabilmesi ve yalnızca ezberlenmiş tek bir metne bağlı kalmaması hedeflenmiştir.

## 🛠️ Kullanılan Teknolojiler

* **Python**
* **CustomTkinter**
* **Tkinter**
* **JSON**
* **Threading**
* **urllib**
* **Wikipedia API**
* **HTML temizleme**
* **Webbrowser**

## 📌 Geliştirme Süreci

Proje geliştirilirken kullanıcı deneyimi ve gerçek kullanım senaryoları dikkate alınarak çeşitli düzenlemeler yapılmıştır.

Özellikle sınav süresi sona erdikten sonra yazı alanının kilitlenmesi, internetten alınan içeriklerin sınav sistemine aktarılması ve yardımcı pencerelerin ana pencerenin arkasında kalmaması gibi kullanım sırasında ortaya çıkan problemler giderilmiştir.

Proje ilerleyen aşamalarda daha fazla metin, daha gelişmiş istatistikler, daha kapsamlı F klavye egzersizleri ve farklı çalışma modlarıyla geliştirilmeye devam edebilir.

---

## 📄 Lisans

Bu proje eğitim, kişisel gelişim ve klavye sınavlarına hazırlık amacıyla geliştirilmiştir.
