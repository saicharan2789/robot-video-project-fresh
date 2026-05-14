# 🚀 Robot Framework + Browser (Playwright) UI Automation

This project demonstrates UI automation using **Robot Framework** with the **Browser library (Playwright)**.
It includes video recording, trace debugging, screenshots on failure, and CI/CD integration.

---

## 🧠 Tech Stack

* Robot Framework (test runner)
* Browser Library (Playwright wrapper)
* Playwright (browser engine)
* Python 3

---

## 📁 Project Structure

```
robot-video-project/
│
├── tests/                # Test cases (.robot files)
├── resources/            # Reusable keywords (optional)
├── output/               # Test results (ignored in git)
│   ├── videos/
│   └── traces/
│
├── requirements.txt      # Dependencies
├── .gitignore
└── README.md
```

---

## ⚙️ Setup Instructions

### 1. Clone the repository

```
git clone <your-repo-url>
cd robot-video-project
```

### 2. Create virtual environment

```
python3 -m venv venv
source venv/bin/activate
```

### 3. Install dependencies

```
pip3 install -r requirements.txt
```

### 4. Install browsers (Playwright)

```
rfbrowser init
```

---

## ▶️ Run Tests

```
robot -d output tests/
```

* `-d output` → stores results in `output/` folder
* Runs all `.robot` files inside `tests/`

---

## 📊 Test Outputs

After execution:

* `output/log.html` → detailed logs
* `output/report.html` → summary report
* `output/videos/` → recorded test sessions
* `output/traces/` → Playwright trace files

Open report:

```
open output/log.html
```

---

## 🎥 Features

### ✅ Video Recording

Enabled via:

```
New Context    recordVideo={'dir': 'output/videos/'}
```

---

### 🔍 Trace Debugging

```
New Context    tracing={'screenshots': True, 'snapshots': True}
```

View trace:

```
playwright show-trace output/traces/*.zip
```

---

### 📸 Screenshot on Failure

Configured in settings:

```
Test Teardown    Run Keyword If Test Failed    Take Screenshot
```

---



## ⚠️ Important Notes

* Always call `Close Context` → required for video/trace saving
* Do not commit `output/` or `venv/`
* Avoid using `Sleep`; rely on auto-waiting

---

## 🧠 Key Concept

```
Robot Framework → Test orchestration  
Browser Library → Playwright integration  
Playwright → Execution engine  
```

---

## ❓ Troubleshooting

| Issue                 | Cause                    | Fix                     |
| --------------------- | ------------------------ | ----------------------- |
| No video generated    | Context not closed       | Add `Close Context`     |
| Browser not launching | Playwright not installed | Run `rfbrowser init`    |
| Keywords not found    | Library not loaded       | Check `Library Browser` |

---

## 🔥 Future Enhancements

* AI-based failure analysis
* Self-healing locators
* Smart test prioritization
* Parallel execution using Pabot

---

## 👤 Author

Saicharan Muthyapwar

---
