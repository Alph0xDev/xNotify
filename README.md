Hi guys, this is the first resource of the team and the first release chosen is a standalone notification script. Below you will find the basic notifications present. You can add and remove notifications as you wish and everything will be written in the readme file of the resource including how to use them.

**SUCCESS NOTIFY**

![image](https://github.com/user-attachments/assets/95af1d5a-88c4-43d5-b5b1-5f5a59e6c4e3)

**ERROR NOTIFY**

![image](https://github.com/user-attachments/assets/a02eae38-17b3-466c-900d-50e67da2fe76)

**INFO NOTIFY**

![image](https://github.com/user-attachments/assets/2043fb53-6e7d-405a-aca5-da8af434fe9e)

**WARNING NOTIFY**

![image](https://github.com/user-attachments/assets/3710b3ab-e653-4966-bee5-332170b85b3d)

**PHONE NOTIFY**

![image](https://github.com/user-attachments/assets/46d3f025-d3a0-4aad-8cae-079f6afea12b)

**LONGTEXT NOTIFY**

![image](https://github.com/user-attachments/assets/a3dc7510-90cf-45aa-bdd5-0e51ee60480a)


Many will wonder why the resource is called xNotify instead of being called Alph0xNotify, well it's called that because the team was thinking of doing more series on the store which are still to be defined together with the store.

**USE INSTRUCTION**

xNotify - Usage Guide
Hi, thank you for purchasing my script! I'm very grateful for your support.

This guide will explain how to display notifications and how to customize them by adding new types.

Displaying a Notification
To display a notification, you can call the Alert function from either the client or the server.

Client Side
exports['xNotify']:Alert("Title", "Message", Time, 'type')
Server Side
TriggerClientEvent('xNotify:Alert', source, "Title", "Message", Time, 'type')
Title: The title of the notification (string).

Message: The content of the message (string).

Time: The duration of the notification in milliseconds.
1000 = 1 second | 5000 = 5 seconds

type: The type of notification (string). Determines the style and color.

Default Notification Types
Here are the default notification types included in the script:

success: Success notification (green).

info: Information notification (blue).

warning: Warning notification (yellow).

error: Error notification (red).

phone: Phone notification (orange).

longtext: Neutral notification (gray).

Adding New Notification Types
To add a new notification type, follow these steps:

1. Define the CSS Style  
Open the `styles.css` file and add a new CSS class for your custom notification type.  
Replace `mytype` with the name you want to use for your new notification type (for example: `promo`, `event`, ecc).

css

.mytype {
    background: rgba(20, 20, 20, 0.85); /* Notification background */
    color: #fff;                        /* Text color */
    padding: 8px;
    border-radius: 4px;
    box-shadow: 0 0 12px rgba(0, 123, 255, 0.8); /* Custom shadow color */
    font-size: 0.9em;
    margin-bottom: 3px;
}


- .mytype: The class name for your custom notification.
- background: Set the background color.
- color: Set the text color.
- box-shadow: Set the glow color for your notification.
- You can copy and modify this example for each new type you want to add.

2. Add the Logic in the Script
Open the scripts.js file (or the JavaScript file that manages notifications) and add the following code block inside the function that handles notifications (likely within an existing if/else if block). Replace "mytype" with the name you chose for your new notification type.

else if (event.data.type == 'mytype') { // Replace "mytype" with your name
    $(.title-${number}).html(event.data.title).css({
        "font-size": "16px",
        "font-weight": "600"
    });
    $(.wrapper-${number}).addClass('mytype'); // Add the main style class
    sound.play();
}
Make sure to replace "mytype" with the name you chose for your new notification type.

This code adds the necessary CSS classes to apply the style defined in the styles.css file.

Support
If you need help, contact me on Discord: https://discord.gg/CpEHRGUyw6
