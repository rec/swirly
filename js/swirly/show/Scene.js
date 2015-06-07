#pragma once

function runScene(show, sceneName) {
    var visited = {};
    function run(sceneName, sceneAddress) {
        if (visited[sceneName])
            throw 'Scene name appears twice: ' + sceneName;
        visited[sceneName] = true;

        var scene = Util.getFromAddress(show.sceneTable, sce
        if (!scene)
            throw 'Don\'t understand scene name ' + sceneName;
        if (
    };
};
