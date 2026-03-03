# 示例说明

本目录包含简历模板的使用示例。

## 示例文件

- `resume_example.tex` - 完整示例简历（待添加）

## 添加照片

### 照片要求

- **尺寸**: 一寸照片 (25mm × 35mm)
- **格式**: JPG 或 PNG
- **背景**: 建议使用白色或浅色背景
- **分辨率**: 300 DPI 以上

### 添加方法

1. 将照片命名为 `photo.jpg`（或 `photo.png`）
2. 放在项目根目录下（与 `resume_template.tex` 同级）
3. 在模板文件中取消注释照片显示代码：

```latex
% 在 resume_template.tex 第 89 行附近
% 取消注释下面这行：
\node[anchor=south west,inner sep=0] at (0,0) {\includegraphics[width=2.5cm,height=3.5cm]{photo.jpg}};
```

### 调整照片大小

如果照片尺寸不合适，可以调整参数：

```latex
% 保持比例缩放
\includegraphics[width=2.5cm]{photo.jpg}

% 固定宽高
\includegraphics[width=2.5cm,height=3.5cm]{photo.jpg}

% 自定义尺寸
\includegraphics[width=3cm,height=4cm]{photo.jpg}
```

## 常见照片问题

| 问题 | 解决方案 |
|------|----------|
| 照片变形 | 只指定宽度或高度，让另一边自动按比例缩放 |
| 照片位置偏移 | 调整 `anchor` 参数或坐标位置 |
| 照片模糊 | 使用更高分辨率的图片 |
| 背景不协调 | 使用白色背景或使用图片处理软件去除背景 |

## 在线照片工具

如果需要调整照片，可以使用以下在线工具：

- [Remove.bg](https://www.remove.bg/) - 免费去除背景
- [Iloveimg](https://www.iloveimg.com/) - 图片裁剪和调整
- [Photopea](https://www.photopea.com/) - 在线图片编辑器
