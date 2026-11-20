# Solute transport | 三维溶质运移

本模块用于计算饱和多孔介质中的流动、溶质扩散和随流运移。可以设置入口脉冲或持续输入，观察浓度场和穿透曲线，也支持无流动的纯扩散计算。

## 下载与运行

- [EXE](release/LBM_SoluteTransport.exe) · [配置](release/config_solute.txt) · [启动脚本](release/run_solute.bat)

1. 将 EXE、TXT 和 BAT 放在同一目录。
2. 将二值或已标定的灰度孔隙数据放入输入目录，修改配置文件中的尺寸、输入路径、流动与输运选项。
3. 选择扩散或对流—弥散模式，设置入口脉冲/阶跃条件与输出间隔，双击 `run_solute.bat`。

输出包括穿透曲线、输运参数 CSV、三维浓度 VTR 等；不同样品的结果分别保存。原生 CUDA EXE 与其他模块共享连续 **72 小时**试用期限。

主机端检查已通过，但实际 GPU 数值对照仍应独立完成，见[验证说明](validation/README.md)。
