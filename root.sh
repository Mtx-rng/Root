#!/bin/bash
# Author: Mk7
# GitHub: github.com/Mtx-rng

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

loading_animation() {
    clear
    echo -e "${CYAN}Iniciando ROOT...${NC}"
    sleep 0.5
    
    # Animação progressiva: 0% → 100% (10% por vez)
    for percent in 0 10 20 30 40 50 60 70 80 90 100; do
        clear
        echo -e "${CYAN}Iniciando ROOT...${NC}"
        
        # Calcula blocos preenchidos (20 blocos totais)
        blocks=$((percent / 5))
        empty=$((20 - blocks))
        
        # Barra de progresso
        printf "${YELLOW}[${NC}"
        
        # Blocos PREENCHIDOS (verde)
        for ((i=1; i<=blocks; i++)); do
            printf "${GREEN}█${NC}"
        done
        
        # Espaços VAZIOS (branco)
        for ((i=1; i<=empty; i++)); do
            printf "${WHITE} ${NC}"
        done
        
        echo -e "] ${YELLOW}${percent}%${NC}"
        
        sleep 0.2
    done
    
    clear
}

login_animation() {
    clear
    echo -e "${PURPLE}Bem-vindo ao ROOT Setup${NC}"
    sleep 1
}

falar_sobre_script() {
    clear
    echo -e "${GREEN}SCRIPT DE ROOT SETUP AUTOMÁTICO${NC}"
    echo ""
    echo -e "${YELLOW}•${NC} Automatiza instalação completa do ROOT"
    echo -e "${YELLOW}•${NC} Interface simples e limpa"
    echo -e "${YELLOW}•${NC} 100% gratuito e open-source"
    echo -e "${YELLOW}•${NC} Sem vírus ou backdoors"
    echo -e "${YELLOW}•${NC} Funciona em todos os dispositivos Android"
    echo -e "${YELLOW}•${NC} GitHub: ${CYAN}github.com/Mtx-rng${NC}"
    echo ""
    echo -e "${YELLOW}Pressione Enter para voltar...${NC}"
    read -r
}

falar_sobre_desenvolvedor() {
    clear
    echo -e "${GREEN}MTX-RNG${NC}"
    echo ""
    echo -e "${YELLOW}•${NC} Nome: ${CYAN}Mk7${NC}"
    echo -e "${YELLOW}•${NC} GitHub: ${CYAN}github.com/Mtx-rng${NC}"
    echo -e "${YELLOW}•${NC} Discord: ${CYAN} Não fechamos com paneleiros${NC}"
    echo -e "${YELLOW}•${NC} Especialidade: ${GREEN}Scripts Android...${NC}"
    echo -e "${YELLOW}•${NC} Projetos: ${CYAN} scripts open-source${NC}"
    echo ""
    echo -e "${WHITE}⭐ Deixe uma estrela no GitHub!${NC}"
    echo ""
    echo -e "${YELLOW}Pressione Enter para voltar...${NC}"
    read -r
}

iniciar_root() {
    login_animation
    loading_animation
    
    echo -e "${GREEN}INICIANDO CONFIGURAÇÃO ROOT${NC}"
    echo ""
    
    echo -e "${YELLOW}1. Atualizando sistema...${NC}"
    apt update && apt upgrade -y
    echo -e "${GREEN}✓ Sistema atualizado!${NC}"
    
    echo -e "${YELLOW}2. Instalando proot-distro...${NC}"
    pkg install proot-distro -y
    echo -e "${GREEN}✓ proot-distro instalado!${NC}"
    
    echo -e "${YELLOW}3. Instalando Debian...${NC}"
    proot-distro install debian
    echo -e "${GREEN}✓ Debian instalado!${NC}"
    
    echo -e "${YELLOW}4. Configurando ambiente Debian...${NC}"
    proot-distro login debian -- bash -c "
        apt update
        apt install sudo vim -y
        adduser logan
        echo ''
        echo 'Configuração concluída!'
        echo 'Usuário criado: login'
        echo ''
        echo 'Para acessar use: proot-distro login debian'
    "
    
    echo ""
    echo -e "${GREEN}Instalação finalizada com sucesso!${NC}"
    echo -e "${CYAN}Use: proot-distro login debian${NC}"
    sleep 3
}

mostrar_menu() {
    clear
    echo -e "${CYAN}ROOT SETUP MENU${NC}"
    echo ""
    echo -e "${WHITE}[1]${NC} Iniciar Instalação ROOT"
    echo -e "${WHITE}[2]${NC} Sobre o Script"
    echo -e "${WHITE}[3]${NC} Sobre o Desenvolvedor"
    echo -e "${WHITE}[99]${NC} Sair"
    echo ""
    echo -ne "${YELLOW}Selecione uma opção: ${NC}"
}

main() {
    while true; do
        mostrar_menu
        read -r opcao
        case $opcao in
            1)
                iniciar_root
                echo ""
                echo -e "${YELLOW}Pressione Enter para voltar...${NC}"
                read -r
                ;;
            2)
                falar_sobre_script
                ;;
            3)
                falar_sobre_desenvolvedor
                ;;
            99)
                clear
                echo -e "${RED}Saindo...${NC}"
                echo -e "${GREEN}Obrigado por usar!${NC}"
                echo -e "${CYAN}GitHub: github.com/Mtx-rng${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Opção inválida!${NC}"
                sleep 1
                ;;
        esac
    done
}

main
