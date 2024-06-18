# react-native-pdd-isv

[![npm version](https://badge.fury.io/js/react-native-pdd-isv.svg)](https://badge.fury.io/js/react-native-pdd-isv)

## 开始

`$ npm install react-native-pdd-isv --save`

### iOS

```sh
cd ios
pod install
```

## 使用

```javascript
import PddISV from 'react-native-pdd-isv';

// 调用 SDK 中的 IsvUtil.init(context) 接口完成初始化。
let ret = await PddISV.init();

// 【异步】调用 SDK 中的 IsvUtil.getPati() 接口获取设备指纹
// APP 每次启动都需要调用这个接口，否则可能被限频率
// 初次安装可能要过一会才会生成，
let ret = await PddISV.getPati();
```
