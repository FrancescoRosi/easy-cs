# Easy Code Server
Easy Code Server lets you run code-server, a web version of VS Code, very easily. It was originally made to be ran on the **free** ~~VPS~~ IDE [Replit](https://replit.com), but you can run it on any machine with Linux. But why should you use this script and not other ones? Well...  
1. It doesn't use sudo, meaning you can use it on free IDEs like Replit, Glitch and CS50.
2. It installs localtunnel, which automatically sets up a public URL for you to login to code-server, port forwarding and SSL.
3. A secure login password is generated automatically and it gets outputted to the console everytime you launch Easy Code Server, meaning you don't have to remember any password.

## How to run it on Replit for free
1. [Create a Replit account](https://replit.com/signup).
2. After you've created an account, click [here](https://replit.com/github/francescorosi27/easy-cs) to create a new repl, which is just a container where you can run code, containing all the necessary files.
3. Click "Run" and wait for the setup to finish. After it is done, it will tell you to run it again, so do that.
4. Visit the URL that gets outputted in the console, click "Click to continue" (you will only have to click it the first time) and enter the password, which also gets outputted to the console.
5. Profit!  

(note: do not delete the .easycsinstalled file in your home directory, as it is the only way to check if Easy Code Server has been installed successfully.)