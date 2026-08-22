# Cat-puccino Drink Tracker

Language: [English](#english) | [中文](#中文)

---

## English

[Switch to 中文](#中文)

Cat-puccino Drink Tracker is a cozy, cat-themed drink tracking web app prototype for logging coffee, milk tea, juice, soda, and other daily beverages. It combines a playful cafe-inspired visual style with practical tracking features, helping users record what they drank, review their habits, and build a lightweight personal drink diary.

The project is currently implemented as a static front-end prototype. It runs directly in the browser and stores user data locally with `localStorage`, so no backend account system or database setup is required.

### Features

- Cat-themed login and onboarding flow
- Local demo account for quick exploration
- Daily drink logging with name, brand/shop, category, price, sweetness, ice level, photo, and personal review
- Home dashboard with daily summary cards
- Recent drink photo timeline
- Stats page for weekly, monthly, and yearly summaries
- Calendar view for checking drink records by date
- Profile page with lifetime stats, streaks, and progression
- Rank and XP system to make tracking feel more game-like
- Customizable home layout with drag, reorder, resize, and saved preferences
- Notification panel and detail modal
- Privacy and terms modal content
- Mobile-first interface framed like an app screen

### Tech Stack

- HTML5
- CSS3
- Tailwind CSS via CDN
- JavaScript
- Browser `localStorage`
- Google Fonts: Plus Jakarta Sans
- Google Material Symbols

No package manager, build tool, framework, or server-side runtime is required for the current version.

### How To Play

Cat-puccino is part tracker and part cozy collection game.

1. Open the app.
2. Create a local account, log in, or use the demo account.
3. Tap **Record Sip** to add a new drink.
4. Fill in drink details such as drink name, brand, category, price, sweetness, ice level, and review.
5. Add a photo if you want to build a visual timeline of your drinks.
6. Check the home dashboard to see today's cups and total volume.
7. Visit the stats tab to compare your weekly, monthly, or yearly drink habits.
8. Open the calendar to browse records by day.
9. Use the profile page to track lifetime progress, streaks, caffeine-themed rank progress, and achievements.
10. Customize the home dashboard layout to make the app feel personal.

Because the app uses local browser storage, all records stay on the current device and browser unless the data is cleared.

### Local Usage

Clone the repository:

```bash
git clone https://github.com/Brookell/cat-pu-c-ci-no.git
cd cat-pu-c-ci-no
```

Open `index.html` directly in a browser, or run a simple local static server:

```bash
python3 -m http.server 8000
```

Then visit:

```text
http://localhost:8000
```

### Project Structure

```text
.
├── index.html                 # Main interactive app prototype
├── black_cat.png              # Cat visual asset
├── cat-cup.png                # Cat cup visual asset
├── middle.png                 # Supporting image asset
├── login_screen/              # Login screen reference prototype and screenshot
├── home_daily_log/            # Home/daily log reference prototype and screenshot
├── calendar_stats/            # Calendar/statistics reference prototype and screenshot
├── user_profile/              # Profile screen reference prototype and screenshot
└── calico_cream/DESIGN.md     # Design system strategy
```

### Design Direction

The visual identity follows a warm boutique cafe mood: soft cream surfaces, espresso brown accents, plush rounded controls, layered cards, subtle texture, and cat-inspired details. The design goal is to feel friendly and comforting while still providing useful drink tracking tools.

Key design ideas include:

- Warm coffee and cream color palette
- Mobile-first app-like layout
- Soft rounded UI components
- Tonal layering instead of harsh borders
- Playful cat elements without overwhelming the interface
- Cozy dashboard experience for repeated daily use

### Data Storage

The prototype stores data in the browser with `localStorage`, including:

- Local users
- Drink records
- Uploaded image previews
- Layout order
- Module sizes
- Bento card preferences

Clearing browser storage or using the app in another browser/device will remove or hide existing local data.

### Current Status

This is a front-end prototype focused on interface, interaction, and product concept validation. It is suitable for demoing the app flow and testing the feel of the product.

### Future Improvements

- Add a real backend and database
- Add secure authentication
- Support cloud sync across devices
- Improve accessibility and keyboard navigation
- Add export/import for drink records
- Add richer charts and trend insights
- Add achievements and collectible cat badges
- Convert the static prototype into a component-based app
- Add automated tests

### License

No license has been specified yet.

---

## 中文

[切换到 English](#english)

Cat-puccino Drink Tracker 是一个温暖、可爱、带有猫咪主题的饮品记录 Web App 原型。它可以用来记录咖啡、奶茶、果汁、汽水以及其他日常饮品，把实用的饮品追踪功能和咖啡馆风格的视觉体验结合起来，帮助用户记录自己喝了什么、回顾饮品习惯，并建立一份轻量的个人饮品日记。

当前项目是一个静态前端原型，可以直接在浏览器中运行。用户数据通过浏览器的 `localStorage` 保存在本地，因此不需要后端账号系统，也不需要数据库配置。

### 项目功能

- 猫咪主题登录与引导界面
- 本地 Demo 账号，方便快速体验
- 每日饮品记录：饮品名称、品牌/店铺、分类、价格、甜度、冰量、图片和个人评价
- 首页仪表盘，展示当天饮品摘要
- 最近饮品图片时间线
- 统计页面，支持周、月、年维度查看
- 日历视图，用于按日期查看饮品记录
- 个人主页，展示累计数据、连续记录天数和成长进度
- 等级与 XP 系统，让记录过程更有游戏感
- 首页布局自定义，支持拖拽、排序、调整大小并保存偏好
- 通知面板和通知详情弹窗
- 隐私政策与服务条款弹窗
- 移动端优先的 App 风格界面

### 技术栈

- HTML5
- CSS3
- Tailwind CSS CDN
- JavaScript
- 浏览器 `localStorage`
- Google Fonts: Plus Jakarta Sans
- Google Material Symbols

当前版本不依赖包管理器、构建工具、前端框架或服务端运行环境。

### 玩法说明

Cat-puccino 既是一个饮品记录工具，也是一个轻量的温馨收集体验。

1. 打开应用。
2. 创建本地账号、登录已有账号，或使用 Demo 账号体验。
3. 点击 **Record Sip** 添加一杯新饮品。
4. 填写饮品名称、品牌、分类、价格、甜度、冰量和评价。
5. 可以上传饮品照片，建立自己的视觉饮品时间线。
6. 在首页查看当天杯数和总饮用量。
7. 进入统计页，对比周、月、年的饮品习惯。
8. 打开日历，按日期浏览记录。
9. 在个人页查看累计进度、连续记录天数、等级和成就。
10. 自定义首页模块布局，让应用更符合自己的使用习惯。

由于项目使用浏览器本地存储，所有记录默认只保存在当前设备和当前浏览器中。如果清除浏览器数据，或换设备/换浏览器使用，原有本地记录将不会自动同步。

### 本地运行

克隆仓库：

```bash
git clone https://github.com/Brookell/cat-pu-c-ci-no.git
cd cat-pu-c-ci-no
```

可以直接用浏览器打开 `index.html`，也可以启动一个简单的本地静态服务器：

```bash
python3 -m http.server 8000
```

然后访问：

```text
http://localhost:8000
```

### 项目结构

```text
.
├── index.html                 # 主交互应用原型
├── black_cat.png              # 猫咪视觉素材
├── cat-cup.png                # 猫咪杯子视觉素材
├── middle.png                 # 辅助图片素材
├── login_screen/              # 登录页参考原型与截图
├── home_daily_log/            # 首页/每日记录参考原型与截图
├── calendar_stats/            # 日历/统计页参考原型与截图
├── user_profile/              # 个人页参考原型与截图
└── calico_cream/DESIGN.md     # 设计系统策略文档
```

### 设计方向

项目视觉风格围绕温暖的精品咖啡馆氛围展开：柔和奶油色背景、浓缩咖啡色强调色、圆润柔软的控件、层叠式卡片、细腻纹理以及猫咪主题细节。设计目标是在保持实用饮品记录能力的同时，让应用本身也具有舒适、治愈、可持续使用的体验。

核心设计特点包括：

- 咖啡与奶油色系构成的温暖配色
- 移动端优先的 App 式布局
- 柔和圆润的 UI 组件
- 使用色块层级而不是生硬边框来区分内容
- 轻量猫咪元素，增强趣味但不干扰使用
- 适合每日反复打开的舒适仪表盘体验

### 数据存储

当前原型使用浏览器 `localStorage` 存储数据，包括：

- 本地用户
- 饮品记录
- 上传图片预览
- 首页模块顺序
- 模块尺寸
- Bento 卡片偏好

清除浏览器存储，或在其他浏览器/设备中打开应用，都可能导致原有本地数据不可见。

### 当前状态

本项目目前是一个以前端界面、交互流程和产品概念验证为重点的静态原型，适合用于展示核心 App 流程、测试视觉风格和验证产品体验。

### 后续计划

- 增加真实后端和数据库
- 增加安全的用户认证
- 支持跨设备云同步
- 改进无障碍体验和键盘操作
- 支持饮品记录导出/导入
- 增加更丰富的数据图表和趋势洞察
- 增加成就系统和可收集猫咪徽章
- 将静态原型升级为组件化前端应用
- 增加自动化测试

### 许可证

当前项目尚未指定许可证。
