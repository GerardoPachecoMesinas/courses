$(function() {  // funcion ready
    $("#parrafo").text("Holi");  // trae el elemento y le agregas texto
    $("holaMundo").text("Hola mundo");

//////////////////// getters and setters /////////////////////////////////////
    var x = $(".saludo").html() // extraes el contenido html del elemento
    console.log(x); // Hola desde Codigo Facilito

    $("h1").attr("class", "hola"); // modifica la clase del elemnto
    $("h1").attr("id", "hola"); // si no tiene clase o id para modificar lo añade

/////////////////////// css, hasClass, addClass y removeClass /////////////////////////////////////
    $("h1").css({"background-color":"red","text-align":"center"});  //trae el elemento y le modifica el estilo
    
    $("#parrafo").addClass("clss-p"); // añade una clase al elemento 
    console.log($("#parrafo").hasClass("clss-p")); //devuelve un booleano si existe o no la clase
    $("#parrafo").removeClass("clss-p"); // remueve la clase indicada del elemento

/////////////////////// show y hide  /////////////////////////////////////
   $(".hide2").click(function() {
    $("#parrafo2").hide(1000); // slideUp, fadeOut
   });
   $(".show2").click(function() { 
    $("#parrafo2").show(1000);  // slideDown, fadeIn
   });

/////////////////////// iterar elementos con each y for  /////////////////////////////////////
    let array = [1,2,3,4,5,6,7,8,9,10];

    console.log(`la longitud del array es ${array.length}`);
    $.each(array, function(i, value) {
        console.log(i+":"+value);
    });

    for (let i = 0; i < array.length; i++) {
        console.log(array[i]);
    }

/////////////////////// iterar elementos con for of  /////////////////////////////////////
    let colors = [{     //se crea un array con un objeto colors que a su vez tiene
        "colors": [{    // tres objetos color por lo que al iterar solo hara una iteracion
            "colorName": "red",  // y con el index puedes acceder a cada uno de los objetos
            "hexValue": "#f00"
        },
        {
            "colorName": "green",
            "hexValue": "#0f0"
        },
        {
            "colorName": "blue",
            "hexValue": "00f"
        }]
    }];
                                                //solo color imprime todo el objeto
    for (const color of colors) {        //color.colors imprime todos los elementos
        console.log(color.colors[1].colorName); //añadir .colorName imprime solo ese valor
    }                                       //color.colors[i] imprime el elemento del index


    let colores = [{        //se crea un array con tres objetos color directamente
        "colorName": "red",
        "hexValue": "#f00"
    },
    {
        "colorName": "green",
        "hexValue": "#0f0"
    },
    {
        "colorName": "blue",
        "hexValue": "#00f"
    }] ;
                                    //solo color imprime todos los objetos del array
    for (const color of colores) {  //color.colorName imprime ese valor de cada objeto
        console.log(colores[1]); //color.color[i] imprime el elemento del index
    }                                       

/////////////////////// método attr /////////////////////////////////////
    $("img").attr("width",300);
    $("img").dblclick(function() {
        $("img").attr("src", "https://staticg.sportskeeda.com/editor/2022/01/9441c-16419200856280-1920.jpg");
    });
    $("img").removeAttr("");

/////////////////////// método attr /////////////////////////////////////
    $(".btn").click(function() {
        console.log($("img").width()); //puede modificar u obtener el valor width
        console.log($("img").height()); //puede modificar u obtener el valor height
    })

/////////////////////// efectos  /////////////////////////////////////

    $(".hide3").click(function() {
        $("#parrafo3").slideUp(1000); 
    });
    $(".show3").click(function() { 
        $("#parrafo3").slideDown(1000);
    });

    $(".hide4").click(function() {
        $("#parrafo4").fadeOut(1000); 
    });
    $(".show4").click(function() { 
        $("#parrafo4").fadeIn(1000); 
    });

/////////////////////// eventos del teclado  /////////////////////////////////////
    $("#inputText").keydown(function() {
        $("#inputText").css({"background-color":"green"});
    })
    $("#inputText").keyup(function() {
        $("#inputText").css({"background-color":"white"});
    })
    let i = 0;
    $("#inputText").keypress(function() {
        $("span").text(i += 1);
    })
    
/////////////////////// eventos del mouse /////////////////////////////////////////
    $("#parrafo5").mouseover(function() {     //mousedown es el evento con el click del mouse
        $("#parrafo5").css({"background-color":"red"});
    });
    $("#parrafo5").mouseleave(function() {      //mouseup es el evento con el click del mouse
        $("#parrafo5").css({"background-color":"white"});
    });

/////////////////////// metodo data ///////////////////////////////////////////////
    $("#parrafo6").data("info", {bg_color:"green",f_color:"pink"});  // declaras los valores como objetos dentro de un elemento html
    var data6 = $("#parrafo6").data("info");    // introduces la informacion dentro de una variable.
    
    $("#parrafo6").mousedown(function() {
        $(this).css("background-color", data6.bg_color); //ahora puedes acceder a las valores guardados en la
    });                                         //variable escribiendo:   variable.clave = valor guardado
    $("#parrafo6").mouseup(function() {
        $(this).css("color", data6.f_color);
    });

    $("#parrafo6").data("nombreDelAtributo","aqui puedes poner el valor del atributo");
    console.log($("#parrafo6").data("nombreDelAtributo")); // esta es la forma simple de guardar un solo atributo en data

    $("#colors li").each(function(index,value) { // "colors li" hace referencia a lada elemento de la lista colors
        $("#colors").data("nombre",value);     // aqui estamos guardando en data el valor de cada linea de la lista
        console.log($("#colors").data("nombre")); // aqui estamos imprimiendo el valor de data en la consola
        $("#colors").data("nombre",index);     // aqui estamos guardando en data el valor del index 
        console.log($("#colors").data("nombre")); // aqui estamos imprimiendo el valor de data en la consola
    })

/////////////////////// animaciones con request animation frame///////////////////////////////////////////////
    $("#left").click(function() {
        $(".cubo").animate({"left":"-=50px"});       //animate puede recibir dos parametros la animacion
        console.log("left");                         //y el tiempo que tomará realizarla
    })                                               
    $("#right").click(function() {                   //pueden ser parametros left, right, top y bottom para direccion
        $(".cubo").animate({"left":"+=50px"});       //fast low o los milisegundos asignados para el tiempo
        console.log("right");
    })                                               //para poder añadir dos caracteristicas en el primer parametro
    $("#up").click(function() {                      //se escribe con la sintaxis de un objeto y pueden ser mas de un
        $(".cubo").animate({"top":"-=50px"});        //objeto dentro del mismo parametro
        console.log("up");
    })
    $("#down").click(function() {
        $(".cubo").animate({"top":"+=50px"});
        console.log("down");
    })
///////// animaciones con el tecladp
    $("body").keyup(function(event) {
        if (event.keyCode == 37) {
            $(".cubo2").animate({"left":"-=50px"},"slow");
            console.log("left");
        }else if (event.keyCode == 39) {
            $(".cubo2").animate({"left":"+=50px","top":"+=50px"},"fast"); //en este caso incluimos dos objetos en el
            console.log("right");                   //primer parametro lo que causa el efecto de movimiento diagonal
        }else if (event.keyCode == 38) {
            $(".cubo2").animate({"top":"-=50px"},50);
            console.log("up");
        }else if (event.keyCode == 40) {
            $(".cubo2").animate({"top":"+=50px"},3000);
            console.log("down");
        }
    })
    $(".cubo2").click(function() {
        $(this).animate({                         //en el caso de estas animaciones con plugin, el primer parametro
            height: ["+=200px", "easeOutBounce"], //de animate siguen siendo objeto, pero a su vez ahora contienen
            width: ["+=200px", "easeInOutBack"]   //un array para poderdefinir dos parametros mas dentro de cada objeto
        },3000);                                  //que en este caso es el cambio de tamaño y la animacion predefinida
    })

/////////////////////// eventos de scroll //////////////////////////////////////////////
    $(".scrollUp").click(function() {
        $("html, body").animate({scrollTop:0},3000);
    });

    $("html, body").scroll(function() {
        if ($(this).scrollTop() > 10) {
            console.log("hola scroll");
        }else{
            console.log("no scroll");
        }
    });

/////////////////////// crear, copiar, mover, y remover elementos //////////////////////////////////////////////
    $("#append").click(function() {
        $("#ol1-padre").append("<li>nuevo elemento</li>"); //agrega eelementos al final del existente
    });
    $("#prepend").click(function() {
        $("#ol1-padre").prepend("<li>nuevo elemento</li>"); //agrega elementos antes del existente
    });
    $("#sortFirst").click(function() {
        $("#ol1-padre").append($("#ol1-padre li:first")); //aqui estamos quitando el primer elemento(entre parentesis)
    });                                     // y lo estamos añadiendo al final de la lista, lo que se traduce como moverlo
    $("#sortLast").click(function() {
        $("#ol1-padre").prepend($("#ol1-padre li:last"));//aqui estamos quitando el ultimo elemento(entre parentesis)
    });                                // y lo estamos añadiendo al inicio de la lista, lo que se traduce como moverlo
    $("#remove").click(function() {
        $("#ol1-padre li:last").remove(); // remueve el elemento seleccionado entre parentesis
    });
    $("#copy").click(function() {
        let clone = $("#ol1-padre li:first").text(); //aqui estamos copiando y guardando el contenido de un selector en una variable 
        $("#ol2").append(`<li>${clone}</li>`); // para despues insertar ese valor dentro de cualquier elemento html
    })

/////////////////////// padres, hijos y hermanos de los elementos //////////////////////////////////////////////
    let padre = $("#hijo").parent();   
    console.log(padre);
    let hijos = $("#ol1-padre").children().text();
    console.log(hijos);
    let hermanos = $("#hijo").siblings().text();
    console.log(hermanos);

/////////////////////// elementos virtuales //////////////////////////////////////////////
    $("#vListCreator").click(function() {
        let lista = $("<ol>", {id : "vList"});
        $("#virtualElements").append(lista);
    });
    $("#vElementCreator").click(function() {
        let elemento = $("<li>", {text: "elemento virtual", class: "vElement"});
        $("#vList").append(elemento);
        
        $(".vElement").click(function() {
            alert("este es un elemento virtual");
        });
    });

/////////////////////// JSON.parse //////////////////////////////////////////////
    let string = '{"name": "gerardo", "lastName": "pacheco", "age": 34}';
    let obj = JSON.parse(string);
    console.log(obj.name, obj.lastName, obj.age);

///////////////////////  //////////////////////////////////////////////










});
