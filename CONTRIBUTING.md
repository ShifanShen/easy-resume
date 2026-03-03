# 贡献指南

感谢你考虑为 Easy Resume 做出贡献！

## 如何贡献

### 报告问题

如果你发现了 bug 或有功能建议：

1. 先检查 [Issues](https://github.com/yourusername/easy-resume/issues) 看是否已有人报告
2. 如果没有，创建一个新的 Issue，包含：
   - 清晰的标题
   - 详细的问题描述
   - 复现步骤
   - 截图（如果适用）
   - 你的操作系统和 LaTeX 版本信息

### 提交代码

#### 准备工作

1. Fork 本仓库
2. 克隆到本地：
   ```bash
   git clone https://github.com/yourusername/easy-resume.git
   ```
3. 创建新分支：
   ```bash
   git checkout -b feature/your-feature-name
   ```

#### 代码规范

- 保持代码风格一致
- 添加必要的注释
- 确保 LaTeX 代码可编译通过
- 测试你的修改不会破坏现有功能

#### 提交更改

1. 提交代码：
   ```bash
   git add .
   git commit -m "feat: 添加新功能描述"
   ```

   提交信息格式：
   - `feat:` 新功能
   - `fix:` 修复 bug
   - `docs:` 文档更新
   - `style:` 代码格式调整
   - `refactor:` 重构
   - `chore:` 构建或辅助工具变动

2. 推送到你的 Fork：
   ```bash
   git push origin feature/your-feature-name
   ```

3. 创建 Pull Request：
   - 填写 PR 模板
   - 说明你的改动内容
   - 关联相关 Issue

### 文档贡献

文档改进同样重要！你可以：

- 修正拼写错误
- 改进说明文档
- 添加使用示例
- 翻译文档

## 开发建议

### 测试你的更改

```bash
# 编译简历模板
xelatex resume_template.tex
xelatex resume_template.tex

# 检查 PDF 是否正常生成
```

### LaTeX 代码规范

- 使用 2 空格缩进
- 保持段落间适当的空白
- 注释解释复杂的 LaTeX 命令
- 使用宏包的标准用法

## 项目结构

```
easy-resume/
├── resume_template.tex    # 主模板文件
├── README.md             # 项目说明
├── CONTRIBUTING.md      # 贡献指南
├── LICENSE              # MIT 许可证
└── .gitignore           # Git 忽略规则
```

## 行为准则

- 保持友好和专业的态度
- 尊重不同的观点
- 专注于建设性的讨论
- 帮助新贡献者

## 获取帮助

如果你在贡献过程中遇到问题，可以：

- 提交 Issue
- 在 Issue 中讨论
- 联系维护者

---

再次感谢你的贡献！
