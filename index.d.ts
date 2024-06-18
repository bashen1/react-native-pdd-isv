interface Message {
    /**
     * 状态码
     */
    code: 0 | 1,
    /**
     * 消息
     */
    message: string,
}

export default class PddISV {
    /**
     * 初始化
     */
    static init(): Promise<Message>;

    /**
     * 获取设备指纹
     */
    static getPati(): Promise<Message>;
}