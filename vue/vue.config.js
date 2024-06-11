const { defineConfig } = require('@vue/cli-service')

module.exports = defineConfig({
    transpileDependencies: true,
    devServer: {
        port: 8081,
    },
    chainWebpack: config => {
        config.plugin('html').tap(args => {
            args[0].title = '在线聊天系统';
            return args;
        });
    }
})
