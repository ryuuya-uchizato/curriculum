店舗テーブルから店舗名を抽出しなさい。また、列名の表示は別名で'店舗名'とすること。
[回答]select store_name as 店舗名　from store_table;

店舗情報を店舗名のABC順に抽出しなさい。
[回答]SELECT * FROM store_table ORDER BY store_nameabc ASC;

在庫テーブルに店舗テーブル、商品テーブルを「内部結合」し、店舗名・商品名・在庫数を全て取得しなさい。
[回答]select store_table.store_name, goods_table.goods_name, stock_table.quantity from stock_table
join store_table on stock_table.store_code = store_table.store_code join goods_table on stock_table.goods_code = goods_table.goods_code;

商品テーブルから全商品の単価の平均値を抽出しなさい。
[回答]select avg(price) from goods_table;

店舗テーブルから店舗コード='EA01'の在庫数の平均値より大きい在庫数を持つ店舗コードを抽出しなさい。
[回答]select store_code from stock_table group by store_code
having avg(quantity) > (select avg(quantity) from stock_table where store_code = 'EA01');

商品テーブルに「商品コード='M001'、商品名='マフラー'、単価=4500円、更新日付=本日日付」のデータを追加しなさい。※実行後のSELECT結果も貼付すること。
[回答]insert into goods_table
(goods_code, goods_name, price, update_day)
values
('M001', 'マフラー', '4500', '2020-08-07');

select * from goods_table
where goods_code = 'M001';

在庫テーブルの商品コード='S987'、かつ、店舗コード='EA01'に対して、「在庫数=10、更新日付=本日日付」で更新しなさい。※実行後のSELECT結果も貼付すること。
[回答]update stock_table
set
quantity = '10',
update_day = '2020-08-07'
where goods_code = 'S987' and store_code = 'EA01';

select * from stock_table
where goods_code = 'S987';

7で更新した商品を削除しなさい。※実行後のSELECT結果も貼付すること。
[回答]delete from stock_table
where goods_code = 'S987' and store_code = 'EA01';

select * from stock_table
where goods_code = 'S987';
