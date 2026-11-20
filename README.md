# Soil LBM | 三维孔隙尺度 CUDA 程序

本仓库提供基于格子 Boltzmann 方法（LBM）的 Windows 原生 CUDA 计算程序，涵盖蒸发、单相流与渗透率、气体输运、溶质运移、融化及有效热导率。各模块独立运行，主要用于三维数字孔隙结构的数值模拟。

## 程序下载

| 模块 | 简介 | EXE | 配置 | 启动脚本 |
|---|---|---|---|---|
| 等温蒸发 | 恒温条件下的液–气两相蒸发 | [下载](Evaporation/release/SoilEvaporationLBM.exe) | [TXT](Evaporation/release/config.txt) | [BAT](Evaporation/release/run.bat) |
| 非等温蒸发 | 考虑温度变化的蒸发，底部可封闭或补水 | [下载](Evaporation/release/SoilEvaporationLBM_NonIsothermal.exe) | [TXT](Evaporation/release/config_nonisothermal.txt) | [BAT](Evaporation/release/run_nonisothermal.bat) |
| 单相流 MRT | 孔隙流动与内禀渗透率 | [下载](Single_phase/release/LBM_SinglePhase_MRT.exe) | [TXT](Single_phase/release/config_single_phase.txt) | [BAT](Single_phase/release/run_single_phase.bat) |
| LEV–MRT 气体 | 位置相关有效黏度与气体表观渗透率 | [下载](Single_phase/LEV_MRT/release/LBM_LEV_MRT.exe) | [TXT](Single_phase/LEV_MRT/release/config_lev_mrt.txt) | [BAT](Single_phase/LEV_MRT/release/run_lev_mrt.bat) |
| 融化 | 冰–水相变与传热 | [下载](Melting/release/LBM_Melting_MRT.exe) | [TXT](Melting/release/config_melting.txt) | [BAT](Melting/release/run_melting.bat) |
| 溶质运移 | 孔隙流动、扩散与穿透曲线 | [下载](Solute_transport/release/LBM_SoluteTransport.exe) | [TXT](Solute_transport/release/config_solute.txt) | [BAT](Solute_transport/release/run_solute.bat) |
| 有效热导率 | 三维孔隙结构的稳态导热 | [下载](Thermal_conductivity/release/LBM_ThermalConductivity.exe) | [TXT](Thermal_conductivity/release/config_thermal.txt) | [BAT](Thermal_conductivity/release/run_thermal.bat) |

## 如何使用

1. 进入对应模块，下载 EXE、TXT 配置和 BAT 启动脚本，放在同一文件夹。
2. 在 TXT 中修改输入文件路径、网格尺寸、物理参数和输出位置。
3. 准备与配置尺寸相符的孔隙结构数据，双击 BAT 运行。
4. 在设置的输出目录查看计算结果。具体输入格式见各模块说明。

运行需要 Windows x64、兼容的 NVIDIA 显卡和驱动；不必安装 Python、Taichi 或 CUDA Toolkit。公开目录仅提供 EXE、配置和使用说明，不提供明文求解源码。

**试用期限：**各原生 CUDA 程序共享同一 Windows 用户与设备的本地授权状态，从首次运行起连续 **72 小时**。到期后程序停止运行，重新下载不会重置期限。

## 模块说明

- [蒸发](Evaporation/README.md) · [单相流](Single_phase/README.md) · [LEV–MRT](Single_phase/LEV_MRT/README.md) · [融化](Melting/README.md)
- [溶质运移](Solute_transport/README.md) · [热导率](Thermal_conductivity/README.md)

各模块保留简要[验证说明](Evaporation/validation/README.md)。Windows 编译通过不等于所有 GPU 数值算例均已独立复验。
