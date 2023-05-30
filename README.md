# Test-tools
本地版测试辅助工具（web版），直接http服务可用……
## 说明

之前发过一个在[【**棱角安全团队**】反弹shell在线编写工具](https://forum.ywhack.com/reverse-shell/)基础上，结合【[凌星阁-Shell编码](https://sec.lintstar.top/Java-shell.html)】的反弹shell编写工具，当然我这改动应该是很简单的，稍微懂点前端的都可以。
这次，还是集合了一些大佬的工具，再加上Chat GPT写代码，我再把代码复制粘贴，终于得到一个新的工具合集，也不水文章了，直接发布这个合集吧。

---

## 1、工具内容

本项目收集自网络，加上自己的导航页转为本地静态文件，属于将多个工具进行收集，部分使用Chat GPT修改代码。
尊重原创，共使用以下项目，排名不分先后：

  | **工具**             | **项目地址**                                                 |
  | -------------------- | ------------------------------------------------------------ |
  | 导航页               | Acczdy导航页（自己的）                                       |
  | 反弹 Shell 生成      | [https://forum.ywhack.com/reverse-shell/](https://forum.ywhack.com/reverse-shell/) |
  |                      | [https://github.com/0dayCTF/reverse-shell-generator/](https://github.com/0dayCTF/reverse-shell-generator/) |
  | Windows 系统进程识别 | [https://forum.ywhack.com/bountytips.php?process](https://forum.ywhack.com/bountytips.php?process) |
  |                      | [https://github.com/r00tSe7en/get_AV/](https://github.com/r00tSe7en/get_AV/) |
  | 默认密码查看         | [https://forum.ywhack.com/password.php#](https://forum.ywhack.com/password.php#) |
  | 社工密码生成         | [https://github.com/zgjx6/SocialEngineeringDictionaryGenerator/](https://github.com/zgjx6/SocialEngineeringDictionaryGenerator/) |
  | FRP_配置生成         | [https://diannaobos.com/frp/frp_config/frps.html/](https://diannaobos.com/frp/frp_config/frps.html/) |
  | 资产数据过滤         | [https://sec.lintstar.top/Assetdata-Filter.html](https://sec.lintstar.top/Assetdata-Filter.html) |
  | Windows提权EXP       | [https://github.com/neargle/win-powerup-exp-index/](https://github.com/neargle/win-powerup-exp-index/) |
  | 文件下载命令         | [https://github.com/r0eXpeR/File-Download-Generator/](https://github.com/r0eXpeR/File-Download-Generator/) |
  | Google Hacking       | [https://github.com/r00tSe7en/GoogleHackingTool/](https://github.com/r00tSe7en/GoogleHackingTool/) |
  | 前端页面             | [https://sec.lintstar.top/](https://sec.lintstar.top/)       |

# 2、截图展示：

1. 导航页

    导航页：是我自己的在线导航另存为本地html了，所以部分图片等显示不出来，不过问题不大，可以使用。
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/f5301c36-208c-43da-a248-241c6a743c2a)
    搜索栏：默认使用百度搜索，如果需要更换搜索引擎可以点击右侧的蓝色图标更换：
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/f2151042-1e2b-4c82-b1fb-dc1375a59351)
    
2. 反弹 Shell 生成

    反弹 Shell 生成：还是熟悉的味道，没啥多的改变，就是去掉了改变颜色的功能，如果喜欢可以自己把代码改回来就行，或者直接下载原项目文件进行替换就行。
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/0fc6963f-040c-483b-aedc-1bb913353fb0)
    
3. Windows 系统进程识别

    Windows 系统进程识别：除了添加原项目的杀软识别外，还增加了【[棱角安全团队的进程文件](https://forum.ywhack.com/bountytips.php?process)】，通过颜色进行区分。
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/923447ac-a357-4ac1-ad0b-ae42094af87f)

    注意：这个功能必须在http服务下启用，如果没有安装环境的话，可以使用python直接起用一个http服务，各位肯定都知道，使用效果如下：
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/bda4123c-5cb8-45dc-9d39-fae152191eda)


4. 默认密码查看

    默认密码查看：将【棱角安全团队】公开的[默认密码Excel](https://forum.ywhack.com/Public/defaultpasswd.xlsx)转化为html，让Chat GPT写了搜索代码，可以快速定位。
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/81beb5f9-f317-4ddc-aa3a-9341f75bd9c6)

    定位效果如下，当然还是很多不方便，右下角有一个返回顶部的按钮。
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/703cf0b1-8a2f-4c31-b953-c37f4efedae6)


5. 社工密码生成

    社工密码生成：使用Github开源项目：【[SocialEngineeringDictionaryGenerator](https://github.com/zgjx6/SocialEngineeringDictionaryGenerator)】
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/f33b957c-f675-4b1b-988d-bda77be8ebad)


6. FRP_配置生成

    FRP配置生成：使用【[电脑博士FRP在线配置系统](https://diannaobos.com/frp/frp_config/frps.html)】
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/689a85e0-2dc4-4067-bd6d-da6c001df4d0)


7. 资产数据过滤

    资产数据过滤：使用【[凌星阁-Assetdata Filter](https://sec.lintstar.top/Assetdata-Filter.html)】
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/ea96d38c-7c0b-4b9b-b4cf-fce593ad177c)

    使用效果如下：
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/3dd204f8-72e0-404c-a9e9-abfb7a6793ad)


8. Windows提权EXP

    Windows提权EXP：使用Github开源项目：【[ win-powerup-exp-index](https://github.com/neargle/win-powerup-exp-index/)】
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/4fea40a6-fec7-49bb-bf2b-05fdd6518074)

    使用效果如下：
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/80eb6629-7025-4826-a690-9872e97c77a3)


9. 文件下载命令

    文件下载命令：使用Github开源项目：【[File-Download-Generator](https://github.com/r0eXpeR/File-Download-Generator/)】
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/7b1890ed-71b6-4a6d-b6ac-7afdc171e151)


10. Google Hacking

    Google Hacking：使用Github开源项目：【[GoogleHackingTool](https://github.com/r00tSe7en/GoogleHackingTool/)】
    ![image](https://github.com/Acczdy/Test-tools/assets/107027804/3bdfe96c-74d6-448b-bf26-78090e2563cf)


# 3、工具使用

1. 本工具集中的部分工具可以直接点击html文件使用：

  | **序号** | **工具名称**      |
  | -------- | ----------------- |
  | 1        | 导航页            |
  | 2        | 反弹 Shell 生成器 |
  | 3        | 默认密码查看      |
  | 4        | 社工密码生成      |
  | 5        | FRP配置           |
  | 6        | 文件下载命令生成  |
  | 7        | Google Hacking    |

2. 部分需要通过http服务，在这里写了个脚本，运行Test-tools.exe即可，脚本使用python开启http服务，可以自定义端口，输入完成后点击Enter自动打开页面：
     - Test-tools.exe：

     ![image](https://github.com/Acczdy/Test-tools/assets/107027804/f116145f-aa89-41fe-8f2b-f8cb4c867ef5)
    
     - 运行界面：
     ![image](https://github.com/Acczdy/Test-tools/assets/107027804/6d199f59-2c57-4074-b39b-6a1aa32f009c)

     - 自定义端口：
     ![image](https://github.com/Acczdy/Test-tools/assets/107027804/6ee970bb-3c69-47bf-9f76-bbc0726af9d4)
    
      ![image](https://github.com/Acczdy/Test-tools/assets/107027804/c8446929-656a-494b-8e4e-73d261e14706)

     - 直接启动服务：
     ![image](https://github.com/Acczdy/Test-tools/assets/107027804/668c82d4-8daa-42f4-969a-c69d769c7cf0)
    
      ![image](https://github.com/Acczdy/Test-tools/assets/107027804/7ecfe03f-4b30-446c-b11d-df04ffa7951d)

脚本可以自动匹配python版本，并自动匹配对应的命令： 
     - Python3：
     ![image](https://github.com/Acczdy/Test-tools/assets/107027804/7d1e73de-ac6e-45f7-9a31-08b4bb4af809)
     - Python2：
     ![image](https://github.com/Acczdy/Test-tools/assets/107027804/70d84781-3c32-45a0-b308-d2abcee7f3dc)
     
---






