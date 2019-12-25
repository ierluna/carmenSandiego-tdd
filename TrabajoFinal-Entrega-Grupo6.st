!classDefinition: #TestSetUp category: #TPFinal!
TestCase subclass: #TestSetUp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestSetUp methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 16:21:51'!
pistaDeFormaDeCabelloPelado
	^Pista conDatoARevelar: 'pelado'.
! !

!TestSetUp methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:49:29'!
unPistaDeSexoFemenino
	^ PistaDeSexo conDatoARevelar: 'femenino'! !


!TestSetUp methodsFor: 'sospechoso' stamp: 'H D 12/13/2019 19:41:18'!
bartSimpsons
	^((((((((Sospechoso new colorDeTez: 'amarillo')colorDeCabello: 'amarillo')sexo:'masculino')contexturaFisica:'flaco')conNombre:'Bart Simpsons')colorDeOjos:'marrones')formaDeCabello:'punteagudo')altura:'bajo')
	
	
	
	
	
	
	! !

!TestSetUp methodsFor: 'sospechoso' stamp: 'H D 12/13/2019 19:44:36'!
krusty
	^((((((((Sospechoso new altura: 'baja') colorDeTez:'blanca')colorDeCabello:'turquesa')contexturaFisica: 'robusta')sexo:'masculino')colorDeOjos:'verde')formaDeCabello: 'redondeado')nombre:'krusty')
	
	
	
	
	
	
	
	! !

!TestSetUp methodsFor: 'sospechoso' stamp: 'H D 12/13/2019 19:45:33'!
lisaSimpsons
	^((((((((Sospechoso new colorDeOjos: 'azules')
	sexo:'femenino')
	colorDeTez:'amarillo')
	formaDeCabello:'en punta')
	altura:'baja')
	contexturaFisica:'delgada')
	colorDeCabello:'amarillo')
	nombre: 'lisa')
	
	
	
	! !


!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/12/2019 21:48:40'!
pistaColorDeCabelloTurquesa
	^PistaDeColorDeCabello conDatoARevelar: 'turquesa'! !

!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/12/2019 21:39:37'!
pistaColorDeOjosVerdes
	^PistaDeColorDeOjos conDatoARevelar: 'verde'! !

!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/12/2019 21:41:08'!
pistaDeAlturaAlta
	^PistaDeAltura conDatoARevelar: 'alta'! !

!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/12/2019 21:51:54'!
pistaDeDestinoBrasil
	^PistaDeDestino conDatoARevelar: 'Brasil'! !

!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/13/2019 16:06:07'!
pistaDeSexoFemenino
	^PistaDeSexo conDatoARevelar: 'femenino'! !

!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/12/2019 21:44:39'!
unaPistaDeColorDeTezBlanca
	^ PistaDeColorDeTez conDatoARevelar: 'blanca'! !

!TestSetUp methodsFor: 'pistas' stamp: 'jl 12/12/2019 21:50:14'!
unaPistaDeContexturaRobusta
	^PistaDeContexturaFisica conDatoARevelar: 'robusta'! !


!TestSetUp methodsFor: 'detective' stamp: 'H D 12/13/2019 20:03:32'!
sherlock
	^DetectiveClasico new! !


!TestSetUp methodsFor: 'testigo' stamp: 'jl 12/13/2019 15:42:35'!
testigo
	^Testigo new.! !


!TestSetUp methodsFor: 'computadora' stamp: 'jl 12/13/2019 16:21:58'!
unaColeco
	^ Computadora new.! !


!classDefinition: #TestComputadora category: #TPFinal!
TestSetUp subclass: #TestComputadora
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/12/2019 22:33:38'!
test01unaNuevaComputadoraTieneUnaListaDeSospechososVacia
	| computadora |
	computadora _ Computadora new.
	
	Assert isTrue: computadora listaDeSospechososVacia.
	Assert that: computadora cantidadDeSospechosos isEqualTo:0. ! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:19:10'!
test02unSospechosoEsAgregadoALaListaDeSospechosos


| computadora unSospechoso |

computadora _ Computadora new.
unSospechoso _ Sospechoso new.
computadora registrarSospechoso: unSospechoso.

Assert isTrue: (computadora tieneRegistradoAlSospechoso: unSospechoso).! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:50:43'!
test03unaComputadoraEsCapazDeFiltrarSuListaDeSospechososAPartirDeUnaPistaAcercaDelColorDeOjos
	| computadora unaSospechosa pistaDelColorDeOjos |
	computadora _ self unaColeco .
	unaSospechosa _ self lisaSimpsons. 
	pistaDelColorDeOjos _ self pistaColorDeOjosVerdes.
	computadora registrarSospechoso: unaSospechosa.
	computadora procesarPistaDeRazgo: pistaDelColorDeOjos .

	Assert isFalse: (computadora tieneRegistradoAlSospechoso: unaSospechosa).! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:50:59'!
test04_unaComputadoraFiltraAUnSospechosoSegunSuAltura
	| unSospechoso unaComputadora unaPista |
	unaComputadora:=self unaColeco.
	unSospechoso:=self krusty.
	unaPista:=self pistaDeAlturaAlta.
	unaComputadora registrarSospechoso: unSospechoso.
	
	unaComputadora procesarPistaDeRazgo: unaPista .	 
	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:unSospechoso)   ! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:51:11'!
test05_unaComputadoraFiltraAUnSospechosoSegunSuColorDeTez
	| bartSimpson unaComputadora unaPistaDeColor krusty |
	unaComputadora:=self unaColeco.
	bartSimpson:=self bartSimpsons.
	krusty:=self krusty .
	unaPistaDeColor:=self unaPistaDeColorDeTezBlanca.

	unaComputadora registrarSospechoso: bartSimpson.
	unaComputadora registrarSospechoso: krusty.
	unaComputadora procesarPistaDeRazgo:unaPistaDeColor.	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:bartSimpson);
			  isTrue: ( unaComputadora tieneRegistradoAlSospechoso: krusty);
			  that: unaComputadora cantidadDeSospechosos isEqualTo: 1.! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:51:18'!
test06_unaComputadoraFiltraAUnSospechosoSegunSuColorDeCabello
	| bartSimpson unaComputadora unaPistaDeColorDeCabello krusty|
	unaComputadora:=self unaColeco.
	bartSimpson:=self bartSimpsons. 
	krusty:=self krusty.
	unaPistaDeColorDeCabello:=self pistaColorDeCabelloTurquesa .
	
	unaComputadora registrarSospechoso: bartSimpson.
	unaComputadora registrarSospechoso: krusty.
	unaComputadora procesarPistaDeRazgo: unaPistaDeColorDeCabello.	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:bartSimpson);
			  isTrue: ( unaComputadora tieneRegistradoAlSospechoso: krusty);
			  that: unaComputadora cantidadDeSospechosos isEqualTo: 1.! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:51:23'!
test07_unaComputadoraFiltraAUnSospechosoSegunSuSexo
	| bartSimpson unaComputadora unaPistaDeSexo lisaSimpson|
	unaComputadora:=self unaColeco.
	bartSimpson:=self bartSimpsons .
	lisaSimpson:=self lisaSimpsons.
	unaPistaDeSexo:=self unPistaDeSexoFemenino.
	unaComputadora registrarSospechoso: bartSimpson.
	unaComputadora registrarSospechoso: lisaSimpson.
	unaComputadora procesarPistaDeRazgo: unaPistaDeSexo.	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:bartSimpson);
			  isTrue: ( unaComputadora tieneRegistradoAlSospechoso: lisaSimpson);
			  that: unaComputadora cantidadDeSospechosos isEqualTo: 1.! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:51:29'!
test08_unaComputadoraFiltraAUnSospechosoSegunSuContexturaFisica
	| bartSimpson unaComputadora unaPistaDeContextura krusty|
	unaComputadora:=self unaColeco.
	bartSimpson:=self bartSimpsons.
	krusty:=self krusty.
	unaPistaDeContextura:=self unaPistaDeContexturaRobusta.

	unaComputadora registrarSospechoso: bartSimpson.
	unaComputadora registrarSospechoso: krusty.
	unaComputadora procesarPistaDeRazgo: unaPistaDeContextura.	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:bartSimpson);
			  isTrue: ( unaComputadora tieneRegistradoAlSospechoso: krusty);
			  that: unaComputadora cantidadDeSospechosos isEqualTo: 1.! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:51:35'!
test09_unaComputadoraFiltraAUnSospechosoSegunSuFormaDeCabello
   | unSospechoso unaComputadora unaPista |
	unaComputadora:=self unaColeco.
	unSospechoso:=self krusty.
	unaPista:=self pistaDeFormaDeCabelloPelado.
	unaComputadora registrarSospechoso: unSospechoso.
	
	unaComputadora procesarPistaDeRazgo:unaPista.	 
	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:unSospechoso)   ! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:54:01'!
test10_unaComputadoraObtenerDestinoDeUnaPistaDeDestino
	| unaComputadora unaPistaDeDestino |
	unaComputadora:=Computadora new.
	unaPistaDeDestino:=self pistaDeDestinoBrasil.
	unaComputadora procesarPistaDeDestino:unaPistaDeDestino.	
	
	Assert that:  unaComputadora futuroDestino isEqualTo: 'Brasil'. 
	
	
	
	
	
	
	! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:57:38'!
test11_unaComputadoraPuedeProcesarUnaPistaDeDestino
	| unaComputadora unaPistaDeDestino |
	unaComputadora:=Computadora new.
	unaPistaDeDestino:=self pistaDeDestinoBrasil.
	unaComputadora procesarPista:unaPistaDeDestino.	
	
	Assert that:  unaComputadora futuroDestino isEqualTo: 'Brasil'. 
	
	
	
	
	
	
	! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:01:36'!
test12_unaComputadoraPuedeProcesarUnaPistaDeRazgo
	| bartSimpson unaComputadora unaPistaDeContextura krusty|
	unaComputadora:=self unaColeco.
	bartSimpson:=self bartSimpsons.
	krusty:=self krusty.
	unaPistaDeContextura:=self unaPistaDeContexturaRobusta.

	unaComputadora registrarSospechoso: bartSimpson.
	unaComputadora registrarSospechoso: krusty.
	unaComputadora procesarPista: unaPistaDeContextura.	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:bartSimpson);
			  isTrue: ( unaComputadora tieneRegistradoAlSospechoso: krusty);
			  that: unaComputadora cantidadDeSospechosos isEqualTo: 1.! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:05:38'!
test13_unaComputadoraFiltraUnConjuntoDePistasDiferentes
   | unSospechoso unaComputadora unaPista unaPistaDeDestino |
	unaComputadora:=self unaColeco.
	unSospechoso:=self krusty.
	unaPista:=self pistaDeFormaDeCabelloPelado.
	unaPistaDeDestino _ self pistaDeDestinoBrasil.
	unaComputadora registrarSospechoso: unSospechoso.
	
	unaComputadora procesarPistas:( Set with:unaPista  with:unaPistaDeDestino ).	 
	
	
	Assert isFalse: (unaComputadora tieneRegistradoAlSospechoso:unSospechoso).
	Assert that: unaComputadora futuroDestino isEqualTo: 'Brasil'.! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:57:48'!
test14_unaComputadoraNoPuedeEmitirUnaOrdenDeArresto
	| unaComputadora unSospechoso otroSospechoso |
	unaComputadora:=Computadora new.
	unSospechoso := Sospechoso new.
	otroSospechoso := Sospechoso new.
	unaComputadora registrarSospechoso:unSospechoso;
						 registrarSospechoso:otroSospechoso.
		
	Assert isFalse:  (unaComputadora puedeEmitirOrdenDeArresto) ! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:05:54'!
test15_unaComputadoraPuedeEmitirUnaOrdenDeArresto
	| unaComputadora unSospechoso |
	unaComputadora:=Computadora new.
	unSospechoso := Sospechoso new.
	unaComputadora registrarSospechoso:unSospechoso.
		
	Assert isTrue:  (unaComputadora puedeEmitirOrdenDeArresto) ! !

!TestComputadora methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 13:16:18'!
test16_unaComputadoraSabeEmitirUnaOrdenDeArresto
	| unaComputadora unSospechoso |
	unaComputadora:= self unaColeco.
	unSospechoso _ self bartSimpsons .
	unaComputadora registrarSospechoso:unSospechoso.
	unaComputadora emitirOrdenDeArresto.
		
	Assert isTrue: 'ordenDeArresto.txt' asFileEntry exists.! !


!classDefinition: #TestDetective category: #TPFinal!
TestSetUp subclass: #TestDetective
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test00_unDetectiveSabeSuUbicacion

	| argentina sherlock |
	argentina _ Pais new.
	sherlock := DetectiveClasico conUbicacion: argentina.
	
	Assert that: sherlock ubicacion  isEqualTo: argentina.! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'jl 12/6/2019 14:53:11'!
test01_unDetectivePuedeViajarAOtroPais

	| sherlock brasil |
	brasil _ Pais new.
	sherlock :=  self unDetectiveEnArgentinaCon72HorasDeLimite.
	sherlock viajarA: brasil.
	
	Assert that: sherlock ubicacion  isEqualTo: brasil.! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test02_unDetectiveQueNoPuedeTenerComoDestinoDeViajeSuUbicacionActual
	|argentina sherlock |
	argentina _ Pais new.
	sherlock := DetectiveClasico new conUbicacion: argentina.
	
	
	Assert should:  [sherlock viajarA: argentina.]
			signal: Error
		      withDescription: 'El destino no puede ser igual al origen.'! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'jl 12/6/2019 14:53:32'!
test03_unDetectivePierde10HorasAlViajarAUnPaisNoLimitrofe

	| sherlock peru argentina |
	peru _ Pais new.
	argentina _ Pais new.
	argentina limitaCon: peru.
	peru limitaCon: argentina.
	sherlock := self  unDetectiveEnArgentinaCon72HorasDeLimite.
	
	sherlock viajarA: peru.
	
	Assert that: sherlock tiempoRestante  isEqualTo: 62 *hour.! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test04_unDetectiveTieneUnLimiteDeTiempoParaEncontrarAlDelincuente

	| sherlock |
	sherlock := DetectiveClasico conTiempoRestante: 72*hour.
	
	Assert that: sherlock tiempoRestante  isEqualTo: 72 *hour.! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test05_unDetectiveNoPuedeVolarAUnPaisNoLimitrofeSiNoTieneTiempoRestante

	| sherlock peru argentina |
	argentina _ Pais new.
	peru _ Pais new.
	sherlock :=  DetectiveClasico conUbicacion: argentina yTiempo: 1*hour. 
	sherlock viajarA: peru
	
	"Assert should: [sherlock viajarA: peru]
			 signal:  Error
			 withDescription: 'Te quedaste sin tiempo.'."
		! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test06_unDetectiveNoPuedeVolarAUnPaisLimitrofeSiNoTieneTiempoRestante

	| sherlock brasil argentina |
	argentina _ Pais new.
	brasil _ Pais new.
	argentina limitaCon: brasil.
	brasil limitaCon:argentina.
	sherlock :=  DetectiveClasico conUbicacion: argentina yTiempo: 0*hour. 
	
	Assert should: [sherlock viajarA: brasil]
			 signal:  Error
			 withDescription: 'Te quedaste sin tiempo.'.
		! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'jl 12/6/2019 16:07:37'!
test07_unDetectivePierde7HorasAlViajarAUnPaisLimitrofe
	| sherlock  chile |
	sherlock := self unDetectiveEnArgentinaCon72HorasDeLimite.
	chile _ Pais new.
	chile limitaCon: sherlock ubicacion.
	sherlock ubicacion limitaCon: chile.
	
	sherlock viajarA: chile.
	
	Assert that: sherlock tiempoRestante isEqualTo:65 * hour! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test08_unDetectiveNoPierdeElJuegoSiTieneTiempoDespuesDeVolar

	| sherlock brasil argentina |
	argentina _ Pais new.
	brasil _ Pais new.
	sherlock :=  DetectiveClasico conUbicacion: argentina yTiempo:11*hour. 
	
	sherlock viajarA: brasil.
	
	Assert that: sherlock tiempoRestante isEqualTo: 1*hour.! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test09_unDetectivePierdeDosHorasCadaVezQueInterrogaAUnTestigo

	| sherlock testigo1 unaPista |
	sherlock :=  DetectiveClasico conTiempoRestante:72*hour. 
	testigo1 _ Testigo new.
	unaPista _ Pista new.
	testigo1 agregarPista: unaPista.
	sherlock interrogarA:testigo1.
	
	
	Assert that:  sherlock tiempoRestante isEqualTo:  70*hour.! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test10_unDetectivePierdeElJuegoAlQuedarseSinTiempoLuegoDeInterrogarAUnTestigo
	| sherlock  testigo1 |
	sherlock :=  DetectiveClasico conTiempoRestante: 0 *hour. 
	
	Assert should: [sherlock interrogarA:testigo1]
			 signal: Error
			 withDescription: 'Se acabo el tiempo.'! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test11_unDetectiveObtieneUnaPistaCadaVezQueInterrogaAUnTestigo

	| sherlock unTestigo unaPista otraPista |
	sherlock :=  DetectiveClasico conTiempoRestante:72*hour. 
	unTestigo _ Testigo new. 
	unaPista _ Pista new.
	otraPista _ Pista new.
	unTestigo agregarPista: unaPista;
				agregarPista: otraPista.
	
	sherlock interrogarA:unTestigo.
	
	Assert isTrue:(sherlock tieneRegistradoEnLaComputadora:unaPista).
	Assert that: sherlock cantidadDePistasRegistradas isEqualTo: 1. ! !

!TestDetective methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
unDetectiveEnArgentinaCon72HorasDeLimite
	| argentina |
	argentina _ Pais new.
	^ DetectiveClasico conUbicacion: argentina  yTiempo: 72 *hour! !


!classDefinition: #TestDetectiveInterpol category: #TPFinal!
TestSetUp subclass: #TestDetectiveInterpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestDetectiveInterpol methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 00:09:39'!
test01_unDetectiveDeInterpolTarda8HorasEnViajarAUnPaisNoLimitrofe

	| unDetectiveInterpol |
	unDetectiveInterpol:= DetectiveInterpol new.
		
	Assert that: unDetectiveInterpol tiempoPorViajarAUnPaisNoLimitrofe  isEqualTo: 8*hour.! !

!TestDetectiveInterpol methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 00:11:09'!
test02_unDetectiveDeInterpolTarda5HorasEnViajarAUnPaisLimitrofe

	| unDetectiveInterpol |
	unDetectiveInterpol:= DetectiveInterpol new.
		
	Assert that: unDetectiveInterpol tiempoPorViajarAUnPaisLimitrofe  isEqualTo: 5*hour.! !


!classDefinition: #TestDetectivePersuasivo category: #TPFinal!
TestSetUp subclass: #TestDetectivePersuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestDetectivePersuasivo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 00:17:14'!
test01_unDetectivePersuasivoSoloPierdeUnaHoraAlInterrogarAUnTestigo
	
	| unDetectivePersuasivo |
	unDetectivePersuasivo _ DetectivePersuasivo new.
	
	Assert that: unDetectivePersuasivo tiempoPerdidoAlnterrogarTestigo isEqualTo: 1*hour.! !

!TestDetectivePersuasivo methodsFor: 'as yet unclassified' stamp: 'H D 12/12/2019 01:20:47'!
test02_unDetectivePersuasivoObtieneDosPistasAlInterrogarAUnTestigo
	
	| unDetectivePersuasivo otraPista unTestigo unaPista |
	unDetectivePersuasivo _ DetectivePersuasivo new.
	unTestigo _ Testigo new.
	unaPista _ Pista new.
	otraPista _ Pista new.
	unTestigo agregarPista: unaPista.
	unTestigo agregarPista: otraPista.
	unDetectivePersuasivo conTiempoRestante: 10*hour.
	unDetectivePersuasivo interrogarA: unTestigo.
	
	Assert isTrue: ((unDetectivePersuasivo tieneRegistradoEnLaComputadora: unaPista )and: (unDetectivePersuasivo tieneRegistradoEnLaComputadora: otraPista)).! !


!classDefinition: #TestPais category: #TPFinal!
TestSetUp subclass: #TestPais
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestPais methodsFor: 'as yet unclassified' stamp: 'H D 11/22/2019 11:12:20'!
test01unPaisTieneUnObjetoDeValorHistorico
	| uruguay  |

	uruguay _ Pais conObjetoHistorico.

	Assert isTrue: uruguay poseeSuObjetoHistorico.! !

!TestPais methodsFor: 'as yet unclassified' stamp: 'H D 11/22/2019 11:50:49'!
test02unPaisNoTieneUnObjetoDeValorHistorico
	| uruguay |

	uruguay _ Pais new.
	
	uruguay perderObjetohistorico.
	
	Assert isFalse: uruguay poseeSuObjetoHistorico.! !

!TestPais methodsFor: 'as yet unclassified' stamp: 'hd 11/28/2019 14:32:47'!
test03unPaisEsLimitrofeDeOtro
	| argentina chile |

	argentina _ Pais new.
	chile _ Pais new.
	
	argentina limitaCon: chile.
	chile limitaCon: argentina.
	
	Assert isTrue:( argentina esLimitrofeDe: chile).
	Assert isTrue: (chile esLimitrofeDe: argentina).! !

!TestPais methodsFor: 'as yet unclassified' stamp: 'H D 11/22/2019 11:58:39'!
test04unPaisNoEsLimitrofeDeOtro
	| uruguay chile |

	uruguay _ Pais new.
	chile _ Pais new.
	
	
	
	Assert isFalse:( chile esLimitrofeDe: uruguay).! !

!TestPais methodsFor: 'as yet unclassified' stamp: 'hd 11/28/2019 14:49:58'!
test05unPaisTiene3Testigos
	| argentina  testigo1 testigo2 testigo3 | 

	argentina _ Pais conTestigos:[ testigo1, testigo2, testigo3].
	
		
	Assert that: argentina cantidadDeTestigos isEqualTo: 3.! !


!classDefinition: #TestPartida category: #TPFinal!
TestSetUp subclass: #TestPartida
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestPartida methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 16:39:16'!
test01PorPartidaHayUnDetective

	| sherlock unaPartida |
	sherlock := self sherlock.
	unaPartida := Partida conDetective:sherlock.
	
		
	Assert that: unaPartida detective isEqualTo: sherlock
	! !

!TestPartida methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 20:03:32'!
test02PorPartidaHayUnaListaDeSospechosos

	| unaListaDeSospechosos unaNuevaPartida sherlock bart krusty |
	bart _ self bartSimpsons .
	krusty _ self krusty.
	sherlock _ DetectiveClasico new.
	unaNuevaPartida _ Partida conDetective: sherlock.
	unaNuevaPartida añadirSospechosoALaLista: bart;
					     añadirSospechosoALaLista: krusty.
	
	unaListaDeSospechosos _ Set with: bart with: krusty.
	
	Assert that: unaNuevaPartida listaDeSospechosos isEqualTo: unaListaDeSospechosos! !

!TestPartida methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 17:50:00'!
test03PorPartidaHayUnCulpableSiHaySolamenteUnSospechosoEnLaLista
	| sherlock unaPartida bart krusty lisa testigo1 pistaDeSexo culpable |
	sherlock := self sherlock.
	
	krusty := self krusty.
	lisa:= self lisaSimpsons.
	bart:=self bartSimpsons.
	
	pistaDeSexo:= self pistaDeSexoFemenino.
	
	testigo1 := self testigo.
	testigo1 agregarPista: pistaDeSexo.
	
	unaPartida := Partida conDetective:sherlock .
	unaPartida conTiempoRestante: 100*hour;
				 añadirSospechosoALaLista: krusty;
				 añadirSospechosoALaLista: bart;
				 añadirSospechosoALaLista: lisa.
	
	(unaPartida detective) interrogarA:  testigo1.	
	culpable := (unaPartida listaDeSospechosos anyOne).			 
		
	Assert that: culpable  isEqualTo: lisa;
			  isTrue: ('ordenDeArresto.txt' asFileEntry exists);
			  that: unaPartida tiempoRestante isEqualTo: 98*hour.! !


!classDefinition: #TestPista category: #TPFinal!
TestSetUp subclass: #TestPista
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestPista methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:48:54'!
test01unaPistaDeElColorDeOjosDelSospechosoTieneDatosDelColorDeOjos

| unaPistaDeColorDeOjos |
unaPistaDeColorDeOjos _ PistaDeColorDeOjos conDatoARevelar: 'magenta'.

Assert that: unaPistaDeColorDeOjos datoARevelar isEqualTo: 'magenta'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:51:05'!
test02unaPistaDeLaFormaDelCabelloDelSospechosoTieneDatosAcercaDeLaFormaDeCabello

| unaPistaDeFormaDeCabello |
unaPistaDeFormaDeCabello _ PistaDeFormaDeCabello conDatoARevelar: 'pelado'.


Assert that: unaPistaDeFormaDeCabello datoARevelar isEqualTo: 'pelado'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:51:20'!
test03unaPistaPuedeTenerDatosAcercaDelColorDeCabelloDelSospechoso

| unaPista |
unaPista _ PistaDeColorDeCabello conDatoARevelar:'verde'.


Assert that: unaPista datoARevelar isEqualTo: 'verde'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:15:15'!
test04unaPistaPuedeTenerDatosAcercaDelColorDeTezDelSospechoso

| unaPista |
unaPista _ PistaDeColorDeTez conDatoARevelar:'blanco'.

Assert that: unaPista datoARevelar isEqualTo: 'blanco'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:16:23'!
test05unaPistaPuedeTenerDatosAcercaDeLaContexturaFisicaDelSospechoso

| unaPista |
unaPista _ PistaDeContexturaFisica conDatoARevelar:'normal'.

Assert that: unaPista datoARevelar isEqualTo: 'normal'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:17:26'!
test06unaPistaPuedeTenerDatosAcercaDelSexoDelSospechoso

| unaPista |
unaPista _ PistaDeSexo conDatoARevelar: 'femenino'.

Assert that: unaPista datoARevelar isEqualTo: 'femenino'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:18:04'!
test07unaPistaPuedeTenerDatosAcercaDeLaAlturaDelSospechoso

| unaPista |
unaPista _ PistaDeAltura conDatoARevelar: 'alta'.

Assert that: unaPista datoARevelar isEqualTo: 'alta'.! !

!TestPista methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:23:53'!
test08unaPistaPuedeTenerDatosAcercaDelDestinoDelSospechoso

| unaPista |
unaPista _ PistaDeDestino conDatoARevelar: 'peru'.

Assert that: unaPista datoARevelar isEqualTo: 'peru'.! !


!classDefinition: #TestSospechoso category: #TPFinal!
TestSetUp subclass: #TestSospechoso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 13:24:05'!
test00_unSospechosoTieneNombre
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso nombre: 'Bart Simpsons'.
	
	Assert that: unSospechoso nombre  isEqualTo: 'Bart Simpsons'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:53:27'!
test01_unSospechosoTieneOjosAzules
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso colorDeOjos: 'azules'.
	
	Assert that: unSospechoso colorDeOjos  isEqualTo: 'azules'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:01:38'!
test02_unSospechosoTieneUnaFormaDeCabello
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso formaDeCabello: 'corto'.
	
	Assert that: unSospechoso formaDeCabello  isEqualTo: 'corto'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:03:23'!
test03_unSospechosoTieneUnColorDeCabello
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso colorDeCabello: 'negro'.
	
	Assert that: unSospechoso colorDeCabello  isEqualTo: 'negro'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:04:54'!
test04_unSospechosoTieneUnColorDeTez
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso colorDeTez: 'blanca'.
	
	Assert that: unSospechoso colorDeTez  isEqualTo: 'blanca'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:06:02'!
test05_unSospechosoTieneUnaContexturaFisica
	| unSospechoso |
	unSospechoso _ Sospechoso new.
	unSospechoso contexturaFisica: 'relleno'.
	
	Assert that: unSospechoso contexturaFisica  isEqualTo: 'relleno'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:07:00'!
test06_unSospechosoTieneUnSexo
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso sexo: 'masculino'.
	
	Assert that: unSospechoso sexo  isEqualTo: 'masculino'. ! !

!TestSospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:08:13'!
test07_unSospechosoTieneUnaAltura
	| unSospechoso |
	unSospechoso := Sospechoso new.
	unSospechoso altura: 'alta'.
	
	Assert that: unSospechoso altura  isEqualTo: 'alta'. ! !


!TestSospechoso methodsFor: 'setUp' stamp: 'H D 12/8/2019 12:11:40'!
unSospechoso
	^ Sospechoso new 
	
	
	""conOjos: 'azules' formaCabello: 'corto' conColorCabello:'castanio' yColorDeTez: 'blanca' yContexturaFisica:'relleno' ySexo: 'masculino' yAltura: 'alta'""! !


!classDefinition: #TestTestigos category: #TPFinal!
TestSetUp subclass: #TestTestigos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TestTestigos methodsFor: 'as yet unclassified' stamp: 'jl 12/4/2019 17:57:13'!
test01_unTestigoEstaEnUnPais

	| argentina unTestigo |
	unTestigo := Testigo conUbicacion:argentina.
	
	Assert that: unTestigo ubicacion  isEqualTo: argentina.! !

!TestTestigos methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:35:02'!
test02_unTestigoTieneUnaPista

	| unTestigo unaPista |
	unTestigo _ Testigo new.
	unaPista _ Pista new.
	unTestigo agregarPista: unaPista.
	
	Assert isTrue: (unTestigo tieneLaPista: unaPista).! !

!TestTestigos methodsFor: 'as yet unclassified' stamp: 'H D 12/12/2019 00:24:18'!
test03_unTestigoTiene2Pistas

	| unTestigo otraPista unaPista |
	unTestigo := Testigo conUbicacion:'argentina'.
	unaPista _ Pista new.
	otraPista _ Pista new.
	unTestigo agregarPista: unaPista.
	unTestigo agregarPista: otraPista .
	
	Assert that: unTestigo cantidadDePistas  isEqualTo: 2.! !

!TestTestigos methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:36:46'!
test04_unTestigoSabeDarUnaPista
	| unTestigo unaPista |
	unTestigo := Testigo new .
	unaPista _ Pista new.
	unTestigo agregarPista: unaPista.
	
	Assert that: unTestigo darPista isEqualTo:unaPista.! !


!classDefinition: #Computadora category: #TPFinal!
Object subclass: #Computadora
	instanceVariableNames: 'listaDeSospechosos futuroDestino pistasRegistradas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!Computadora methodsFor: 'as yet unclassified' stamp: 'jl 12/11/2019 22:15:39'!
cantidadDeSospechosos
	^ listaDeSospechosos size! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 18:32:01'!
emitirOrdenDeArresto
	| culpable |
	culpable _ listaDeSospechosos anyOne.
	
	
	'ordenDeArresto.txt' asFileEntry
	forceWriteStreamDo: [ :ios |
	ios nextPutAll: ' En el dia de la fecha ('.
	ios nextPutAll: Date today asString.
	ios nextPutAll: ') '.
	ios nextPutAll: 'se emite la orden de arresto a '.
	ios nextPutAll: culpable nombre asString.
	ios nextPutAll: ' por haber cometido el delito del robo de un objeto historico de un pais.'.
	ios nextPutAll: ' A continuación se describen sus aspectos físicos; '.
	ios newLine.
	ios nextPutAll: ' Altura: '.
	ios nextPutAll: culpable altura asString.
	ios newLine.
	ios nextPutAll: ' Contextura física: '.
	ios nextPutAll: culpable contexturaFisica asString.
	ios newLine.
	ios nextPutAll: ' Color de ojos: '.
	ios nextPutAll: culpable colorDeOjos asString .
	ios newLine.
	ios nextPutAll: ' Forma de cabello: '.
	ios nextPutAll: culpable formaDeCabello asString.
	ios newLine.
	ios nextPutAll: ' Color de cabello: '.
	ios nextPutAll: culpable colorDeCabello asString.
	ios newLine.
	ios nextPutAll: ' Sexo: '.
	ios nextPutAll: culpable sexo asString.
	ios newLine.
	ios nextPutAll: ' Color de tez: '.
	ios nextPutAll: culpable colorDeTez asString.].
	
	'ordenDeArresto.txt' asFileEntry fileContents. ! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 16:41:28'!
filtrarPistaDeFormaDeCabello: unaPista
	listaDeSospechosos _ listaDeSospechosos select:[:unSospechoso|unSospechoso filtrarPista:unaPista]  
	! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 01:49:42'!
initialize

listaDeSospechosos _ Set new.
pistasRegistradas _ Set new.! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:14:39'!
listaDeSospechososVacia
	^ listaDeSospechosos isEmpty.! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 17:22:14'!
procesarPista: unaPista.
	TiposDeProcesamientosDePista puedeHacerseCargo: self paraProcesar: unaPista.


 		! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 10:00:54'!
procesarPistaDeDestino: unaPistaDeDestino
	futuroDestino _ unaPistaDeDestino datoARevelar ! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:49:38'!
procesarPistaDeRazgo: unaPista 
	listaDeSospechosos _ listaDeSospechosos select:[:unSospechoso|unSospechoso filtrarPista:unaPista]  ! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:05:21'!
procesarPistas: unConjuntoDePistas


 		unConjuntoDePistas do: [: unaPista  | self procesarPista: unaPista ].! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:37:30'!
registrarPista: unaPista
	pistasRegistradas add: unaPista.! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:43:57'!
registrarPistas: unConjuntoDePistas
	pistasRegistradas addAll: unConjuntoDePistas.! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:20:15'!
registrarSospechoso: unSospechoso
	listaDeSospechosos add: unSospechoso.! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/12/2019 00:42:12'!
tieneLaPistaRegistrada: unaPista
	^pistasRegistradas includes: unaPista.! !

!Computadora methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:20:47'!
tieneRegistradoAlSospechoso: unSospechoso
	^listaDeSospechosos includes: unSospechoso! !


!Computadora methodsFor: 'accessing' stamp: 'jl 12/12/2019 02:31:52'!
cantidadDePistasRegistradas
	^ pistasRegistradas size! !

!Computadora methodsFor: 'accessing' stamp: 'jl 12/12/2019 00:01:51'!
futuroDestino
	^futuroDestino 
! !

!Computadora methodsFor: 'accessing' stamp: 'jl 12/13/2019 16:48:51'!
listaDeSospechosos
	^listaDeSospechosos! !

!Computadora methodsFor: 'accessing' stamp: 'jl 12/12/2019 02:57:11'!
puedeEmitirOrdenDeArresto
	^ listaDeSospechosos size = 1! !


!Computadora methodsFor: 'acciones' stamp: 'jl 12/13/2019 16:51:32'!
añadirSospechosoALaLista: unSospechoso 
	listaDeSospechosos add: unSospechoso! !


!classDefinition: #DetectiveClasico category: #TPFinal!
Object subclass: #DetectiveClasico
	instanceVariableNames: 'ubicacion tiempoRestante computadora'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!DetectiveClasico methodsFor: 'initialize' stamp: 'H D 11/22/2019 10:57:32'!
conTiempoRestante: unaCantidadDeHoras 
	tiempoRestante _ unaCantidadDeHoras! !

!DetectiveClasico methodsFor: 'initialize' stamp: 'H D 11/22/2019 10:50:53'!
conUbicacion: unPais
	ubicacion _ unPais.
	! !

!DetectiveClasico methodsFor: 'initialize' stamp: 'H D 11/22/2019 10:58:28'!
conUbicacion: unPais yTiempo: unaCantidadDeHoras 
	self conUbicacion: unPais.
	self conTiempoRestante: unaCantidadDeHoras.! !

!DetectiveClasico methodsFor: 'initialize' stamp: 'H D 12/12/2019 00:41:08'!
initialize
tiempoRestante _ 0*hour.
computadora _ Computadora new.! !


!DetectiveClasico methodsFor: 'accessing' stamp: 'jl 12/12/2019 02:31:28'!
cantidadDePistasRegistradas
	^ computadora cantidadDePistasRegistradas! !

!DetectiveClasico methodsFor: 'accessing' stamp: 'jl 12/13/2019 16:51:07'!
computadora
	^computadora! !

!DetectiveClasico methodsFor: 'accessing' stamp: 'jl 12/13/2019 17:03:45'!
listaDeSospechosos
	^computadora listaDeSospechosos! !

!DetectiveClasico methodsFor: 'accessing' stamp: 'NM 11/21/2019 15:49:08'!
tiempoRestante
	^tiempoRestante! !

!DetectiveClasico methodsFor: 'accessing' stamp: 'NM 11/21/2019 15:21:54'!
ubicacion
	^ubicacion! !


!DetectiveClasico methodsFor: 'as yet unclassified' stamp: 'jl 12/13/2019 16:34:26'!
anotarPista: unaPista
	computadora registrarPista: unaPista.
	computadora procesarPista: unaPista! !

!DetectiveClasico methodsFor: 'as yet unclassified' stamp: 'hd 11/28/2019 16:40:15'!
pierdeElJuego
	Error signal: 'Se acabo el tiempo.'! !

!DetectiveClasico methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:34:57'!
registrarPistaDe: unTestigo 
	self anotarPista:  (unTestigo darPista).! !

!DetectiveClasico methodsFor: 'as yet unclassified' stamp: 'H D 12/12/2019 00:40:28'!
tieneRegistradoEnLaComputadora: unaPista
	^computadora tieneLaPistaRegistrada: unaPista.! !


!DetectiveClasico methodsFor: 'viajes' stamp: 'H D 12/5/2019 16:08:48'!
realizarViajeAPaisLimitrofe: unPais 
	ubicacion _ unPais.
	tiempoRestante  _ tiempoRestante  - self tiempoPorViajarAUnPaisLimitrofe! !

!DetectiveClasico methodsFor: 'viajes' stamp: 'H D 12/5/2019 16:03:34'!
realizarViajeAPaisNoLimitrofe: unPais
	ubicacion _ unPais.
	tiempoRestante _ tiempoRestante - (self tiempoPorViajarAUnPaisNoLimitrofe)
	! !

!DetectiveClasico methodsFor: 'viajes' stamp: 'H D 12/5/2019 16:55:21'!
realizarViajeSinTiempo
	Error signal: 'Te quedaste sin tiempo.'! !

!DetectiveClasico methodsFor: 'viajes' stamp: 'zasdasd 12/12/2019 15:27:47'!
viajarA: unPais
	TiposDeViaje puedeHacerseCargo: self paraViajarA:unPais.
! !


!DetectiveClasico methodsFor: 'testing' stamp: 'H D 12/5/2019 17:49:37'!
estaEnEstePais:unPais
	^ubicacion = unPais! !

!DetectiveClasico methodsFor: 'testing' stamp: 'H D 12/5/2019 17:58:03'!
estaEnUnPaisLimitrofeA: unPais
	^ ubicacion esLimitrofeDe: unPais
	! !

!DetectiveClasico methodsFor: 'testing' stamp: 'H D 12/5/2019 16:53:04'!
tieneTiempoRestante
	^ tiempoRestante > (0 *hour)! !


!DetectiveClasico methodsFor: 'tiempo' stamp: 'hd 11/28/2019 16:19:30'!
tiempoPerdidoAlnterrogarTestigo
	^ 2 * hour! !

!DetectiveClasico methodsFor: 'tiempo' stamp: 'hd 11/28/2019 17:18:47'!
tiempoPerdidoPorVolarAUnPaisNoLimitrofe
	^ 10 * hour! !

!DetectiveClasico methodsFor: 'tiempo' stamp: 'H D 12/5/2019 16:09:33'!
tiempoPorViajarAUnPaisLimitrofe
	^self tiempoPorViajarAUnPaisNoLimitrofe - (3*hour)! !

!DetectiveClasico methodsFor: 'tiempo' stamp: 'H D 12/5/2019 16:03:59'!
tiempoPorViajarAUnPaisNoLimitrofe
	^10*hour! !


!DetectiveClasico methodsFor: 'interrogatorio' stamp: 'jl 12/12/2019 01:58:01'!
interrogarA: unTestigo
	TiposDeInterrogatorios puedeHacerseCargo: self paraInterrogarA: unTestigo
! !

!DetectiveClasico methodsFor: 'interrogatorio' stamp: 'hd 11/28/2019 17:11:03'!
perderTiempoPorInterrogar
	tiempoRestante _ tiempoRestante - self tiempoPerdidoAlnterrogarTestigo.! !

!DetectiveClasico methodsFor: 'interrogatorio' stamp: 'jl 12/12/2019 01:58:21'!
realizarIntegatorioA: unTestigo 
	self perderTiempoPorInterrogar.
	self registrarPistaDe: unTestigo.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DetectiveClasico class' category: #TPFinal!
DetectiveClasico class
	instanceVariableNames: ''!

!DetectiveClasico class methodsFor: 'instance creation' stamp: 'H D 11/22/2019 11:02:10'!
conTiempoRestante: unaCantidadDeHoras
	^self new conTiempoRestante: unaCantidadDeHoras.
	! !

!DetectiveClasico class methodsFor: 'instance creation' stamp: 'NM 11/21/2019 15:21:11'!
conUbicacion: unPais
	^self new conUbicacion: unPais 
	! !


!DetectiveClasico class methodsFor: 'as yet unclassified' stamp: 'NM 11/21/2019 15:48:04'!
conUbicacion: unPais yTiempo: unaCantidadDeHoras
	^self new conUbicacion: unPais  yTiempo: unaCantidadDeHoras 
	! !


!classDefinition: #DetectiveInterpol category: #TPFinal!
DetectiveClasico subclass: #DetectiveInterpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!DetectiveInterpol methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 00:10:28'!
tiempoPorViajarAUnPaisNoLimitrofe
	^8*hour! !


!classDefinition: #DetectivePersuasivo category: #TPFinal!
DetectiveClasico subclass: #DetectivePersuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!DetectivePersuasivo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:43:06'!
anotarPista: unaPista
	computadora registrarPistas: unaPista.! !

!DetectivePersuasivo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:35:32'!
registrarPistaDe: unTestigo 
	self anotarPista:  (unTestigo darPistas).! !

!DetectivePersuasivo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 00:17:46'!
tiempoPerdidoAlnterrogarTestigo
	^ 1* hour! !


!classDefinition: #Pais category: #TPFinal!
Object subclass: #Pais
	instanceVariableNames: 'objetoHistorico objetoEsRobado paisesLimitrofes testigos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!Pais methodsFor: 'accessing' stamp: 'hd 11/28/2019 16:11:49'!
cantidadDeTestigos
	^3.! !

!Pais methodsFor: 'accessing' stamp: 'H D 11/22/2019 12:16:26'!
paisesLimitrofes
	^ paisesLimitrofes! !

!Pais methodsFor: 'accessing' stamp: 'H D 11/22/2019 11:54:03'!
poseeSuObjetoHistorico
	^ objetoHistorico! !

!Pais methodsFor: 'accessing' stamp: 'NM 11/21/2019 17:03:52'!
tieneUnObjetoHistorico
	^true.! !


!Pais methodsFor: 'as yet unclassified' stamp: 'H D 11/22/2019 11:13:45'!
conObjetoHistorico
	objetoHistorico _ true.! !

!Pais methodsFor: 'as yet unclassified' stamp: 'H D 11/22/2019 11:49:34'!
perderObjetohistorico
	objetoHistorico _ false.! !


!Pais methodsFor: 'initialize' stamp: 'hd 11/28/2019 15:47:39'!
agregarTestigo: unTestigo
	testigos add: unTestigo.! !

!Pais methodsFor: 'initialize' stamp: 'hd 11/28/2019 15:47:01'!
conTestigos: unConjuntoDeTestigos
self agregarTestigo: unConjuntoDeTestigos.
	
	! !

!Pais methodsFor: 'initialize' stamp: 'hd 11/28/2019 15:04:24'!
initialize 
	paisesLimitrofes _ Set new.
	testigos _ Set new.
! !

!Pais methodsFor: 'initialize' stamp: 'jl 12/6/2019 15:00:47'!
limitaCon: unPais
	 paisesLimitrofes add: unPais.
! !


!Pais methodsFor: 'testing' stamp: 'H D 12/5/2019 17:58:00'!
esLimitrofeDe: unPais
	^  paisesLimitrofes includes: unPais. "falta agregar condicion de que no este en el mismo pais "! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pais class' category: #TPFinal!
Pais class
	instanceVariableNames: ''!

!Pais class methodsFor: 'as yet unclassified' stamp: 'H D 11/22/2019 11:14:31'!
conObjetoHistorico
	^self new conObjetoHistorico.! !


!Pais class methodsFor: 'instance creation' stamp: 'hd 11/28/2019 14:51:09'!
conTestigos: unConjuntoDeTestigos 
	^self new conTestigos: unConjuntoDeTestigos! !


!classDefinition: #Partida category: #TPFinal!
Object subclass: #Partida
	instanceVariableNames: 'listaDeSospechosos detective tiempoRestante culpable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!Partida methodsFor: 'accessing' stamp: 'jl 12/13/2019 16:13:11'!
culpable
	^culpable! !

!Partida methodsFor: 'accessing' stamp: 'jl 12/13/2019 15:14:17'!
detective
	^detective! !

!Partida methodsFor: 'accessing' stamp: 'jl 12/13/2019 17:19:08'!
listaDeSospechosos
	^(detective computadora) listaDeSospechosos ! !

!Partida methodsFor: 'accessing' stamp: 'jl 12/13/2019 17:49:23'!
tiempoRestante
	^detective tiempoRestante ! !


!Partida methodsFor: 'initialize' stamp: 'jl 12/13/2019 16:50:00'!
añadirSospechosoALaLista: unSospechoso 
	(detective computadora) añadirSospechosoALaLista: unSospechoso ! !

!Partida methodsFor: 'initialize' stamp: 'jl 12/13/2019 15:15:09'!
asignarDetective: unDetective
	detective _ unDetective 
	! !

!Partida methodsFor: 'initialize' stamp: 'jl 12/13/2019 17:00:58'!
conDetective:unDetective
	detective _ unDetective.
	listaDeSospechosos _ (detective listaDeSospechosos)! !

!Partida methodsFor: 'initialize' stamp: 'jl 12/13/2019 15:24:31'!
conTiempoRestante: unaCantidadDeHoras
	tiempoRestante _ unaCantidadDeHoras.
	detective _ detective conTiempoRestante: unaCantidadDeHoras 
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Partida class' category: #TPFinal!
Partida class
	instanceVariableNames: ''!

!Partida class methodsFor: 'instance creation' stamp: 'jl 12/13/2019 16:45:18'!
conDetective: unDetective 
	^self new conDetective: unDetective ! !


!classDefinition: #Pista category: #TPFinal!
Object subclass: #Pista
	instanceVariableNames: 'datoARevelar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!Pista methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 10:08:10'!
compararCon: unSospechoso
	^(self datoARevelar = unSospechoso formaDeCabello )! !

!Pista methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:32:04'!
datoARevelar
	^datoARevelar ! !

!Pista methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:32:48'!
datoARevelar: unDatoARevelar
	datoARevelar _ unDatoARevelar .! !

!Pista methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:20:29'!
esDeDestino
^ false.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pista class' category: #TPFinal!
Pista class
	instanceVariableNames: ''!

!Pista class methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:20:57'!
conDatoARevelar: unDatoARevelar
	^ ((self new) datoARevelar: unDatoARevelar). ! !


!classDefinition: #PistaDeAltura category: #TPFinal!
Pista subclass: #PistaDeAltura
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeAltura methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:42:22'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso altura)! !


!classDefinition: #PistaDeColorDeCabello category: #TPFinal!
Pista subclass: #PistaDeColorDeCabello
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeColorDeCabello methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:45:59'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso colorDeCabello)! !


!classDefinition: #PistaDeColorDeOjos category: #TPFinal!
Pista subclass: #PistaDeColorDeOjos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeColorDeOjos methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 17:04:42'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso colorDeOjos)! !


!classDefinition: #PistaDeColorDeTez category: #TPFinal!
Pista subclass: #PistaDeColorDeTez
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeColorDeTez methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:45:04'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso colorDeTez)! !


!classDefinition: #PistaDeContexturaFisica category: #TPFinal!
Pista subclass: #PistaDeContexturaFisica
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeContexturaFisica methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:45:12'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso contexturaFisica)! !


!classDefinition: #PistaDeDestino category: #TPFinal!
Pista subclass: #PistaDeDestino
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeDestino methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:20:54'!
esDeDestino
^true.! !


!classDefinition: #PistaDeFormaDeCabello category: #TPFinal!
Pista subclass: #PistaDeFormaDeCabello
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeFormaDeCabello methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:45:37'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso formaDeCabello )! !


!classDefinition: #PistaDeSexo category: #TPFinal!
Pista subclass: #PistaDeSexo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!PistaDeSexo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 21:45:43'!
compararCon: unSospechoso 
	^(self datoARevelar = unSospechoso sexo)! !


!classDefinition: #Sospechoso category: #TPFinal!
Object subclass: #Sospechoso
	instanceVariableNames: 'colorDeOjos formaDeCabello colorDeCabello colorDeTez contexturaFisica sexo altura nombre'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:08:34'!
altura: unTipoDeAltura
	
	altura _ unTipoDeAltura .! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:03:50'!
colorDeCabello: unColorDeCabello
	
	colorDeCabello _ unColorDeCabello ! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:00:26'!
colorDeOjos: unColorDeOjos
	
	colorDeOjos _ unColorDeOjos! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:05:14'!
colorDeTez: unColorDeTez
	colorDeTez _ unColorDeTez .! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'jl 12/4/2019 18:45:59'!
conOjos: unColorDeOJos formaCabello: unaFormaDeCabello conColorCabello: unColorDeCabello yColorDeTez: unColorDeTez yContexturaFisica: unaContexturaFisica ySexo:unsexo yAltura: unaAltura
	colorDeOjos _ unColorDeOJos.
	formaDeCabello _ unaFormaDeCabello. 
	colorDeCabello _ unColorDeCabello .
	colorDeTez _ unColorDeTez.
	contexturaFisica _ unaContexturaFisica. 
	sexo _ unsexo.
	altura _ unaAltura! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'jl 12/4/2019 18:38:20'!
contexturaFisica
	^contexturaFisica! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:06:25'!
contexturaFisica: unTipoDeContexturaFisica
	
	contexturaFisica _ unTipoDeContexturaFisica ! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 16:58:30'!
filtrarPista: unaPista
	^unaPista compararCon:self.! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'jl 12/11/2019 23:27:54'!
formaDeCabello: unFormaDeCabello
	formaDeCabello _ unFormaDeCabello .! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 12:07:18'!
sexo: unTipoDeSexo 
	
	sexo _ unTipoDeSexo ! !


!Sospechoso methodsFor: 'accessing' stamp: 'jl 12/4/2019 18:44:28'!
altura
	^ altura! !

!Sospechoso methodsFor: 'accessing' stamp: 'jl 12/4/2019 18:28:57'!
colorDeCabello
	^colorDeCabello! !

!Sospechoso methodsFor: 'accessing' stamp: 'zasdasd 12/12/2019 17:05:27'!
colorDeOjos
	^colorDeOjos ! !

!Sospechoso methodsFor: 'accessing' stamp: 'jl 12/4/2019 18:35:20'!
colorDeTez
	^colorDeTez! !

!Sospechoso methodsFor: 'accessing' stamp: 'jl 12/4/2019 18:25:01'!
formaDeCabello
	^formaDeCabello ! !

!Sospechoso methodsFor: 'accessing' stamp: 'jl 12/13/2019 13:23:57'!
nombre
	^nombre! !

!Sospechoso methodsFor: 'accessing' stamp: 'jl 12/4/2019 18:41:53'!
sexo
	^sexo! !


!Sospechoso methodsFor: 'initialize' stamp: 'jl 12/12/2019 21:44:00'!
conNombre: unNombre
	nombre _ unNombre 
	! !

!Sospechoso methodsFor: 'initialize' stamp: 'jl 12/13/2019 13:23:49'!
nombre: unNombre 
	nombre _ unNombre! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sospechoso class' category: #TPFinal!
Sospechoso class
	instanceVariableNames: ''!

!Sospechoso class methodsFor: 'instance creation' stamp: 'jl 12/4/2019 18:13:36'!
conOjos: unColor 
	^self new conOjos: unColor  ! !


!classDefinition: #Testigo category: #TPFinal!
Object subclass: #Testigo
	instanceVariableNames: 'ubicacion listaDePistas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!Testigo methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:35:55'!
agregarPista: unaPista
	listaDePistas add: unaPista.! !

!Testigo methodsFor: 'as yet unclassified' stamp: 'jl 12/4/2019 18:03:12'!
conUbicacion: unPais 
	ubicacion _ unPais! !

!Testigo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 02:34:48'!
darPista
	^listaDePistas anyOne ! !

!Testigo methodsFor: 'as yet unclassified' stamp: 'jl 12/12/2019 01:57:29'!
darPistas
	^listaDePistas ! !

!Testigo methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:36:16'!
initialize
listaDePistas _ Set new.! !

!Testigo methodsFor: 'as yet unclassified' stamp: 'H D 12/8/2019 09:36:43'!
tieneLaPista: unaPista
	^ listaDePistas includes: unaPista.! !


!Testigo methodsFor: 'accessing' stamp: 'H D 12/12/2019 00:23:17'!
cantidadDePistas
	^ listaDePistas size.! !

!Testigo methodsFor: 'accessing' stamp: 'jl 12/4/2019 18:03:28'!
ubicacion
	^ubicacion! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Testigo class' category: #TPFinal!
Testigo class
	instanceVariableNames: ''!

!Testigo class methodsFor: 'instance creation' stamp: 'jl 12/4/2019 18:02:43'!
conUbicacion: unaUbicacion
	^self new conUbicacion: unaUbicacion ! !


!classDefinition: #TiposDeInterrogatorios category: #TPFinal!
Object subclass: #TiposDeInterrogatorios
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TiposDeInterrogatorios methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:20:03'!
ayudarA: unDetective aInterrogarA: unTestigo
	self subclassResponsibility 	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TiposDeInterrogatorios class' category: #TPFinal!
TiposDeInterrogatorios class
	instanceVariableNames: ''!

!TiposDeInterrogatorios class methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 15:04:34'!
puedeHacerseCargo: unDetective paraInterrogarA: unTestigo 
	^ (self allSubclasses detect: [:tipoDeInterrogatorio | tipoDeInterrogatorio puedeHacerseDe:unDetective paraInterrogarA:unTestigo]) new ayudarA: unDetective aInterrogarA:unTestigo .
	
	! !


!classDefinition: #InterrogatorioExitoso category: #TPFinal!
TiposDeInterrogatorios subclass: #InterrogatorioExitoso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!InterrogatorioExitoso methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:15:06'!
ayudarA: unDetective aInterrogarA: unTestigo
	unDetective realizarIntegatorioA:unTestigo 
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InterrogatorioExitoso class' category: #TPFinal!
InterrogatorioExitoso class
	instanceVariableNames: ''!

!InterrogatorioExitoso class methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:14:06'!
puedeHacerseDe: unDetective paraInterrogarA: unTestigo
	^ unDetective tieneTiempoRestante
	! !


!classDefinition: #InterrogatorioFallido category: #TPFinal!
TiposDeInterrogatorios subclass: #InterrogatorioFallido
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!InterrogatorioFallido methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:22:02'!
ayudarA: unDetective aInterrogarA: unTestigo
	unDetective pierdeElJuego! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InterrogatorioFallido class' category: #TPFinal!
InterrogatorioFallido class
	instanceVariableNames: ''!

!InterrogatorioFallido class methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 15:05:02'!
puedeHacerseDe: unDetective paraInterrogarA: unTestigo
	^ unDetective tieneTiempoRestante not 
	! !


!classDefinition: #TiposDeProcesamientosDePista category: #TPFinal!
Object subclass: #TiposDeProcesamientosDePista
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TiposDeProcesamientosDePista methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 11:55:51'!
ayudarA: unaComputadora aProcesar: unaPista 
	self subclassResponsibility .
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TiposDeProcesamientosDePista class' category: #TPFinal!
TiposDeProcesamientosDePista class
	instanceVariableNames: ''!

!TiposDeProcesamientosDePista class methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:23:09'!
puedeHacerseCargo: unaComputadora paraProcesar: unaPista 
	^ (self allSubclasses detect: [:tipoDeProcesamientoDePista | tipoDeProcesamientoDePista puedeHacerseCargoDe:unaPista]) new ayudarA: unaComputadora aProcesar:unaPista .
	! !


!classDefinition: #ProcesamientoDePistaDeDestino category: #TPFinal!
TiposDeProcesamientosDePista subclass: #ProcesamientoDePistaDeDestino
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!ProcesamientoDePistaDeDestino methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:00:12'!
ayudarA: unaComputadora aProcesar: unaPista 
	unaComputadora procesarPistaDeDestino: unaPista.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ProcesamientoDePistaDeDestino class' category: #TPFinal!
ProcesamientoDePistaDeDestino class
	instanceVariableNames: ''!

!ProcesamientoDePistaDeDestino class methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 12:22:19'!
puedeHacerseCargoDe: unaPista.
	^ unaPista esDeDestino.! !


!classDefinition: #ProcesamientoDePistaDeRazgo category: #TPFinal!
TiposDeProcesamientosDePista subclass: #ProcesamientoDePistaDeRazgo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!ProcesamientoDePistaDeRazgo methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:03:43'!
ayudarA: unaComputadora aProcesar: unaPistaDeRazgo
unaComputadora procesarPistaDeRazgo: unaPistaDeRazgo 
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ProcesamientoDePistaDeRazgo class' category: #TPFinal!
ProcesamientoDePistaDeRazgo class
	instanceVariableNames: ''!

!ProcesamientoDePistaDeRazgo class methodsFor: 'as yet unclassified' stamp: 'H D 12/13/2019 13:02:55'!
puedeHacerseCargoDe: unaPista
	^ (unaPista esDeDestino ) not.! !


!classDefinition: #TiposDeViaje category: #TPFinal!
Object subclass: #TiposDeViaje
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!TiposDeViaje methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:18:37'!
ayudarA: unDetective aViajarA: unPais 
	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TiposDeViaje class' category: #TPFinal!
TiposDeViaje class
	instanceVariableNames: ''!

!TiposDeViaje class methodsFor: 'as yet unclassified' stamp: 'zasdasd 12/12/2019 15:09:12'!
puedeHacerseCargo: unDetective paraViajarA: unPais 
	|handler|
	handler := (self allSubclasses  detect: [:tipoDeViaje | tipoDeViaje puedeHacerseDe:unDetective paraViajarA:unPais]) new.
	handler ayudarA: unDetective aViajarA:unPais.! !


!classDefinition: #ViajeAPaisLimitrofe category: #TPFinal!
TiposDeViaje subclass: #ViajeAPaisLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!ViajeAPaisLimitrofe methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:19:31'!
ayudarA: unDetective aViajarA: unPais 
	unDetective realizarViajeAPaisLimitrofe: unPais
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ViajeAPaisLimitrofe class' category: #TPFinal!
ViajeAPaisLimitrofe class
	instanceVariableNames: ''!

!ViajeAPaisLimitrofe class methodsFor: 'as yet unclassified' stamp: 'jl 12/6/2019 15:05:37'!
puedeHacerseDe: unDetective paraViajarA: unPais.
	^ (unDetective tieneTiempoRestante) and:
	  (unDetective estaEnUnPaisLimitrofeA: unPais)
 ! !


!classDefinition: #ViajeAPaisNoLimitrofe category: #TPFinal!
TiposDeViaje subclass: #ViajeAPaisNoLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!ViajeAPaisNoLimitrofe methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 16:01:41'!
ayudarA: unDetective aViajarA: unPais
	unDetective realizarViajeAPaisNoLimitrofe:unPais 
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ViajeAPaisNoLimitrofe class' category: #TPFinal!
ViajeAPaisNoLimitrofe class
	instanceVariableNames: ''!

!ViajeAPaisNoLimitrofe class methodsFor: 'as yet unclassified' stamp: 'jl 12/6/2019 15:10:05'!
puedeHacerseDe: unDetective paraViajarA: unPais.
	^ (unDetective tieneTiempoRestante) and:
	((unDetective estaEnUnPaisLimitrofeA: unPais) not) 
	and: ((unDetective estaEnEstePais: unPais) not)! !


!classDefinition: #ViajeAlMismoPais category: #TPFinal!
TiposDeViaje subclass: #ViajeAlMismoPais
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!ViajeAlMismoPais methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:42:28'!
ayudarA: unDetective aViajarA: unPais
	Error signal: 'El destino no puede ser igual al origen.'.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ViajeAlMismoPais class' category: #TPFinal!
ViajeAlMismoPais class
	instanceVariableNames: ''!

!ViajeAlMismoPais class methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 17:49:22'!
puedeHacerseDe: unDetective paraViajarA: unPais.
	^ (unDetective estaEnEstePais: unPais)! !


!classDefinition: #ViajeSinTiempo category: #TPFinal!
TiposDeViaje subclass: #ViajeSinTiempo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal'!

!ViajeSinTiempo methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 16:45:07'!
ayudarA: unDetective aViajarA: unPais
	unDetective realizarViajeSinTiempo! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ViajeSinTiempo class' category: #TPFinal!
ViajeSinTiempo class
	instanceVariableNames: ''!

!ViajeSinTiempo class methodsFor: 'as yet unclassified' stamp: 'H D 12/5/2019 16:52:16'!
puedeHacerseDe: unDetective paraViajarA: unPais.
	^ (unDetective tieneTiempoRestante) not.! !
