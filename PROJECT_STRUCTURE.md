# 项目结构

```
easy-resume/
│
├── resume_template.tex          # 主简历模板文件（使用此文件）
├── photo.jpg                   # 一寸照片（用户自行添加，不上传）
│
├── README.md                   # 项目说明文档
├── CHANGELOG.md                # 版本更新日志
├── CONTRIBUTING.md             # 贡献指南
├── LICENSE                     # MIT 许可证
├── PROJECT_STRUCTURE.md        # 本文件
│
├── build.sh                    # 编译脚本（Linux/macOS）
├── build.bat                   # 编译脚本（Windows）
├── Makefile                    # Make 编译配置（Linux/macOS）
│
├── .gitignore                 # Git 忽略文件配置
├── .git/                      # Git 仓库（自动生成）
│
└── examples/                   # 示例和额外资源
    └── README.md              # 照片添加说明

编译生成的临时文件（会被忽略）：
├── *.aux                      # 辅助文件
├── *.log                      # 日志文件
├── *.out                      # 输出文件
├── *.toc                      # 目录文件
├── *.synctex.gz              # 同步文件
├── *.fls                     # 文件列表
└── *.fdb_latexmk             # Latexmk 数据库
```

## 快速导航

| 任务 | 文件/脚本 |
|------|----------|
| 编辑简历 | `resume_template.tex` |
| 编译简历（Windows） | 双击 `build.bat` |
| 编译简历（Linux/macOS） | `./build.sh` 或 `make` |
| 添加照片 | 将 `photo.jpg` 放在根目录 |
| 了解项目 | `README.md` |
| 贡献代码 | `CONTRIBUTING.md` |
| 查看更新 | `CHANGELOG.md` |

## 文件说明

### 核心文件

- **resume_template.tex**: 简历模板源文件，包含所有内容和样式定义

### 文档文件

- **README.md**: 项目主文档，包含安装、使用、自定义等说明
- **CONTRIBUTING.md**: 贡献指南，说明如何参与项目开发
- **CHANGELOG.md**: 版本更新历史
- **LICENSE**: MIT 开源许可证

### 编译工具

- **build.bat**: Windows 批处理编译脚本
- **build.sh**: Linux/macOS Shell 编译脚本
- **Makefile**: Make 编译配置文件

### 配置文件

- **.gitignore**: Git 忽略文件配置，避免提交临时文件和个人照片

## 使用流程

1. 克隆或下载项目
2. （可选）添加个人照片
3. 编辑 `resume_template.tex` 填写个人信息
4. 运行编译脚本生成 PDF
5. 检查并调整
