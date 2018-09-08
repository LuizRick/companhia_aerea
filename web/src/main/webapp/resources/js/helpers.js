/**
 * Faz uma requisição asincrona do tipo POST 
 * @param url {String} - Url para o http request
 * @param data {Object} - Objeto a ser enviado na requisição
 * @param onSucess {Function} [onSuccess] callback em caso de sucesso (Optional)
 * @param onError {Function} [onError]
 * @returns
 */
function PostRequestAsync(url,data,onSuccess,onError){
    $.ajax({
        url: url,
        method: "POST",
        data: data,
        success:function(){
            if(onSuccess)
        	onSuccess.apply(this,arguments);
        },
        error:function(){
            if(onError)
        	onError.apply(this,arguments);
        }
    });
}

String.prototype.replaceComma = function(){
    return this.replace(",", ".");
}

String.prototype.getJustNum = function(){
    return this.replace(/[^a-zA-Z0-9 ]/g, "");
}