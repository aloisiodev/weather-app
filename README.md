# WeatherApp 🌤️

Aplicativo de previsão do tempo desenvolvido em SwiftUI, utilizando arquitetura moderna, componentes reutilizáveis e integração com a OpenWeatherMap API.

---

## 📱 Visão Geral

O WeatherApp permite que usuários pesquisem por cidades e visualizem:

- Temperatura atual
- Condição do tempo (ensolarado, nublado, etc.)
- Sensação térmica
- Umidade
- Pressão atmosférica
- Velocidade do vento

A navegação é fluida e otimizada para iPhone, com suporte total a Light Mode e Dark Mode.

---

## 🛠️ Tecnologias Utilizadas

- **Swift 5.9**
- **SwiftUI 5**
- **Swift Concurrency (async/await)**
- **OpenWeatherMap API**
- **Combine** (em breve para busca inteligente)

---

## 🎨 Funcionalidades Visuais

- Cartões animados com informações climáticas.
- Ícones dinâmicos carregados diretamente da OpenWeatherMap.
- Animações de entrada suave nos componentes.
- Suporte adaptativo para Dark Mode.
- Background com gradiente para simular o clima.

---

## 🧩 Estrutura de Projeto

```plaintext
Networking/
    Environment.swift       // Configurações de ambiente (baseURL, API Key)
    WeatherAPI.swift         // Gerador de endpoints da API
    NetworkClient.swift      // Cliente de requisição genérico
    WeatherService.swift     // Serviço de acesso a dados climáticos

Models/
    WeatherResponse.swift    // Estruturas de dados da API

Utils/
    WeatherIconUtils.swift   // Utilitário para gerar URLs de ícones

Views/
    CityListView.swift       // Tela inicial com busca de cidades
    CityCardView.swift       // Cartão de apresentação do clima
    WeatherDetailView.swift  // Tela de detalhes do clima
    WeatherIconView.swift    // Componente de exibição de ícones

ViewModels/
    CityListViewModel.swift  // Lógica de negócios da tela inicial
```

---

## ⚙️ Como Rodar o Projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/weather-app.git
   ```

2. Abra o projeto no **Xcode 15** ou superior.

3. Adicione sua API Key do [OpenWeatherMap](https://openweathermap.org/api) no arquivo:

   ```swift
   // Environment.swift
   static let apiKey = "SUA_API_KEY_AQUI"
   ```

4. Execute o app em um simulador iPhone 14 ou superior.

---

## 🔥 Melhorias Futuras

- Implementar busca inteligente com debounce usando Combine.
- Tela de forecast para os próximos dias.
- Suporte a localização atual via CoreLocation.
- Animações avançadas no carregamento de dados.

---

## 📄 Licença

Este projeto é de uso pessoal/educacional. Sinta-se livre para utilizar, modificar e compartilhar.

---

Feito com ❤️ e muita cafeína.
