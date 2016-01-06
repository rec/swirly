#pragma once

Matrix.prototype.makeButtons = function() {
    this.max = Max.findAll();
    var jsui = this.max.byClass.jsui,
        rect = jsui.rect,
        x = rect[0],
        y = rect[1],
        width = rect[2] - x,
        height = rect[3] - y,
        cellSize = this.cellSize * height / 2;

    for (var i = 0; i < this.columns; ++i) {
        var offset = (this.aspect + this.column_offsets[i]) * height / 2,
            nx = x + offset + 1,
            ny = y - cellSize;
        this.max.create(
            'button', 'input-button-' + i,
            {outlinecolor: [0.0, 0.5, 0.0, 1.0],
             blinkcolor: [0.5, 1.0, 0.0, 1.0],
             ignoreclick: 1,
             rect: [nx, ny, nx + cellSize, ny + cellSize]});
    }

    for (var i = 0; i < this.rows; ++i) {
        var offset = (1.0 - this.row_offsets[i]) * height / 2,
            nx = rect[2] + 3,
            ny = y + offset,
            nx2 = nx + cellSize + 5,
            button = this.max.create(
                'button', 'output-button-' + i,
                {outlinecolor: [0.5, 0.0, 0.0, 1.0],
                 blinkcolor: [1.0, 0.5, 0.0, 1.0],
                 ignoreclick: 1}),
            label = this.max.create(
                'textedit', 'output-label-' + i,
                {border: 1,
                 fontsize: 9,
                 lines:1,
                 keymode: 1}),
            append = this.max.create(
                ['append', i], 'output-append-' + i,
                {hidden: 1, fontsize: 9});
        button.rect = [nx, ny, nx + cellSize, ny + cellSize];

        var labelsize = 100;
        label.rect = [nx2, ny, nx2 + labelsize, ny + cellSize];
        label.fontsize = 9;

        append.rect = [nx2 + labelsize + 5, ny,
                       nx2 + labelsize + 75, ny + cellSize];
        append.fontsize = 9;
        Max.patcher.hiddenconnect(label, 0, append, 0);
        Max.patcher.hiddenconnect(append, 0, jsui, 0);
    }
};

Matrix.prototype.removeButtons = function() {
    var matches = [];
    for (var name in this.max.byName) {
        if (!(name.indexOf('input-') && name.indexOf('output-')))
            Max.patcher.remove(this.max.byName[name]);
    }
};
