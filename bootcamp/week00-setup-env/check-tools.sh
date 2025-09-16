#!/bin/bash

# Kubernetes Bootcamp - Tool Installation Checker
# This script checks if required tools are installed and shows their versions

echo "=============================================="
echo "  Kubernetes Bootcamp - Tool Version Checker"
echo "=============================================="
echo

# Function to check if a command exists and get its version
check_tool() {
    local tool_name="$1"
    local version_cmd="$2"
    local tool_description="$3"
    
    echo -n "Checking $tool_description... "
    
    if command -v "$tool_name" &> /dev/null; then
        echo "✅ INSTALLED"
        echo "   Version: $($version_cmd 2>/dev/null || echo "Unable to determine version")"
        echo "   Location: $(which "$tool_name")"
    else
        echo "❌ NOT INSTALLED"
        echo "   Please install $tool_description before proceeding with the bootcamp"
    fi
    echo
}

# Check Git
check_tool "git" "git --version" "Git"

# Check Docker
check_tool "docker" "docker --version" "Docker"

# Additional Docker daemon check
if command -v docker &> /dev/null; then
    echo -n "Checking Docker daemon... "
    if docker info &> /dev/null; then
        echo "✅ RUNNING"
    else
        echo "⚠️  Docker is installed but daemon is not running"
        echo "   Try: sudo systemctl start docker"
    fi
    echo
fi

# Check kubectl
check_tool "kubectl" "kubectl version --client --short 2>/dev/null || kubectl version --client" "Kubectl"

# Check Terraform
check_tool "terraform" "terraform version" "Terraform"

# Check kind
check_tool "kind" "kind version" "Kind (Kubernetes in Docker)"

echo "=============================================="
echo "Tool check completed!"
echo

# Summary
echo "Summary:"
tools=("git" "docker" "kubectl" "terraform" "kind")
installed_count=0

for tool in "${tools[@]}"; do
    if command -v "$tool" &> /dev/null; then
        ((installed_count++))
    fi
done

echo "Installed tools: $installed_count/5"

if [ $installed_count -eq 5 ]; then
    echo "🎉 All required tools are installed! You're ready for the Kubernetes bootcamp."
elif [ $installed_count -ge 3 ]; then
    echo "⚠️  Most tools are installed. Please install the missing ones before starting."
else
    echo "❌ Several tools are missing. Please install them before proceeding."
fi

echo
echo "For installation instructions, refer to the bootcamp documentation."