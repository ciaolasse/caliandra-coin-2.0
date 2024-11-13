# CLDToken

**CLDToken** é um contrato inteligente de token ERC-20 desenvolvido para representar o token **Caliandra** (símbolo: CLD) na blockchain Ethereum. Este contrato utiliza a implementação padrão do token ERC-20 da biblioteca OpenZeppelin, com funções adicionais para facilitar a emissão (minting) e queima (burning) de tokens.

## Sumário

- [Visão Geral](#visão-geral)
- [Funcionalidades](#funcionalidades)
- [Como Usar](#como-usar)

## Visão Geral

O token **CLD** é desenvolvido seguindo o padrão ERC-20, garantindo compatibilidade com carteiras e exchanges que suportam este padrão. Ele também possui recursos de segurança fornecidos pela OpenZeppelin, como controle de propriedade e controle de acesso restrito, permitindo que apenas o proprietário realize ações específicas.

**Nome do Token:** Caliandra  
**Símbolo:** CLD  
**Total de Tokens Inicial:** 1.000.000 CLD  
**Contrato Inicial:** `0x84Ae1C94A5bA9A837DC9f716fFcE6b1F0f1039f5`

## Funcionalidades

1. **Emissão Inicial**: Na criação do contrato, o proprietário recebe 1.000.000 de tokens CLD.
2. **Mint**: Apenas o proprietário pode emitir novos tokens. Isso pode ser usado para expandir a oferta de tokens conforme necessário.
3. **Burn**: Qualquer usuário pode queimar seus próprios tokens, reduzindo o total de tokens em circulação.

### Funções Principais

- **mint(address to, uint256 amount)**: Permite ao proprietário emitir novos tokens para um endereço especificado.
- **burn(uint256 amount)**: Permite que qualquer usuário queime uma quantidade especificada de tokens que ele possua.

## Como Usar

Para interagir com o contrato CLDToken, você precisa de uma carteira compatível com a rede Ethereum e com tokens ERC-20.

- **Emitir Tokens (mint)**: Somente o proprietário pode chamar esta função para adicionar tokens ao saldo de um endereço.
- **Queimar Tokens (burn)**: Qualquer usuário pode optar por queimar seus tokens, chamando a função com a quantidade desejada.

Este contrato pode ser facilmente integrado a DApps (Aplicativos Descentralizados) ou carteiras que suportem tokens ERC-20.

