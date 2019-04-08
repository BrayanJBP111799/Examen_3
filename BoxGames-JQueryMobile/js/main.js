/*--------------------COLONES DE CATAN---------------------------*/
var modalcolon= document.getElementById('coloncatan');
var modalBtncolon = document.getElementById('modalBtncolon');
modalBtncolon.addEventListener('click',openModal);

/*--------------------ESCALERAS Y SERPIENTES---------------------------*/
var modales= document.getElementById('escaser');
var modalBtnes = document.getElementById('modalBtnes');
modalBtnes.addEventListener('click',openModal);

/*--------------------RISK---------------------------*/
var modalrisk= document.getElementById('risk');
var modalBtnrisk = document.getElementById('modalBtnrisk');
modalBtnrisk.addEventListener('click',openModal);

/*--------------------SCRABBLE---------------------------*/
var modalscrabble= document.getElementById('scrabble');
var modalBtnscrabble = document.getElementById('modalBtnscrabble');
modalBtnscrabble.addEventListener('click',openModal);

/*--------------------AJEDREZ---------------------------*/
var modalajedrez= document.getElementById('ajedrez');
var modalBtnajedrez = document.getElementById('modalBtnajedrez');
modalBtnajedrez.addEventListener('click',openModal);

/*--------------------MONOPOLY---------------------------*/
var modalmonopoly= document.getElementById('monopoly');
var modalBtnmono = document.getElementById('modalBtnmono');
modalBtnmono.addEventListener('click',openModal);

/*--------------------DOMINO---------------------------*/
var modaldomino= document.getElementById('domino');
var modalBtndomino = document.getElementById('modalBtndomino');
modalBtndomino.addEventListener('click',openModal);

/*--------------------JENGA---------------------------*/
var modaljenga= document.getElementById('jenga');
var modalBtnjenga = document.getElementById('modalBtnjenga');
modalBtnjenga.addEventListener('click',openModal);

/*--------------------CLUE---------------------------*/
var modalclue= document.getElementById('clue');
var modalBtnclue = document.getElementById('modalBtnclue');
modalBtnclue.addEventListener('click',openModal);

/*--------------------DAMAS---------------------------*/
var modaldamas= document.getElementById('damas');
var modalBtndamas = document.getElementById('modalBtndamas');
modalBtndamas.addEventListener('click',openModal);

/*--------------------NAIPES---------------------------*/
var modalnaipes= document.getElementById('naipes');
var modalBtnnaipes = document.getElementById('modalBtnnaipes');
modalBtnnaipes.addEventListener('click',openModal);

/*--------------------BATALLA NAVAL---------------------------*/
var modalbn= document.getElementById('batallanaval');
var modalBtnbn = document.getElementById('modalBtnbn');
modalBtnbn.addEventListener('click',openModal);

/*--------------------ABRIR MODAL---------------------------*/
function openModal(e){
	if(e.target == modalBtncolon){
		modalcolon.style.display = 'block';
	}
	if(e.target == modalBtnes){
		modales.style.display = 'block';
	}
	if(e.target == modalBtnrisk){
		modalrisk.style.display = 'block';
	}
	if(e.target == modalBtnscrabble){
		modalscrabble.style.display = 'block';
	}
	if(e.target == modalBtnajedrez){
		modalajedrez.style.display = 'block';
	}
	if(e.target == modalBtnmono){
		modalmonopoly.style.display = 'block';
	}
	if(e.target == modalBtndomino){
		modaldomino.style.display = 'block';
	}
	if(e.target == modalBtnjenga){
		modaljenga.style.display = 'block';
	}
	if(e.target == modalBtnclue){
		modalclue.style.display = 'block';
	}
	if(e.target == modalBtndamas){
		modaldamas.style.display = 'block';
	}
	if(e.target == modalBtnnaipes){
		modalnaipes.style.display = 'block';
	}
	if(e.target == modalBtnbn){
		modalbn.style.display = 'block';
	}
}

/*--------------------CERRAR MODAL---------------------------*/
var closeBtn = document.getElementsByClassName('closeBtn')[0];
closeBtn.addEventListener('click',closeModal);
//Close modal
function closeModal(e){
	modalcolon.style.display = 'none';
}

/*--------------------CERRAR MODAL AL DARLE CLICK AFUERA---------------------------*/
window.addEventListener('click',outsideClick);
//Close modal witn an outside click
function outsideClick(e){
	if(e.target == modalcolon){
		modalcolon.style.display = 'none';
	}
	if(e.target == modales){
		modales.style.display = 'none';
	}
	if(e.target == modalrisk){
		modalrisk.style.display = 'none';
	}
	if(e.target == modalscrabble){
		modalscrabble.style.display = 'none';
	}
	if(e.target == modalajedrez){
		modalajedrez.style.display = 'none';
	}
	if(e.target == modalmonopoly){
		modalmonopoly.style.display = 'none';
	}
	if(e.target == modaldomino){
		modaldomino.style.display = 'none';
	}
	if(e.target == modaljenga){
		modaljenga.style.display = 'none';
	}
	if(e.target == modalclue){
		modalclue.style.display = 'none';
	}
	if(e.target == modaldamas){
		modaldamas.style.display = 'none';
	}
	if(e.target == modalnaipes){
		modalnaipes.style.display = 'none';
	}
	if(e.target == modalbn){
		modalbn.style.display = 'none';
	}
}
