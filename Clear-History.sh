#!/bin/bash
# ====================================
# Linux Clear History
# GitHub-ready version
# ====================================

################################################################################
# Helper Functions
################################################################################

print_header() {
    echo -e "${BLUE}================================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================================${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ $1${NC}"
}

log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

echo " "
echo " "
# echo "------->> Clearing Command History..."
print_header "Clearing Command History..."
echo " "
history -c
history -w
echo " "
# echo "######################################################"
# echo "#                                                    #"
# echo "#          History cleared successfully              #"
# echo "#                                                    #"
# echo "######################################################"
print_success "History cleared successfully!"
echo " "
echo " "
print_header "Deleting Clear-History.sh script..."
echo " "
rm -f Clear-History.sh
echo " "
# echo "######################################################"
# echo "#                                                    #"
# echo "#    Clear-History.sh script deleted successfully    #"
# echo "#                                                    #"
# echo "######################################################"
print_success "Clear-History.sh script deleted successfully!"
echo " "
echo " "
