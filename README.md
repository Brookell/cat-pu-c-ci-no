# Cat-puccino Drink Tracker

Cat-puccino Drink Tracker is a cozy, cat-themed drink tracking web app prototype for logging coffee, milk tea, juice, soda, and other daily beverages. It combines a playful cafe-inspired visual style with practical tracking features, helping users record what they drank, review their habits, and build a lightweight personal drink diary.

The project is currently implemented as a static front-end prototype. It runs directly in the browser and stores user data locally with `localStorage`, so no backend account system or database setup is required.

## Features

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

## Tech Stack

- HTML5
- CSS3
- Tailwind CSS via CDN
- JavaScript
- Browser `localStorage`
- Google Fonts: Plus Jakarta Sans
- Google Material Symbols

No package manager, build tool, framework, or server-side runtime is required for the current version.

## How To Play

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

## Local Usage

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

## Project Structure

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

## Design Direction

The visual identity follows a warm boutique cafe mood: soft cream surfaces, espresso brown accents, plush rounded controls, layered cards, subtle texture, and cat-inspired details. The design goal is to feel friendly and comforting while still providing useful drink tracking tools.

Key design ideas include:

- Warm coffee and cream color palette
- Mobile-first app-like layout
- Soft rounded UI components
- Tonal layering instead of harsh borders
- Playful cat elements without overwhelming the interface
- Cozy dashboard experience for repeated daily use

## Data Storage

The prototype stores data in the browser with `localStorage`, including:

- Local users
- Drink records
- Uploaded image previews
- Layout order
- Module sizes
- Bento card preferences

Clearing browser storage or using the app in another browser/device will remove or hide existing local data.

## Current Status

This is a front-end prototype focused on interface, interaction, and product concept validation. It is suitable for demoing the app flow and testing the feel of the product.

## Future Improvements

- Add a real backend and database
- Add secure authentication
- Support cloud sync across devices
- Improve accessibility and keyboard navigation
- Add export/import for drink records
- Add richer charts and trend insights
- Add achievements and collectible cat badges
- Convert the static prototype into a component-based app
- Add automated tests

## License

No license has been specified yet.
