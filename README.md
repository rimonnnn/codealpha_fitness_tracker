# 🏋️‍♂️ Fitness Tracker App

A simple and elegant **Fitness Tracker** built with **Flutter** to help users monitor their physical activities, track daily progress, and stay motivated toward their fitness goals.

---

## 📱 Overview

**Fitness Tracker** is a mobile application designed to display user progress through steps, calories, and recent activities.  
It provides a smooth and clean UI with sections for:
- Current fitness programs 🧘‍♂️  
- Daily activity summary 🚴‍♂️  
- Personalized greeting and user profile 🧍‍♂️

  ## Screenshots

| Home Screen | Activity Screen |
|--------------|----------------|
| ![Home](assets/scre<img width="290" height="615" alt="Android Emulator - Pixel_3_5554 10_30_2025 12_55_22 AM" src="https://github.com/user-attachments/assets/5545d2ad-d64a-4563-83d1-58b276bc63dd" />
enshots/home.png) | ![Activity](assets/screen<img width="290" height="615" alt="Android Emulator - Pixel_3_5554 10_30_2025 12_55_36 AM" src="https://github.com/user-attachments/assets/7648a9eb-739b-46de-b863-6c5c41441477" >

---

## ✨ Features

- 📊 **Dashboard Overview** – Displays current steps, calories burned, and total time.
- 💪 **Current Programs Section** – Shows active fitness programs with type, calories, and time.
- 🏃 **Recent Activities List** – Lists user’s recent activities (running, yoga, walking, etc.).
- 👋 **Personalized Header** – Dynamic header that greets the user with name and avatar.
- 🎨 **Custom UI Design** – Built with `CustomPainter` for a modern, curved background effect.
- ⚡ **Fast Navigation** – Move between pages using `Navigator.pushNamed()`.

---

## 🧩 Folder Structure

lib/
├── main.dart
├── models/
│ └── fitness_program.dart
├── pages/
│ └── home/
│ ├── widgets/
│ │ ├── header.dart
│ │ ├── current.dart
│ │ └── activity.dart
│ └── home_page.dart
├── widgets/
│ ├── bottom_navigation.dart
│ └── helpers.dart
└── assets/
├── profile.png
└── running.jpg

Recent Activities

Displays a scrollable list of random fitness activities with icons and stats.

ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) => ActivityItem(),


Technologies Used

Flutter (Dart)

Material Design

CustomPainter for UI effects

Navigator for routing

ListView for dynamic content


  



