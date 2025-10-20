# 📱 **ROOT SETUP**
### **Script para Termux (Android) - Por Mtx-rng**

[![GitHub](https://img.shields.io/badge/GitHub-Mtx--rng-blue?logo=github)](https://github.com/Mtx-rng)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)


## 📋 **O QUE É ESTE SCRIPT?**

Script **100% automatizado** que instala **ROOT completo** no **Termux** (Android) usando **proot-distro**. 

**Sem precisar de PC, sem root físico, 100% seguro!**

## 📱 **FERRAMENTAS NECESSÁRIAS**

### **1. TERMUX** (Obrigatório)
```
Baixe na Google Play Store ou F-Droid
Link: https://play.google.com/store/apps/details?id=com.termux
```

### **2. PERMISSÕES**
- **Armazenamento**: Ative em Configurações → Apps → Termux → Permissões
- **Internet**: Necessário para downloads

### **3. ESPAÇO LIVRE**
- **Mínimo**: 1GB
- **Recomendado**: 2GB+


## 🚀 **COMO USAR - PASSO A PASSO**

### **1. INSTALAÇÃO**
```bash
# Abra o Termux e execute:
pkg update && pkg upgrade -y
```

### **2. DOWNLOAD DO SCRIPT**
```bash
# Clone o repositório
git clone https://github.com/Mtx-rng/root-setup.git
cd root-setup

# OU baixe direto
curl -O https://raw.githubusercontent.com/Mtx-rng/root-setup/main/root-setup.sh
chmod +x root-setup.sh
```

### **3. EXECUTE O SCRIPT**
```bash
./root-setup.sh
```

## 🖥️ **MENU DO SCRIPT**

```
ROOT SETUP MENU

[1] Iniciar Instalação ROOT
[2] Sobre o Script
[3] Sobre o Desenvolvedor
[99] Sair
```
## 🔑 **COMO ACESSAR SEU ROOT**

### **MÉTODO 1: Usuário Admin**
```bash
proot-distro login debian --user logan
```

### **MÉTODO 2: Root Direto**
```bash
proot-distro login debian
```

### **MÉTODO 3: Com Sudo**
```bash
proot-distro login debian --user logan
sudo su
```
## 💻 **COMANDOS ÚTEIS NO ROOT**

```bash
# Atualizar pacotes
apt update && apt upgrade -y

# Instalar ferramentas
apt install git python nodejs -y

# Editor de texto
vim arquivo.txt

# Ver usuário
whoami

# Sair do root
exit
```

---

## 🛠️ **FERRAMENTAS EXTRAS RECOMENDADAS**

### **DEPOIS DA INSTALAÇÃO, INSTALE:**
```bash
# No ROOT (proot-distro login debian)
apt install -y git curl wget nano htop neofetch

# Ferramentas de desenvolvimento
apt install -y python3 python3-pip nodejs npm

# Ferramentas de segurança
apt install -y nmap metasploit-framework
```

---

## ✅ **VERIFICAÇÃO - TESTE SE FUNCIONA**

```bash
# Entre no root
proot-distro login debian

# Teste 1: Ver sistema
uname -a

# Teste 2: Ver usuário root
whoami

# Teste 3: Instalar algo
apt install htop -y
htop
```

---

## ❗ **SOLUÇÃO DE PROBLEMAS**

### **ERRO: "Permission denied"**
```bash
chmod +x root-setup.sh
```

### **ERRO: "No space left"**
- Libere **2GB** no celular
- Delete arquivos desnecessários

### **ERRO: "Network error"**
- Verifique **WiFi/Dados móveis**
- Execute `pkg update` novamente

### **ROOT NÃO CARREGA**
```bash
proot-distro remove debian
./root-setup.sh
```

---

## 📞 **SUPORTE**

### **Problemas? Contate:**
- **GitHub Issues**: [github.com/Mtx-rng/root-setup/issues](https://github.com/Mtx-rng/root-setup/issues)
- **Discord**: `mtx-rng#0001`
- **Email**: mtx.rng.dev@gmail.com

---

## 👨‍💻 **DESENVOLVEDOR**

**MTX-RNG**  
- **GitHub**: [github.com/Mtx-rng](https://github.com/Mtx-rng)  
- **Especialidade**: Scripts Android...
- **Projetos**:scripts open-source  
- **Desde**: 2023

⭐ **Deixe uma estrela no GitHub!**

---

## 📄 **LICENSE**
```
MIT License - Use livremente!
Copyright (c) 2025 Mtx-rng
```

---

## 🎉 **READY TO ROOT!**

**Execute agora e tenha ROOT no seu Android em menos 5 minutos!**

```bash
./root-setup.sh
```

**nao seja ignorante leia a descrição da ferramenta para depois nao vir falar que meu celular não tem root**
