# Thermal conductivity | 三维有效热导率

本模块计算固体、水和空气共同构成的三维孔隙介质在稳态条件下的有效热导率，支持二值几何、灰度材料以及多种局部导热系数混合方式。

## 下载与运行

- [EXE](release/LBM_ThermalConductivity.exe) · [配置](release/config_thermal.txt) · [启动脚本](release/run_thermal.bat)

1. 将 EXE、TXT 和 BAT 放在同一目录。
2. 配置二值/灰度输入文件、网格尺寸、土壤容重、材料热物性、含水状态和上下边界温度。
3. 双击 `run_thermal.bat` 计算。批量运行可使用 [batch_cases.csv](release/batch_cases.csv) 与 [run_thermal_batch.bat](release/run_thermal_batch.bat)。

结果包括有效热导率、垂向温度和热通量 CSV，以及按配置输出的 VTR 场文件。计算的是稳态导热，不代表真实物理时间上的瞬态温度变化。

程序需要兼容的 NVIDIA GPU，并与其他 EXE 共享连续 **72 小时**试用期限。已完成六类主机端基准检查，独立 GPU 数值复验仍需开展，见[验证说明](validation/README.md)。
