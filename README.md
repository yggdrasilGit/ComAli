# 🍽️ ComAli

Um aplicativo iOS simples, feito em **SwiftUI**, que exibe uma grade horizontal de categorias de pedidos (como restaurantes, mercado, farmácia, etc).  
O projeto serve como exemplo de **uso de LazyHGrid**, **mock de dados** e organização de views em SwiftUI.

---

## 📱 Funcionalidades
- **Tela inicial com barra de navegação** (`NavigationBar`).
- **Scroll vertical** contendo um `LazyHGrid` horizontal com categorias.
- Cada categoria é representada por um `OrderTypeView` usando dados mockados.
- Estrutura pronta para evoluir para um app de delivery/marketplace.

---

## 🛠️ Tecnologias
- [Swift 5](https://developer.apple.com/swift/)
- [SwiftUI](https://developer.apple.com/xcode/swiftui/)
- [Xcode 26](https://developer.apple.com/xcode/)

---

## 🚀 Como executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/ComAli.git
````

2. Abra o projeto no **Xcode 26**:

   ```bash
   cd ComAli
   open ComAli.xcodeproj
   ```
3. Escolha um simulador (ex.: iPhone 15) e rode o projeto:

   ```bash
   Cmd + R
   ```

---

## 📂 Estrutura do projeto

```
ComAli/
├── ComAliApp.swift        # Ponto de entrada do app
├── ContentView.swift      # Tela principal
├── OrderTypeGridView.swift# Grade de categorias
├── DataSourceMock.swift   # Mock de dados para exibir no grid
└── Assets.xcassets        # Ícones e imagens do app
```

---

## 📊 Exemplo de Dados

O mock `orderMock` contém categorias pré-definidas:

```swift
let orderMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", imagem: "hamburguer"),
    OrderType(id: 2, name: "Mercado", imagem: "mercado"),
    OrderType(id: 3, name: "Farmácia", imagem: "farmacia"),
    OrderType(id: 4, name: "Pet", imagem: "petshop"),
    OrderType(id: 5, name: "Descontos", imagem: "descontos"),
    OrderType(id: 6, name: "Bebidas", imagem: "bebidas"),
    OrderType(id: 7, name: "Goumet", imagem: "gourmet"),
]
```

---

## 🎨 Layout

* Uso de `LazyHGrid` com `GridItem(.flexible())` para distribuir itens.
* **ScrollView vertical** envolve a grid, permitindo rolagem fluida.
* Cada item pode exibir ícone + nome da categoria.

---

## 📌 Próximos passos

* Criar a `NavigationBar` com título e botões funcionais.
* Implementar a view `OrderTypeView` com imagem e estilo customizado.
* Adicionar navegação para telas de detalhes.
* Integrar API real de restaurantes e mercados.

---

## 👨‍💻 Autor

Desenvolvido por **Francismar Alves Martins Junior**
📅 Criado em 21/09/2025


