package com.companhia.rns.cliente;

import com.companhia.entities.Cliente;
import com.companhia.entities.EntidadeDominio;
import com.companhia.helpers.StringHelper;
import com.companhia.rns.IStrategy;

public class ValidarCamposObrigatorios  implements IStrategy{

	@Override
	public String processar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		Cliente cliente = (Cliente) entidade;
		StringBuilder sb = new StringBuilder();
		if(StringHelper.isNullOrEmpty(cliente.getNome()))
			 sb.append("Nome do cliente não pode ser vazio\n");
		if(StringHelper.isNullOrEmpty(cliente.getCpf()))
			sb.append("CPF não e valido\n");
		
		if(StringHelper.isNullOrEmpty(cliente.getCelular()))
			sb.append("Colocar um celular valido\n");
		
		if(StringHelper.isNullOrEmpty(cliente.getEmail()))
			sb.append("Email invalido\n");
		
		if(StringHelper.isNullOrEmpty(cliente.getRg()))
			sb.append("RG e invalido\n");
		
		if(StringHelper.isNullOrEmpty(cliente.getSenha()))
			sb.append("Senha do usuario e invalida\n");
		
		if(StringHelper.isNullOrEmpty(cliente.getTelefone()))
			sb.append("Telefone e invalido\n");
		
		if(cliente.getNascimento() == null)
			sb.append("Data de nascimento e invalida\n");
		
		if(cliente.getEndereco() != null) {
			if(StringHelper.isNullOrEmpty(cliente.getEndereco().getBairro()))
				sb.append("Bairro e invalido\n");
			
			if(StringHelper.isNullOrEmpty(cliente.getEndereco().getCep()))
				sb.append("Cep e invalido\n");
			
			if(StringHelper.isNullOrEmpty(cliente.getEndereco().getCidade()))
				sb.append("cidade e invalida\n");
			
			//if(StringHelper.isNullOrEmpty(cliente.getEndereco().getComplemento()))
			//	sb.append("complemento e invalido\n");
			
			if(StringHelper.isNullOrEmpty(cliente.getEndereco().getLogradouro()))
				sb.append("Logradouro e invalido\n");
			
			if(StringHelper.isNullOrEmpty(cliente.getEndereco().getPais()))
				sb.append("Pais e invalido\n");
		}else {
			sb.append("Dados do endereço devem ser validos\n");
		}
		
		
		
		if(sb.length() > 0)
			return sb.toString();
		
		
		return null;
	}

	
}
