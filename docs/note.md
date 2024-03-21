# note

## MQTT

使用 [MQTT client for Squeak](http://www.squeaksource.com/@AO8HIZwUuPJcfD67/uiN0EOdv)

文档: [MQTT client](https://www.google.com/search?q=MQTT+client+for+Squeak&sourceid=chrome&ie=UTF-8)

### 安装

使用 `Apps > SqueakMap Catelog`, update 之后搜索 mqtt, 得到 MQTT4Squeak。 安装最新版本会报错，使用以下命令手动安装:

`(Installer repository: 'http://www.squeaksource.com/MQTTClient' ) install: 'MQTT-tpr.25.mcz'`


### 使用

在 System Browser 里浏览 `MQTTClient` 类注释。

其中提到: 不需要查看或使用 "public api" 类别之外的任何方法

## 调试技巧

- `Beeper beep`: 检查代码是否运行到某处, john 推荐

## 开发笔记
-   犯了错误 `1>2 ifTrue:(Beeper beep)` , 如果不是blocks, 永远会运行, 正确: `1>2 ifTrue:[Beeper beep]`
-   对象何时被回收(`MQTTSpace allInstances size`), 如果没有被全局引用也没有被活的对象引用, 则会被回收
    -   有了 mqttclient 之后似乎不会回收
    -   mqttclient disconnect 之后呢？ 会被回收！

-   如何 destroy 一个对象, 是否有钩子
    -   close
    -   destroy
-   json: 查看 JsonObject
    -  Json new readFrom: aString readStream. 获得一个JsonObject
    -   aJsonObject asJsonString
        -   aJsonObject 是 Dictionary