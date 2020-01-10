# conda-opensim
Unofficial conda recipe for OpenSim 4.1
https://anaconda.org/kim135797531/opensim-nightly

(For End-User)
Install:

    conda install -c kim135797531 opensim-nightly

(For Developer)
Prepare:

    conda env with python3.6

Build:

    cd conda-opensim
    conda build opensim --python 3.6

(For debugging)

    # 그냥 source 하면 빌드 폴더를 새로 만든다. (재활용 불가)
    # 그냥 dirty 하면 source는 안 가져 온다. (원본 코드 수정 반영 불가)
    conda build opensim --python=3.6 --source --dirty

    # source 업뎃 후에 빌드를 해야 한다.
    conda build opensim --python=3.6 --no-test --dirty
