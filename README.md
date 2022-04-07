# NIL-Enviroment 

NilBridge2的开发环境，方便打包等一系列操作

## 安装环境

``` bash
git clone https://github.com/NilBridge/NilEnviroment.git
```

然后运行`install.bat`

会自动clone最新版NilBridge到`NilBridge`文件夹

然后把你的`node.exe`放到`node`文件夹里面

```
+---7z  - 存放7za.exe
+---bats  - 存放各种批处理脚本
+---configs  - 存放各种config
+---NilBridge  - 开发环境
\---node  - 存放node.exe
```

开发完成后，执行`bats`文件夹的`pack.bat`即可开始自动化打包

不希望被打包的文件列表存放在`configs/pack.config`，已经提前写好了