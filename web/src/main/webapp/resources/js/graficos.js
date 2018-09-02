var options = {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    };
$(function(){
    grafico1();
    grafico2();
    grafico3();
    grafico4();
    grafico5();
});

function grafico1(){
    var ctx = document.getElementById("grafico1").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Brasil", "Inglaterra", "Japao", "Canada", "Australia", "Russia"],
            datasets: [{
                label: 'Vendas',
                data: [120, 190, 120, 50, 20, 30],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: options
    });
}
function grafico2(){
    var ctx = document.getElementById("grafico2").getContext("2d");
    
    
    var chart = new Chart(ctx,{
	type:'line',
	data:{
	    datasets:[{
		label:'Quantidade de passagens',
		data:[10,20,30,40,60,50,90,100,120,17,20,66]
	    },{
		label:'Quantidade de check-ins',
		data:[20,30,55,33,30,20,50,100,10,17,20,66],
		type:'line',
		backgroundColor:'rgba(0,0,255,0.3)'
	    }],
	    labels: ['Janeiro' , 'Fevereiro' , 'Marco' , 'Abril' , 'Maio' ,
		'Junho' , 'Julho' , 'Agosto' , 'Setembro' , 'Outrobro', 'Novembro', 'Dezembro']
	},
	options:options
    });
}

 function grafico3(){
    var ctx = document.getElementById("grafico3").getContext("2d");
    var chart = new Chart(ctx,{
	type:'line',
	data:{
	    datasets:[{
		label:'Quantidade de check-in',
		data:[10,20,30,40,60,50,90],
		backgroundColor:'rgba(250,200,200,0.6)'
	    },{
		label:'Quantidade de Embarques',
		data:[20,30,55,33,30,20,50],
		type:'line',
		backgroundColor:'rgba(200,0,255,0.3)'
	    }],
	    labels: ['Segunda' , 'Terca' , 'Quarta' , 'Quinta' , 'Sexta' ,'Sabado' ,'Domingo']
	},
	options:options
    });
}
 function grafico4(){
     var ctx = document.getElementById("grafico4").getContext("2d");
     var chart = new Chart(ctx,{
 	type:'line',
 	data:{
 	    datasets:[{
 		label:'Tempo de Check-in',
 		data:[1,2,3,4,6,5,9],
 		backgroundColor:'rgba(0,200,200,0.6)'
 	    },{
 		label:'Tempo de Embarques',
 		data:[5,3,2,3,4,2,5],
 		type:'line',
 		backgroundColor:'rgba(0,200,255,0.3)'
 	    }],
 	    labels: ['Segunda' , 'Terca' , 'Quarta' , 'Quinta' , 'Sexta' ,'Sabado' ,'Domingo']
 	},
 	options:options
     });
 }

 function grafico5(){
     var ctx = document.getElementById("grafico5").getContext("2d");
     var chart = new Chart(ctx,{
 	type:'line',
 	data:{
 	    datasets:[{
 		label:'Quantidade',
 		data:[21,12,15,10,5,8,9],
 		backgroundColor:'rgba(100,200,200,0.6)'
 	    }],
 	    labels: ['Segunda' , 'Terca' , 'Quarta' , 'Quinta' , 'Sexta' ,'Sabado' ,'Domingo']
 	},
 	options:options
     });
 }
  
  
  