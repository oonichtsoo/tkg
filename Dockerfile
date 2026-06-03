# 将版本从 php:8.1-apache 降级为 php:7.3-apache
FROM php:7.3-apache

# 将当前目录下的所有文件复制到 Apache 的 Web 根目录
COPY . /var/www/html/

# 确保 Apache 拥有文件权限
RUN chown -R www-data:www-data /var/www/html

# 暴露 Apache 默认端口
EXPOSE 80
