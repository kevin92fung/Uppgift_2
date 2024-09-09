# Steg för att Skapa och Konfigurera Projekt

1. **Skapa Projektmapp**
   - Skapa en ny mapp med namnet `Uppgift_2` för att lagra filerna:
     ```bash
     mkdir Uppgift_2
     cd Uppgift_2
     ```

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

8. **Lägg till GitHub Actions Workflow**
   - Lägg till en GitHub Actions workflow för .NET:
     - Lägg in skriptet från `workflow.yaml` och spara det i `.github/workflows/`-mappen.

9. **Synkronisera Lokala Filer med GitHub**
   - Kör `git pull` för att synkronisera lokala filer med GitHub:
     ```bash
     git pull
     ```

# Steg för att Provisionera och Konfigurera VM

1. **Kör Provisioneringsskript**
   - Kör `VM_provision.sh` för att provisionera alla resurser.

2. **Starta SSH-agent**
   - Starta SSH-agent:
     ```bash
     eval $(ssh-agent)
     ```

3. **Lägg till SSH-nyckel**
   - Lägg till din SSH-nyckel:
     ```bash
     ssh-add /path/to/key
     ```

4. **Anslut till Bastion Host**
   - SSH in till bastion:
     ```bash
     ssh -A username@bastion-ip-address
     ```

5. **Anslut till Web Server**
   - SSH in till web server med IP `10.0.0.100`:
     ```bash
     ssh username@10.0.0.100
     ```

6. **Skapa GitHub Actions Runner för Linux**
   - Skapa en ny GitHub Actions runner för Linux på GitHub och följ kommandona som ges på webappen.

7. **Installera och Starta Runner som Tjänst**
   - Installera runner som en systemtjänst:
     ```bash
     sudo ./svc.sh install username
     ```
   - Starta runner-tjänsten:
     ```bash
     sudo ./svc.sh start
     ```
