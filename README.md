# 🧠 个人 AI Agent 技能与工作流知识库 (Agent Skills Knowledge Base)

> 本仓库是开发者的专属 **AI Agent 技能知识库**，存放可复用、高可靠的自动化工作流技能（Skills）。与 Antigravity 深度集成，赋能 AI 智能体完成代码部署、自动化运维、故障诊断与全流程交付。

---

## 🗂️ 现有技能目录

| 技能名称 | 目录路径 | 核心能力描述 |
| :--- | :--- | :--- |
| **`auto-deploy-cicd`** | [`skills/auto-deploy-cicd/`](./skills/auto-deploy-cicd/) | **Web 项目全自动部署与秒级版本回滚**：仅凭一个新域名即可全自动配置 Nginx、Let's Encrypt SSL、构建 GitHub Actions CI/CD 流水线，并支持线上零停机一键秒级原子版本回滚与 MySQL 灾备。 |

---

## 🚀 极速同步至本地环境

将知识库内的所有技能一键同步至本地 Antigravity 全局技能库（`~/.gemini/config/skills/`）：

```powershell
# 在本项目根目录执行
.\scripts\sync-skills.ps1
```

执行后，本机打开的**任何项目**均可直接呼叫知识库中的技能！

---

## 🛠️ 如何添加与更新技能

### 1. 新增一个技能
在 `skills/` 目录下创建新技能子文件夹，标准目录结构：
```text
skills/<skill-name>/
├── SKILL.md              # 必需：符合 Antigravity 规范的入口指令（包含 YAML frontmatter）
├── README.md             # 详细的人类友好操作与使用说明书
├── resources/            # 可复用的配置文件、CI/CD 模板、自动化 Shell 脚本
└── references/           # 深度踩坑解析、最佳实践手册
```

### 2. 更新技能与持续维护
修改或优化技能代码后，只需标准 Git 提交：
```bash
git add .
git commit -m "feat(skill): 优化 auto-deploy-cicd 回滚逻辑"
git push origin main
```
云端知识库即刻完成更新，团队与多机环境只需拉取并运行 `sync-skills.ps1` 即可享受最新自动化能力。
