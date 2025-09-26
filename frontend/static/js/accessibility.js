// Funcionalidades de acessibilidade para a plataforma Estudadores

// Função para adicionar skip links
function addSkipLinks() {
    const skipLink = document.createElement('a');
    skipLink.href = '#main-content';
    skipLink.className = 'skip-link';
    skipLink.textContent = 'Pular para o conteúdo principal';
    document.body.insertBefore(skipLink, document.body.firstChild);
}

// Função para melhorar navegação por teclado
function enhanceKeyboardNavigation() {
    // Adicionar suporte para navegação por setas em grupos de botões
    document.addEventListener('keydown', function(e) {
        const activeElement = document.activeElement;
        
        if (activeElement && activeElement.closest('[role="group"]')) {
            const group = activeElement.closest('[role="group"]');
            const buttons = Array.from(group.querySelectorAll('button, [role="button"], [tabindex="0"]'));
            const currentIndex = buttons.indexOf(activeElement);
            
            switch(e.key) {
                case 'ArrowRight':
                case 'ArrowDown':
                    e.preventDefault();
                    const nextIndex = (currentIndex + 1) % buttons.length;
                    buttons[nextIndex].focus();
                    break;
                case 'ArrowLeft':
                case 'ArrowUp':
                    e.preventDefault();
                    const prevIndex = currentIndex === 0 ? buttons.length - 1 : currentIndex - 1;
                    buttons[prevIndex].focus();
                    break;
                case 'Home':
                    e.preventDefault();
                    buttons[0].focus();
                    break;
                case 'End':
                    e.preventDefault();
                    buttons[buttons.length - 1].focus();
                    break;
            }
        }
    });
}

// Função para melhorar feedback de formulários
function enhanceFormFeedback() {
    const forms = document.querySelectorAll('form');
    
    forms.forEach(form => {
        const inputs = form.querySelectorAll('input, select, textarea');
        
        inputs.forEach(input => {
            // Adicionar validação em tempo real
            input.addEventListener('blur', function() {
                validateField(this);
            });
            
            input.addEventListener('input', function() {
                clearFieldError(this);
            });
        });
        
        // Adicionar validação no submit
        form.addEventListener('submit', function(e) {
            let isValid = true;
            
            inputs.forEach(input => {
                if (!validateField(input)) {
                    isValid = false;
                }
            });
            
            if (!isValid) {
                e.preventDefault();
                // Focar no primeiro campo com erro
                const firstError = form.querySelector('.is-invalid');
                if (firstError) {
                    firstError.focus();
                }
            }
        });
    });
}

// Função para validar campos de formulário
function validateField(field) {
    const value = field.value.trim();
    const isRequired = field.hasAttribute('required');
    const type = field.type;
    
    let isValid = true;
    let errorMessage = '';
    
    if (isRequired && !value) {
        isValid = false;
        errorMessage = 'Este campo é obrigatório';
    } else if (type === 'email' && value && !isValidEmail(value)) {
        isValid = false;
        errorMessage = 'Digite um e-mail válido';
    } else if (type === 'password' && value && value.length < 6) {
        isValid = false;
        errorMessage = 'A senha deve ter pelo menos 6 caracteres';
    }
    
    if (isValid) {
        field.classList.remove('is-invalid');
        field.classList.add('is-valid');
        removeFieldError(field);
    } else {
        field.classList.remove('is-valid');
        field.classList.add('is-invalid');
        showFieldError(field, errorMessage);
    }
    
    return isValid;
}

// Função para validar e-mail
function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// Função para mostrar erro de campo
function showFieldError(field, message) {
    removeFieldError(field);
    
    const errorDiv = document.createElement('div');
    errorDiv.className = 'invalid-feedback';
    errorDiv.textContent = message;
    errorDiv.id = field.id + '-error';
    
    field.setAttribute('aria-describedby', field.id + '-error');
    field.parentNode.appendChild(errorDiv);
}

// Função para remover erro de campo
function removeFieldError(field) {
    const errorDiv = field.parentNode.querySelector('.invalid-feedback');
    if (errorDiv) {
        errorDiv.remove();
    }
    field.classList.remove('is-invalid');
}

// Função para limpar erro de campo
function clearFieldError(field) {
    field.classList.remove('is-invalid');
    removeFieldError(field);
}

// Função para melhorar anúncios de mudanças dinâmicas
function announceChanges() {
    // Criar região para anúncios
    const announcer = document.createElement('div');
    announcer.setAttribute('aria-live', 'polite');
    announcer.setAttribute('aria-atomic', 'true');
    announcer.className = 'visually-hidden';
    announcer.id = 'announcer';
    document.body.appendChild(announcer);
    
    // Função para fazer anúncios
    window.announce = function(message) {
        const announcer = document.getElementById('announcer');
        if (announcer) {
            announcer.textContent = message;
        }
    };
}

// Função para melhorar navegação em listas
function enhanceListNavigation() {
    document.addEventListener('keydown', function(e) {
        const activeElement = document.activeElement;
        
        if (activeElement && activeElement.closest('[role="list"]')) {
            const list = activeElement.closest('[role="list"]');
            const items = Array.from(list.querySelectorAll('[role="listitem"], button, a'));
            const currentIndex = items.indexOf(activeElement);
            
            switch(e.key) {
                case 'ArrowDown':
                    e.preventDefault();
                    if (currentIndex < items.length - 1) {
                        items[currentIndex + 1].focus();
                    }
                    break;
                case 'ArrowUp':
                    e.preventDefault();
                    if (currentIndex > 0) {
                        items[currentIndex - 1].focus();
                    }
                    break;
            }
        }
    });
}

// Função para melhorar contraste visual
function enhanceVisualAccessibility() {
    // Função vazia - controles de fonte removidos conforme solicitado
}

// Função para melhorar navegação por teclado em modais
function enhanceModalAccessibility() {
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape') {
            const openModal = document.querySelector('.modal.show');
            if (openModal) {
                const closeButton = openModal.querySelector('[data-bs-dismiss="modal"]');
                if (closeButton) {
                    closeButton.click();
                }
            }
        }
    });
}

// Função para melhorar acessibilidade de botões de alternância
function enhanceToggleButtons() {
    const toggleButtons = document.querySelectorAll('[aria-pressed]');
    
    toggleButtons.forEach(button => {
        button.addEventListener('click', function() {
            const isPressed = this.getAttribute('aria-pressed') === 'true';
            this.setAttribute('aria-pressed', !isPressed);
            
            // Anunciar mudança de estado
            const state = !isPressed ? 'selecionado' : 'não selecionado';
            announce(`${this.textContent.trim()} ${state}`);
        });
    });
}

// Função para melhorar acessibilidade de progress bars
function enhanceProgressBars() {
    const progressBars = document.querySelectorAll('progress, [role="progressbar"]');
    
    progressBars.forEach(progress => {
        const observer = new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {
                if (mutation.type === 'attributes' && mutation.attributeName === 'aria-valuenow') {
                    const value = progress.getAttribute('aria-valuenow');
                    const max = progress.getAttribute('aria-valuemax') || progress.getAttribute('max');
                    const percentage = Math.round((value / max) * 100);
                    announce(`Progresso atualizado: ${percentage}%`);
                }
            });
        });
        
        observer.observe(progress, { attributes: true });
    });
}

// Função para inicializar todas as melhorias de acessibilidade
function initAccessibility() {
    addSkipLinks();
    enhanceKeyboardNavigation();
    enhanceFormFeedback();
    announceChanges();
    enhanceListNavigation();
    enhanceVisualAccessibility();
    enhanceModalAccessibility();
    enhanceToggleButtons();
    enhanceProgressBars();
    
    // Adicionar listener para mudanças de tema
    const themeObserver = new MutationObserver(function(mutations) {
        mutations.forEach(function(mutation) {
            if (mutation.type === 'attributes' && mutation.attributeName === 'data-theme') {
                announce('Tema alterado para ' + (document.documentElement.getAttribute('data-theme') === 'dark' ? 'escuro' : 'claro'));
            }
        });
    });
    
    themeObserver.observe(document.documentElement, { attributes: true });
}

// Inicializar quando o DOM estiver carregado
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initAccessibility);
} else {
    initAccessibility();
}
