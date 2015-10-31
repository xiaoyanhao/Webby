## Webby

> webby是2015年，中山大学数据科学与计算机学院，第十一届，软件创意创新赛，Inception团队的参赛作品。webby是前端编程的评测平台。

### 部署与运行

```bash
git clone https://github.com/xiaoyanhao/Webby.git
cd webby
meteor
```

最后在浏览器打开：`http://localhost:3000/`

### 开发提交

每次开发前，或者每次提交前，都要先跟远程仓库同步。

```bash
git pull origin master
```

然后提交

```bash
git add -A
git commit -m 'your comment'
git push origin master
```

### 文件目录结构
```
.
├── client                客户端代码，包含各页面jade、sass、ls文件
├── lib
    ├── collections.ls    collections声明
    └── router.ls         router声明
├── public                静态资源文件
└── server                服务端代码，包含数据插入等

```
