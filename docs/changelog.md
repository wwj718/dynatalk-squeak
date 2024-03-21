# changelog

## dynatalk

## 0.2.0(2024-03-21)

-   结构化消息的解释过程(通过优化 Agent.interpret 方法)。目前的实现机制是: 将消息映射到对象方法
    -   SqueakDemoAgent(理解 `echo:` 和 `eval:`)
-   这个版本就可以支持最初的目标了: "在 Squeak 里使用 Python 或浏览器的 API"

### 0.1.0(2024-03-21)

- 实现最小版本的 Dynatalk.
    -   agent 可以解释它所理解的消息, 根据需要做出回复(包括错误信息)
    -   实现了 MQTTSpace, Supervisor, Agent, 以及一个简单的示例: SqueakDemoAgent(仅理解 `echo`)

## Image

- Squeak6-dynatalk-v1.image
    -   基于 `Squeak6-wwj-main-v3.image`
    -   添加 [MQTT client for Squeak](http://www.squeaksource.com/@AO8HIZwUuPJcfD67/uiN0EOdv)
    -   添加 dynatalk Github 代码库