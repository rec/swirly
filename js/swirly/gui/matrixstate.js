#pragma once

var MatrixState = {};

MatrixState.DISABLED = 0;
MatrixState.ENABLED = 1;
MatrixState.CLICKED_FOR_ENABLE = 2;
MatrixState.CLICKED_FOR_DISABLE = 3;
MatrixState.WILL_BE_DISABLED = 4;

MatrixState.CLICK_TRANSITION = [
    MatrixState.CLICKED_FOR_ENABLE,
    MatrixState.CLICKED_FOR_DISABLE,
    MatrixState.DISABLED,
    MatrixState.ENABLED,
    MatrixState.ENABLED,
];

MatrixState.CLEAR_TRANSITION = [
    MatrixState.DISABLED,
    MatrixState.ENABLED,
    MatrixState.DISABLED,
    MatrixState.ENABLED,
    MatrixState.ENABLED
];

MatrixState.RELEASE_TRANSITION = [
    MatrixState.DISABLED,
    MatrixState.ENABLED,
    MatrixState.ENABLED,
    MatrixState.DISABLED,
    MatrixState.DISABLED
];
