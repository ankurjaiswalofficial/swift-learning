To install Swift on Windows and start coding in Swift, follow these steps:

### **Step 1: Install Swift for Windows**
1. **Download Swift for Windows:**
   - Go to the official Swift website: [https://www.swift.org/download/](https://www.swift.org/download/)
   - Download the latest Windows version (MSI installer).

2. **Install Swift:**
   - Run the MSI installer and follow the on-screen instructions.
   - Make sure to check the option to **add Swift to the system PATH** during installation.

3. **Verify the Installation:**
   - Open **Command Prompt (cmd)** and type:
     ```sh
     swift --version
     ```
   - It should print the installed Swift version.

---

### **Step 2: Write and Run Swift Code**
#### **Method 1: Using Swift REPL (Interactive Mode)**
- Open **Command Prompt** and type:
  ```sh
  swift
  ```
- You can now write and execute Swift commands directly. Example:
  ```swift
  print("Hello, Swift!")
  ```

#### **Method 2: Running Swift Scripts**
1. Open **Notepad** or any text editor and write the following Swift code:
   ```swift
   print("Hello, Swift on Windows!")
   ```
2. Save the file as **hello.swift** in a known directory (e.g., `C:\SwiftProjects`).
3. Open **Command Prompt**, navigate to the directory:
   ```sh
   cd C:\SwiftProjects
   ```
4. Run the script using:
   ```sh
   swift hello.swift
   ```

#### **Method 3: Compiling Swift Programs**
If you want to compile a Swift program into an executable:
1. Write a Swift program (e.g., `main.swift`):
   ```swift
   print("Hello, Compiled Swift!")
   ```
2. Compile it using:
   ```sh
   swiftc main.swift
   ```
3. Run the compiled executable:
   ```sh
   main.exe
   ```

----
----
To install and run Swift in Docker on Windows, follow these steps:

---

### **Step 1: Install Docker**
1. Download and install **Docker Desktop** from:  
   [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Ensure **WSL 2 backend** is enabled in Docker settings.
3. Verify Docker installation by running:
   ```sh
   docker --version
   ```

---

### **Step 2: Pull and Run the Swift Docker Image**
1. Open **Command Prompt (cmd) / PowerShell / Terminal** and pull the official Swift image:
   ```sh
   docker pull swift
   ```
2. Run a container with an interactive shell:
   ```sh
   docker run -it --rm swift bash
   ```
   This opens a shell inside the container where you can run Swift commands.

---

### **Step 3: Run Swift Code in Docker**
#### **Method 1: Using Swift REPL**
Inside the running container, type:
```sh
swift
```
Now you can execute Swift commands interactively:
```swift
print("Hello, Swift in Docker!")
```

#### **Method 2: Running a Swift Script**
1. **Exit the container** (`exit`).
2. Create a local Swift file, e.g., `hello.swift`:
   ```sh
   echo 'print("Hello from Swift in Docker!")' > hello.swift
   ```
3. Run the script inside a new Swift container:
   ```sh
   docker run --rm -v ${PWD}:/app -w /app swift swift hello.swift
   ```
   This mounts your current directory (`${PWD}`) to `/app` inside the container and executes `hello.swift`.

#### **Method 3: Compiling a Swift Program**
1. **Create a Swift file**:
   ```sh
   echo 'print("Hello, Compiled Swift in Docker!")' > main.swift
   ```
2. **Compile it inside a container**:
   ```sh
   docker run --rm -v ${PWD}:/app -w /app swift swiftc main.swift
   ```
3. **Run the compiled binary** (on Linux-based Docker):
   ```sh
   ./main
   ```

---

### **Step 4: Create a Swift Development Environment in Docker**
To have a persistent Swift development setup, create a **Dockerfile**:
```dockerfile
FROM swift:latest
WORKDIR /app
COPY . .
CMD ["swift"]
```
Then, build and run the container:
```sh
docker build -t my-swift .
docker run -it --rm my-swift
```

---

