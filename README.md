# ChatOnline

ChatOnline 是一个在线聊天系统，采用前后端分离的架构，前端使用 Vue.js 和 Element UI，后端使用 Spring Boot、WebSocket 和 JWT。系统支持用户注册、登录、好友管理、单聊、群聊和系统公告管理等功能。

## 项目结构

- **springboot**: 后端代码，基于 Spring Boot 实现。
- **vue**: 前端代码，基于 Vue.js 实现。
- **ChatOnline.sql**: 数据库初始化脚本。

## 功能介绍

### 用户功能

1. **用户注册与登录**
   - 用户可以注册新账户。
   - 用户可以登录已注册账户。
   - 使用验证码进行安全验证。

2. **用户信息管理**
   - 用户可以查看和编辑个人信息。

3. **好友管理**
   - 用户可以添加和管理好友。
   - 用户可以删除好友。
   - 用户可以查看好友列表。

4. **单聊功能**
   - 用户可以进行单聊，发送和接收即时消息。
   - 支持文件发送和接收。
   - 存储和查看历史消息。

5. **群聊功能**
   - 用户可以进行群聊，发送和接收群组消息。
   - 支持文件发送和接收。
   - 存储和查看历史消息。

### 管理员功能

1. **用户管理**
   - 管理员可以增加和删除用户账户。
   - 管理员可以编辑用户信息。

2. **系统公告管理**
   - 管理员可以发布和更改系统公告。

## 项目部署

### 前端部署

1. 进入 `vue` 目录。
2. 安装依赖：`npm install`
3. 启动前端项目：`npm run serve`

### 后端部署

1. 进入 `springboot` 目录。
2. 使用 Maven 打包：`mvn clean package`
3. 运行 Spring Boot 项目：`java -jar target/ChatOnline-0.0.1-SNAPSHOT.jar`

### 数据库配置

1. 使用 MySQL 创建数据库，执行 `ChatOnline.sql` 脚本初始化数据库。
2. 配置 `springboot/src/main/resources/application.properties` 文件中的数据库连接信息。

## 技术栈

- **前端**: Vue.js, Element UI
- **后端**: Spring Boot, WebSocket, JWT
- **数据库**: MySQL

## 项目截图

### 登录界面

![登录界面](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/login.png)

### 注册界面

![注册界面](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/register.png)

### 好友管理

![好友管理](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/friend-management.png)

### 单聊界面

![单聊界面](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/single-chat.png)

### 群聊界面

![群聊界面](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/group-chat.png)

### 文件上传

![文件上传](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/file-upload.png)

### 下载聊天记录

![下载聊天记录](https://github.com/shenshiyang/ChatOnline/blob/master/screenshots/download-history.png)

## 开发者

- **Shen Shiyang**: [GitHub](https://github.com/shenshiyang)


