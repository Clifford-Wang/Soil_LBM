# Melting | 三维孔隙冰融化

本模块模拟三维孔隙中冰向液态水的转变，以及传热和自然对流的影响。可通过配置分别计算有、无自然对流的工况。

## 下载与运行

- [EXE](release/LBM_Melting_MRT.exe) · [配置](release/config_melting.txt) · [启动脚本](release/run_melting.bat)

1. 将 EXE、TXT 和 BAT 放在同一目录。
2. 在输入目录准备与配置尺寸一致的二值孔隙几何及初始温度 TXT 文件。
3. 在配置中设置边界温度、材料热物性、计算步数和输出目录。侧面可选周期或绝热边界。
4. 双击 `run_melting.bat` 启动。

结果包括温度、液相分布、统计 CSV、VTR 场和计算断点。运行需兼容的 NVIDIA 显卡，试用期为首次运行起连续 **72 小时**。

研究阶段的相变和自然对流图见[验证页](validation/README.md)，不等于当前 EXE 已完成全部 GPU 数值复验。
