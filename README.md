# Arquitetura de Computadores - Assembly MIPS

Este repositório contém estudos e exercícios práticos de programação em Assembly MIPS, cobrindo conceitos fundamentais de arquitetura de computadores e programação de baixo nível.

## 📋 Sumário

- [Sobre o Projeto](#sobre-o-projeto)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Pré-requisitos](#pré-requisitos)
- [Configuração do Ambiente](#configuração-do-ambiente)
- [Como Executar](#como-executar)
- [Conceitos Abordados](#conceitos-abordados)
- [Fluxograma de Desenvolvimento](#fluxograma-de-desenvolvimento)

## 🎯 Sobre o Projeto

Este projeto é uma coleção de exercícios e exemplos práticos para aprendizado de Assembly MIPS, organizados em duas categorias principais:

- **Teoria (`teory/`)**: Exemplos didáticos demonstrando conceitos fundamentais
- **Laboratório (`laboratory/`)**: Exercícios práticos para aplicação dos conceitos

## 📁 Estrutura do Projeto

```
computer-architecture/
├── README.md
├── teory/                          # Exemplos teóricos
│   ├── first_steps.asm            # Primeiros passos com registradores
│   ├── branch/                    # Estruturas condicionais e loops
│   │   ├── branch.asm
│   │   ├── conditional.asm
│   │   ├── for.asm
│   │   └── while.asm
│   ├── data_transfer/             # Transferência de dados
│   │   ├── data_transfer.asm
│   │   ├── temperature_exercise.asm
│   │   └── urna_exersise.asm
│   ├── methods/                   # Funções e procedimentos
│   │   └── functions.asm
│   └── syscalls/                  # Chamadas de sistema
│       ├── example_syscall.asm
│       ├── exercise1.asm
│       ├── exercise2.asm
│       └── exercise3.asm
└── laboratory/                     # Exercícios práticos
    ├── arithmetic_instruction/     # Instruções aritméticas
    │   ├── exercise1.asm
    │   └── exercise2.asm
    ├── branch/                    # Estruturas condicionais
    │   └── example.asm
    ├── logical_instruction/       # Instruções lógicas
    │   ├── exercise1.asm
    │   ├── exercise2.asm
    │   └── exercise3.asm
    ├── memory_access_instruction/ # Acesso à memória
    │   ├── code.c++
    │   └── exercise.asm
    └── system_calls/              # Chamadas de sistema
        ├── example.asm
        └── exercise.asm
```

## 🛠 Tecnologias Utilizadas

### Linguagem e Arquitetura
- **Assembly MIPS**: Linguagem de programação de baixo nível
- **Arquitetura MIPS32**: Conjunto de instruções RISC de 32 bits

### Ferramentas Necessárias
- **MARS (MIPS Assembler and Runtime Simulator)** - Simulador principal
- **QtSpim** - Simulador alternativo
- **SPIM** - Simulador de linha de comando

### Padrões de Código
- Comentários em português para facilitar o aprendizado
- Estruturação clara com labels descritivos
- Uso consistente de registradores temporários ($t0-$t9)
- Separação entre seções `.data` e `.text`

## 📋 Pré-requisitos

- Conhecimento básico de programação
- Entendimento de conceitos de arquitetura de computadores
- Sistema operacional compatível com simuladores MIPS

## ⚙️ Configuração do Ambiente

### 1. Instalação do MARS (Recomendado)

**Linux/macOS:**
```bash
# Instalar Java (se necessário)
sudo apt-get install default-jre  # Ubuntu/Debian
# ou
brew install java                 # macOS

# Baixar MARS
wget http://courses.missouristate.edu/KenVollmar/mars/MARS_4_5.jar
```

**Windows:**
1. Instalar Java JRE 8 ou superior
2. Baixar MARS.jar do site oficial
3. Executar com duplo clique ou via linha de comando

### 2. Instalação Alternativa - QtSpim

**Linux:**
```bash
sudo apt-get install spim qtspim
```

**macOS:**
```bash
brew install spim
```

**Windows:**
1. Baixar QtSpim do site oficial
2. Instalar executável

### 3. Configuração do Projeto

```bash
# Clonar repositório
git clone <url-do-repositorio>
cd computer-architecture

# Criar diretório build (opcional)
mkdir build
```

## 🚀 Como Executar

### Usando MARS
```bash
# Executar arquivo específico
java -jar MARS_4_5.jar nc <arquivo.asm>

# Exemplo:
java -jar MARS_4_5.jar nc teory/first_steps.asm
```

### Usando SPIM/QtSpim
```bash
# Via linha de comando
spim -file <arquivo.asm>

# Via interface gráfica
qtspim
# File → Load → Selecionar arquivo .asm
```

### Executando Exercícios com Entrada

Para exercícios que requerem entrada do usuário:
```bash
# MARS com modo interativo
java -jar MARS_4_5.jar <arquivo.asm>
```

## 📚 Conceitos Abordados

### 🔢 Instruções Aritméticas
- Adição (`add`, `addi`)
- Subtração (`sub`)
- Multiplicação (`mul`)
- Divisão (`div`)

### 🔀 Instruções Lógicas
- AND (`and`, `andi`)
- OR (`or`, `ori`)
- Deslocamento (`sll`, `srl`)
- XOR (`xor`)

### 🌊 Controle de Fluxo
- Desvios condicionais (`beq`, `bne`, `bgt`, `ble`)
- Loops (`for`, `while`)
- Saltos (`j`, `jal`, `jr`)

### 💾 Acesso à Memória
- Load Word (`lw`)
- Store Word (`sw`)
- Load Halfword (`lh`)
- Endereçamento

### 🔧 Chamadas de Sistema
- Print integer (`li $v0, 1`)
- Print string (`li $v0, 4`)
- Read integer (`li $v0, 5`)
- Exit (`li $v0, 10`)

### 📞 Funções
- Jump and Link (`jal`)
- Return (`jr $ra`)
- Stack management

## 🎓 Progressão Sugerida de Estudos

1. **Fundamentos** → `teory/first_steps.asm`
2. **Transferência de Dados** → `teory/data_transfer/`
3. **Instruções Aritméticas** → `laboratory/arithmetic_instruction/`
4. **Instruções Lógicas** → `laboratory/logical_instruction/`
5. **Controle de Fluxo** → `teory/branch/` e `laboratory/branch/`
6. **Acesso à Memória** → `laboratory/memory_access_instruction/`
7. **Chamadas de Sistema** → `teory/syscalls/` e `laboratory/system_calls/`
8. **Funções** → `teory/methods/`

## 📝 Notas Importantes

- Todos os comentários estão em português para facilitar o aprendizado
- Os exercícios incluem tanto código C++ quanto sua conversão para Assembly
- Cada seção aborda conceitos específicos de forma incremental
- Use o simulador MARS para melhor experiência de debug

## 🤝 Contribuições

Sinta-se livre para sugerir melhorias, correções ou novos exercícios através de issues e pull requests.

---

**Autor:** Dimitri Schulz Amado
**Objetivo:** Aprendizado de Arquitetura de Computadores e Assembly MIPS
