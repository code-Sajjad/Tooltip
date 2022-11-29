
<div align="center">
  <h1 align="center">Sajjad-Projects</h1>
  <p align="center">
    Research Video topic :<strong> Tooltip Widget</strong>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#1.-Research:-Project-Title">Research: Project Title</a>
    </li>
    <li>
      <a href="#2. Research: Competitors">Research: Competitors</a>
      <ul>
        <li><a href="#Flutter-Videos/Articles">Flutter Videos/Articles</a></li>
        <li><a href="#Android/Swift/React Videos">Android/Swift/React Videos</a></li>
        <li><a href="#Great Features">Great Features</a></li>
      </ul>
    </li>
    <li><a href="#Research: Available Problems">Research: Available Problems</a>
    <ul>
        <li><a href="#Problems from Videos">Problems from Videos</a></li>
        <li><a href="#Problems from Flutter Stackoverflow">Problems from Flutter Stackoverflow</a></li>
      </ul>
      </li>
    <li><a href="#Video Structure">Video Structure</a>
    <ul>
        <li><a href="#Main Points / Purpose Of Lesson">Main Points / Purpose Of Lesson</a></li>
        <li><a href="#Why should we use it">Why should we use it</a></li>
        <li><a href="#Intro">Intro</a></li>
        <li><a href="#The Structured Main Content">The Structured Main Content</a></li>
      </ul>
    </li>  
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## 1. Research: Project Title 
- Keywords: 
  - ToolTip Widget
  - Show tooltip on click Flutter
  - Tooltip Flutter example
  - Tooltip in IconButton Flutter
  - Flutter show tooltip on tap
  - Tooltip with arrow Flutter
  - Custom tooltip Flutter
  - Overlay tooltip Flutter
  - Show tooltip on click Flutter
  - Show Tooltip on tap flutter
  - icon tooltip flutter
  - Tooltip Flutter example
  - Tooltip Flutter 

- Video Title: Flutter Tutorial - Tooltip Widget.


## 2. Research: Competitors

**Flutter Videos/Articles**

- https://www.javatpoint.com/flutter-tooltip
- https://www.tutorialkart.com/flutter/flutter-tooltip/
- https://medium.flutterdevs.com/implement-tooltip-in-flutter-1b4a870f5498
- https://appmaking.com/flutter-popup-menu-button-example/
- https://www.geeksforgeeks.org/flutter-tooltip-widget/#:~:text=Tooltip%20is%20a%20built%2Din,or%20hover%20over%20the%20widget.
- 4k - https://www.youtube.com/watch?v=Q96-u1GLyhw
- 152k - https://www.youtube.com/watch?v=EeEfD5fI-5Q
- 4.6k - https://www.youtube.com/watch?v=swCayQOskZA
- 727 - https://www.youtube.com/watch?v=f-61MzZx6Zs

**Android/Swift/React Videos**
- 32k - https://www.youtube.com/watch?v=MDn8pTlfjLc
- 49k - https://www.youtube.com/watch?v=8y4Dr9jJtF0
- 6.4K - https://www.youtube.com/watch?v=cZs0ZeXz7SI

**Great Features** 
- Easy approach to provides text labels to explain the functionality of a button or user interface action.
```dart
  Tooltip(  
        message: 'Tap to Play',  
        ),  
   ),  
```
- Show additional information when the user moves or points over a particular widget.
- It increases the accessibility of our application.
- Message: It is a string message used to display in the tooltip.
- showDuration: It is used to specify the length of time for showing the tooltip after a long press is released. By default, it is 1.5 seconds.
- decoration: It is used to define the shape and background color of the tooltip. 

## 3. Research: Available Problems

**Problems from Videos** 
- Show Tooltip just when text is trimmed because of overflow.<strong>Solution:</strong> You need to specify the height of the tooltip widget in the decoration. 
- why flutter tooltip not working in my code by default. <strong>Solution:</strong> Tooltip will only visible When you tap or hold the widget that you have wrapped in the tootip widget.
- How to make a tooltip that contains information, images and icons with flutter : <strong>Solution:</strong> Tooltip is a built-in widget in flutter based on material design, which displays a textual description of the widget in a floating label when a user long-pressed and or hover over the widget.

**Problems from Flutter Stackoverflow**
- https://stackoverflow.com/questions/66610225/need-help-for-find-out-why-flutter-tooltip-not-working-in-my-code
- https://stackoverflow.com/questions/67982285/why-flutter-tooltip-not-worked
- https://stackoverflow.com/questions/72959046/how-to-make-a-tooltip-that-contains-information-images-and-icons-with-flutter
- https://stackoverflow.com/questions/71098160/show-tooltip-just-when-text-is-trimmed-because-of-overflow

## 4. Video Structure

**Main Points / Purpose Of Lesson**

1. Tooltip widget becomes very useful when the UI of the application is too dense to display all the information at once on the screen, in a way it simply makes the app more accessible.

**Why should we use it**
 1. it will help out viewers to create more handy Flutter Applications, which will help users of the app to see additional information when the user moves or points over a particular widget. It increases the accessibility of the application.it appears as a floating label.

**Intro**

Today I will show you how you can use tooltip widget in your Applications. it will help users of the app to see additional information when the user moves or points over a particular widget.

**The Structured Main Content**
  - Create an empty project.
  - Now add the material package
  ```dart
    import 'package:flutter/material.dart';
  ```
  - Call the main method, In the main method again run the runApp that will run our application.
  ```dart
    void main() {
  runApp(MyApp());}
  ```
  - Create a class MyApp(). That returns the MaterialApp and In-home property Use HomePage.

 ```dart
    class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooltip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      );
    },
  }
```
  - Create a class MyHomePage(). That returns the Scaffold with Appbar and Centered Column widget
```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip Widget"),
     ),
      body: Center(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
```
  - Now in AppBar we will use actions widgets where we will implement the Textbutton.
```dart
actions: [
          TextButton(
            onPressed: (() => print("hello")),
            child: Icon(
              Icons.account_box,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
```
  - Then we will wrap the Text Button with the tooltip Widget and provide a custom message.

```dart
actions: [
          Tooltip(
            message: 'My Account',
            child: TextButton(
              onPressed: (() => print("hello")),
              child: Icon(
                Icons.account_box,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
```
  - We can wrap any widget with tooltip widget to display additional informations. for example we will wrap an Image with tooltip widget inside the column widget.

```dart
 Tooltip(
              message: 'Picture of Bird',
              child: Container(
                width: 400,
                height: 400,
                child: Image.asset("lib/assets/Bird.jpg"),
              ),
            ),
```
  - We can also wrap a text widget with tooltip widget and provide a custom additional information.

```dart
 Tooltip(
              message: "Text",
              child: Text(
                "Flutter is an Opensource Development kit created by Google ",
                style: TextStyle(fontSize: 20.0),
              ),
            )
```

