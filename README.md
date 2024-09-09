# Information
Detta projekt är utfört med Visual Studio Code. För att genomföra projektet krävs ett aktivt Azure-konto. Följ stegen nedan för att skapa, konfigurera och provisionera ditt .NET-projekt samt sätta upp Git och GitHub Actions.

# Steg för att Skapa och Konfigurera Projekt

1. **Skapa Projektmapp och Öppna i Visual Studio Code**
   - Skapa en ny mapp med namnet `Uppgift_2`
   - Starta Visual Studio Code och öppna den nyss skapade mappen `Uppgift_2`

2. **Skapa Enkel .NET-applikation**
   - Skapa en ny .NET webbapplikation:
     ```bash
     dotnet new webapp
     ```

3. **Skapa .gitignore**
   - Generera en `.gitignore`-fil för att undvika att onödiga filer inkluderas i Git:
     ```bash
     dotnet new gitignore
     ```

4. **Ladda Ner Skript och Mallar**
   - Ladda ner skript och mallar från `Provision_scripts`.

5. **Initiera Git**
   - Initiera ett nytt Git-repo:
     ```bash
     git init
     ```

6. **Lägg till och Koppla Git till GitHub**
   - Lägg till filer till Git:
     ```bash
     git add .
     ```
   - Skapa en ny repository på GitHub och koppla det till din lokala repository:
     ```bash
     git remote add origin <GitHub-repository-URL>
     ```

7. **Push Kod till GitHub**
   - Push koden till GitHub:
     ```bash
     git commit -m "Initial commit"
     git push -u origin main
     ```

8. **Skapa en GitHub Actions Workflow för .NET**
   - Skapa en GitHub Actions workflow för .NET:
     - Lägg till en ny workflow genom att skapa en fil med namnet `workflow.yaml` i `.github/workflows/`-mappen.
     - Använd koden som finns i `workflow.yaml` för att definiera din workflow.

9. **Synkronisera Lokala Filer med GitHub**
   - Kör `git pull` för att synkronisera lokala filer med GitHub:
     ```bash
     git pull
     ```

# Steg för att Provisionera och Konfigurera VM

1. **Navigera till Katalog med Skript**
   - Gå till katalogen som innehåller provisioneringsskripten:
     ```bash
     cd /path/to/Provision_scripts
     ```

2. **Kör Provisioneringsskript**
   - Kör `VM_provision.sh` för att provisionera virtuella maskiner:
     ```bash
     ./VM_provision.sh
     ```

3. **Starta SSH-agent**
   - Starta SSH-agent:
     ```bash
     eval $(ssh-agent)
     ```

4. **Lägg till SSH-nyckel**
   - Lägg till din SSH-nyckel:
     ```bash
     ssh-add /path/to/key
     ```

5. **Anslut till Bastion Host**
   - SSH in till bastion:
     ```bash
     ssh -A username@bastion-ip-address
     ```

6. **Anslut till Web Server**
   - SSH in till web server med IP `10.0.0.100`:
     ```bash
     ssh username@10.0.0.100
     ```

7. **Skapa GitHub Actions Runner för Linux**
   - Skapa en ny GitHub Actions runner för Linux på GitHub och följ kommandona som ges på webappen.

8. **Installera och Starta Runner som Tjänst**
   - Installera runner som en systemtjänst:
     ```bash
     sudo ./svc.sh install username
     ```
   - Starta runner-tjänsten:
     ```bash
     sudo ./svc.sh start
     ```
