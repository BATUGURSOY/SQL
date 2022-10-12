--Select yorum satiri
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'London'


--case insensitive
Select * from Products where categoryId=1 or categoryId=3

Select * from Products where categoryId=1 and UnitPrice>=10

Select * from Products order by ProductName

Select * from Products order by UnitPrice desc--en ucuzdan sirala(ascending -- descending)(artan - dusen)

Select count(*) from Products where CategoryID=2--kaç urun var say demek.

Select categoryID,count(*) from products where UnitPrice > 20
group by CategoryID having count(*)<10
--her kategori için hesapla,butun kategorileri tekrar etmeyecek sekilde tekrarla.
--(icinde 10 taneden az urun olan ve fiyatı 20 den buyuk olan urun kategorileri ver.) 

select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where UnitPrice>10
/*Inner Join sadece 2 tabloda da eslesen data varsa bir araya getirir.
Eslesmeyeni getirmez */
Select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID --butun ürün turlerinden satis yapmisiz.
inner join Orders o
on o.OrderID=od.OrderID

Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID--satilmis urunleri getirir.

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID--satılmamis urunleri getirir
where o.CustomerID is null--uye olmus ancak urun satin almamis kisilerin bilgisi
--null= bos siparis yani o data yok demek

--DTO Data Transformation Object












