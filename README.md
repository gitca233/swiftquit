# Swift Quit (1.5.1-fixed)

## 本分支说明 / About This Fork

> 中文

本分支从 [onebadidea/swiftquit](https://github.com/onebadidea/swiftquit) fork 而来，基于 **GPL-3.0** 许可证修改。

**为什么有这个分支**：原作者最后一次发布安装包（v1.5）是在 2023 年 3 月。此后官方源码虽修复了一个随机崩溃 bug（关闭窗口后应用进程已消失、强制解包导致闪退），却一直没有发布新的安装包。为了让**不会编译的 Mac 用户**也能直接用上修复版，这里使用最新源码自行编译，并附上可直接安装的 App。

**与官方 v1.5 的区别**：
- 修复随机崩溃（`NSRunningApplication.init(pid)!` 强制解包 → `guard` 安全解包）
- 菜单栏图标恢复为 v1.5 原版样式
- Xcode 27 编译，适用于 macOS 12+（Apple Silicon 与 Intel）

**安装**：下载 Releases 里的 zip → 解压 → 把 `Swift Quit.app` 拖入「应用程序」→ 首次启动到「系统设置 → 隐私与安全性 → 辅助功能」手动添加并开启授权 → 双击启动。启动项可随后在 App 设置里开启。

> English

This fork is derived from [onebadidea/swiftquit](https://github.com/onebadidea/swiftquit), redistributed under the **GPL-3.0** license.

**Why this fork exists**: The upstream author's last official release (v1.5) was in March 2023. Although the crash fix (force-unwrap of `NSRunningApplication.init(pid)` when a just-closed app has already exited) landed in the source later, no new installer was ever released. This fork builds from the latest source so users who **don't compile software** can still get the fixed version as a ready-to-install app.

**Differences from official v1.5**:
- Fixed random crash (force unwrap → guarded `guard` statements)
- Menu bar icon restored to the v1.5 original
- Built with Xcode 27, requires macOS 12+ (Apple Silicon & Intel)

**Install**: Download the zip from Releases → unzip → drag `Swift Quit.app` into Applications → on first launch, add & enable it under System Settings → Privacy & Security → Accessibility → launch. Optionally enable "Launch at login" in settings.

---

# Swift Quit
Swift Quit enables automatic quitting of macOS apps when closing their windows (clicking the red x). It can be configured to quit when the last window of any app closed, or restricted to a specific list of apps. Additionally, you can exclude apps you dont want to quit automatically.

# Use At Your Own Risk
Some users have reported issues with unwanted closing of windows or other problems so use at your own risk.

# Website
https://swiftquit.com

# Download
https://swiftquit.com/downloads/Swift%20Quit.zip

# Installation Instructions
https://www.youtube.com/watch?v=WwWF-yekX-U

1. Install via Homebrew "brew install --cask swift-quit"
2. Or download from https://swiftquit.com, unzip, and move app to applications folder.
------------
3. Open finder to applications folder and ctrl+click swift quit.app then select open (You may need to do this twice)
5. When prompted click open system preferences
6. Unlock system preferences by clicking the lock icon
7. Drag Swift Quit.app into the accessibility list and enable it
8. Double click Swift Quit.app
9. Optionally enable start automatically in settings

# Upgrading To A New Version
In order to upgrade to a new version you must first remove the old version from Sytem Preferences => Security & Privacy => Accessibility.  Then you can drag the new version in and enable it.

# Build From Source / 自行编译
需要 Xcode 12+（推荐最新版）。在项目根目录直接运行：

```bash
./build.sh
```

产物在 `build/Build/Products/Release/Swift Quit.app`。或用 Xcode 打开 `Swift Quit.xcodeproj` 直接 Run。