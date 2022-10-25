# README

### Môi trường

* Ruby version: ``2.7.0``

* Rails version: ``5.2.4.2``

* Database management system: ``postgresql``

* Database version: ``12``

# Cài đặt và triển khai

### Clone repository

```sh
    git clone https://github.com/minhhieu16/depotRails5
    cd depotRails5
```

### Kiểm tra phiên bản
*Chạy hai lệnh sau để kiểm tra phiên bản ``ruby`` và ``rails`` hiện tại*
```sh
    ruby -v
    rails -v
```

*Nếu không có ``rails`` phiên bản hiện tại thì dùng lệnh bên dưới để thêm*
```sh
    gem install rails -v 5.2.4.2
```

### Cài đặt và cập nhật Gemfile

```sh
    bundle install
```

### Khởi tạo cơ sở dữ liệu

* Mở file [database.yml](config/database.yml) và sửa ``username, password`` dựa trên môi trường ở máy

* Truy cập vào `psql`:
```sh
    sudo -u postgres psql
``` 

* Trong giao diện `console` chạy lênh dưới để tạo ``database``:
    - ``postgres=# create database depotrails5_development;`` sẽ tạo cơ sở dữ liệu cho môi trường development
    - ``postgres=# create database depotrails5_test;`` sẽ tạo cơ sở dữ liệu cho môi trường testing
    - ``postgres=# \q`` sẽ thoát khỏi console 

* Trở về thư mục ``depotRails5`` và thực thi các lệnh sau để tạo bảng và thêm dữ liệu mẫu:
```sh
    rails db:migrate
    rails db:seed
``` 

### Khởi động server

```sh
    rails s
```

*Server sẽ chạy ở [localhost:3000](http://localhost:3000/)
