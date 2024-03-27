# dynatalk-squeak

本仓库是 [Dynatalk](https://github.com/wwj718/Dynatalk) 的 [Squeak](https://squeak.org/) 客户端。

> Dynatalk 致力于对象之间的交流, 尤其关心不同语言/环境之间的互操作。 -- [Dynatalk](https://github.com/wwj718/Dynatalk)

要使用 Dynatalk, 需要做两件事:

1. [运行一个 MQTT broker](https://github.com/wwj718/Dynatalk/blob/main/mqtt/readme.md)
2. 然后当前语言的 dynatalk 客户端中开始编程。

## 开始

使用 [Squot](https://github.com/hpi-swa/Squot) clone 当前项目。 从代码仓库中 `Checkout objects` 之后, 就可以在 Workspace 里编程了:

```st
supervisor := Supervisor new.
agent := SqueakDemoAgent new id: 'SqueakDemoAgent'.
supervisor addAgent: agent.

"print it"
(agent request: 'SqueakDemoAgent' action: 'ping' args: {}) wait. 
(agent request: 'SqueakDemoAgent' action: 'help' args: {}) wait.   
(agent request: 'SqueakDemoAgent' action: 'echo:' args: {'hi'}) wait.  
(agent request: 'SqueakDemoAgent' action: 'add:to:' args: {1 . 2}) wait.  


"(agent request: 'LivelyDemoAgent' action: 'echo' args: {'hi'}) wait."

"sendTo, do it"
agent sendTo: 'SqueakDemoAgent' action: 'echo:' args: {'hi'}
```

[changelog](./docs/changelog.md) 里记录了每个版本引入的功能。