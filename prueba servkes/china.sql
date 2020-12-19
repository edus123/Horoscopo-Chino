create database china;

use china;






create table HOROSCOPO(
ID_HOROSCOPO integer,
NOMBRE VARCHAR(14),
LINK varchar(30),
DESCRIPCION text(5700),
PRIMARY KEY (ID_HOROSCOPO)
);

create table USUARIOS(
NOMBRE VARCHAR(30),
NOMBRE_USUARIO VARCHAR(30),
CONTRASEÑA VARCHAR(30),
FECHA_NACIMIENTO integer,
ID_HOROSCOPO INTEGER,
ID_USUARIO INTEGER,
PRIMARY KEY (ID_USUARIO),
constraint FK_HOROSCOPO foreign key (ID_HOROSCOPO) references HOROSCOPO(ID_HOROSCOPO)
);


INSERT INTO horoscopo(ID_HOROSCOPO, NOMBRE, LINK, DESCRIPCION)
values(1,'RATA','assets/img/xxxxxrata.png','<h1>La rata</h1> (Chino:鼠, shǔ) en la astrología china, era bienvenida en tiempos antiguos como un protector y traedor de prosperidad material. Es el primero de los animales del ciclo de 12 años que aparece en el zodíaco chino relacionado al calendario chino. La Rata es asociada con la inteligencia, la astucia, la agresión, la riqueza, el carisma y el orden, pero también con la muerte, la guerra, lo oculto, la pestilencia y las atrocidades. Este roedor todavía es considerado como un animal respetable en la India e incluso en China. En las culturas occidentales, en cambio, llamar así a una persona significa de forma metafórica y negativa "inmundo", es decir despreciable y no grato.*

De acuerdo a las creencias del horóscopo chino, el nativo de la Rata se lleva bien con otros signos en quienes encuentra gente fuerte, de confianza y capaces de apreciar la devoción que les puede ofrecer. También los poderosos nativos del año del Dragón, son compatibles con la Rata, quien además hallará inteligencia y atracción por la Rata, y puede establecer con ella alianzas favorables. Como el poder y el brillo le fascinan, la Rata caerá siempre presa del irresistible encanto del Mono. Tiene afinidad con la destreza con que éste hace las cosas y el Mono, a su vez, se regocijará al encontrar en la Rata su propia longitud de onda, la astucia.*

El horóscopo chino dice, en cambio, que la rata tendrá muchos conflictos con la gente nacida bajo el signo del Caballo, demasiado independiente para la modalidad de la Rata. Se dice que también podría ser muy inestable la relación con una Cabra.'),
(2,'BUEY','assets/img/xxxxxbuey.png','El signo del buey ( 牛 niú ), dentro de la astrología china, representa la prosperidad, alcanzada a través de la fortaleza y el trabajo.*
 
 Refleja las características del animal que representa "el Buey"; paciente, incansable en el trabajo, capaz de llevar sobre sus espaldas grandes responsabilidades sin levantar una queja. Su organización y determinación en metas claras y precisas, hacen de él una fuerza imparable que se dirige con obstinación hacia sus objetivos, sorteando complicaciones y manteniendo el equilibrio interior fiel a sus metas ambiciosas.*

El Buey o Búfalo es un líder innato, necesita un ámbito de trabajo en armonía y tranquilidad para desarrollar su verdadero potencial; posee una mente lógica y sistemática, de poco hablar, pero sumamente inteligente, y cuando se le pregunta suele ser claro y elocuente. Bastante individualista y solitario con fuertes principios morales y espirituales.*

Su practicidad e independencia le hace ver aburrido, carente de imaginación creativa y fantasía; lo que ve es lo que es. No le gustan las discusiones y si alguna de sus actitudes o palabras pueden ocasionarlas, cederá para evitarlas; los ambientes tensos le desestabilizan, bregara por encontrar la armonía, la seguridad y tranquilidad que necesita para poder trabajar.*

En lo amoroso de acuerdo a la astrología china, el signo del Gallo será una espléndida pareja para el del Buey. Ambos son eficaces y dedicados. Igualmente hay buena relación con la Rata, y la Serpiente, ya que ambas se interesarán profundamente por el valioso Buey.*

No se sentirá muy cómodo con la Cabra, quienes a su vez no se sentirán bien ante su excesivo formalismo. Tampoco se llevará bien con el Dragón el cual su furia chocará con su tozudez y el Tigre cuya arrogancia choca con el comportamiento del bovino.'),

(3,'TIGRE','assets/img/xxxxtigre.png','El signo del tigre en la astrología china simboliza el poder, pintoresco e impredecible. Los tigres son el tercer animal del Horóscopo Chino y son personas que necesitan de la aventura, disfrutan plenamente de la vida y la valentía, a veces lo lleva a extremos peligrosos. Son personas de acción, siempre están detrás de una meta, intervienen en acontecimientos sociales, políticos o cualquier cosa donde puedan liderar el grupo, buscan resolver las cosas con practicidad y rapidez. Ejercen un magnetismo singular sobre los demás, difícilmente encuentren resistencia, siempre son el centro de atención y hacen cualquier cosa para no pasar desapercibido. Presuntuosos y muy pendientes de su imagen, pueden emplear horas en arreglarse.*

En el dominio sentimental, el Tigre indómito y libertino multiplica las conquistas durante su vida, hasta que finalmente encuentra un amante capaz de satisfacer su insaciable apetito vital. El Tigre guiará y amará a su pareja siempre y cuando continúen compartiendo el mismo grado de intensidad. Si la pareja estuviera en peligro, el Tigre sería el primero en liberarse de la relación. Sin embargo, él siempre se retirará con la gracia y la distinción que lo caracterizan tan bien.*

La tenacidad, el coraje y las cualidades de liderazgo del Tigre son activos innegables para la empresa que tiene la oportunidad de tenerlo entre su personal. Para aprovechar al máximo sus talentos, es mejor dejarle la mano libre y no someterlo a una jerarquía estricta de la que no acepte las limitaciones. En los negocios, el Tigre puede decidir ser un competidor formidable, siempre que logre dominar su instinto siendo menos egocéntrico y más paciente. Un excelente negociador, el Tigre es un buen orador y generalmente maneja varios idiomas con facilidad.*

Obtendrá el éxito porque está acostumbrado a ganar siempre, nunca se da por vencido y pondrá todos sus recursos, empeño, obstinación y energía en lograr sus objetivos. Competitivo, con gran magnetismo personal y el talento necesario llegara a situarse en el puesto del jefe; debe cuidar su autoritarismo y aprender a escuchar las críticas, consejos válidos y distintas opiniones.*

Si no está satisfecho o si se siente frustrado por una experiencia profesional para la cual él mismo se ha invertido, el Tigre puede decidir abandonar la realidad y aventurarse en iniciativas arriesgadas. Puede contar con sus amigos para que sepa que es imposible que alguien, incluso él, gane todas las veces y que no pasará mucho tiempo hasta que encuentre todo su espléndido de nuevo.*

Finalmente, no olvidemos que el Tigre, majestuoso y acróbata, siempre se las arregla para ponerse de pie y aprovechar las situaciones más desesperadas.'),
(4,'CONEJO','assets/img/xxxconejo.png','El signo del conejo o liebre (como es conocido en la mitología china), es según la astrología china, emblema de la longevidad. En este caso el Conejo simboliza la gracia, los buenos modales, el consejo sano, la bondad y la sensibilidad. Es similar al gato en el antiguo Egipto.*

El Conejo ama sobre todo la estabilidad, la comodidad, los estudios, los libros, el arte y la vida social. Si le da la espalda a la vulgaridad y el conflicto, el Conejo no duda en unirse a un argumento si cree que se han cruzado los límites de su tolerancia. Por tu propio bien, cuídate no interrumpir a un Conejo en el momento equivocado, o acercarte demasiado a su espacio personal. Porque si parece inofensivo en apariencia, un felino potencialmente feroz duerme adentro de él. No olvidemos que en Vietnam y el sudeste de Asia, el signo chino del Conejo es reemplazado por un Gato del cual hereda los mismos atributos.*

En los negocios, el Conejo es un buen estratega que puede sacar ventaja de cualquier tipo de situación delicada gracias a su capacidad analítica, su paciencia y su estilo incomparable, cualidades que las personas que detienen su juicio sobre las apariencias y sobre los artificios del dinero no pueden detectar. Por lo tanto, el Conejo nunca puede ser maltratado por demasiado tiempo por aquellos que tienen la audacia de confundir su amabilidad con la ingenuidad y que piensan, erróneamente, que pueden disfrutar de sus servicios a bajo costo.*

En lo amoroso. El Conejo es voluntariamente romántico, eso no significa que sacrifique su tranquilidad en el altar de un gran amor apasionado. Nunca completamente cómodo con el mundo de las emociones, el Conejo busca la seguridad de su hogar y un refugio seguro. Un nido cómodo, buena carne y un espacio privado, es casi todo lo que uno necesita para satisfacer y mantener a un Conejo a su lado.*

La compatibilidad amorosa del Conejo hace un triángulo en el horóscopo chino compuesto por el Conejo, la Cabra y el Cerdo, forman parte del cuarto triángulo de compatibilidad de la astrología china. De hecho, el Conejo, cuarto animal-signo del zodíaco en el calendario chino, se lleva naturalmente con la Cabra y el Cerdo. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Perro es el amigo secreto del Conejo. El signo del zodiaco chino del Conejo es incompatible con el Gallo.'),
(5,'DRAGON','assets/img/xxxdragon.png','El signo del Dragón (龍) es la única criatura mítica en el zodiaco chino. En China, la figura del dragón se asocia con la fuerza, con lasalud, con la armonía y con la buena suerte; se colocan encima de las puertas o encima de los techos para desterrar a los demonios y a los espíritus malignos. Dentro de la cultura china, más bebés nacen en el año del signo del Dragón que en cualquier otro. En las culturas milenarias orientales, se le considera, al igual que la serpiente, un animal de buena suerte. En la antigua China, se le consideraba el guardián de los tesoros y de la sabiduría. También se representa como un símbolo de las artes marciales, actualmente muy conocido y difundido por casi todo el mundo en lo relativo a la defensa personal. Muchos senseis o artistas marciales se han inspirado en adoptar su simbología, principalmente en el mundo occidental.*

El signo del Dragón es el quinto del horóscopo chino. A algunas de las personas nacidas bajo este signo se les consideran nobles, carismáticas, poderosas, sabias y creativas, incluso muy sociables con todos y tolerantes, y comprensivos hacia los sentimientos con los demás.*

El Dragón tiene una conversación rica, un fuerte gusto por la moda y un amor incondicional por su familia, aunque también sabe cómo lidiar con la soledad cuando se enfrenta a ella. Un escrupuloso observador de su entorno, profundamente individualista, el nativo del signo chino del Dragón tiene una atracción visceral por la estética, sin dudar en invertir en una colección de arte tan pronto como sus finanzas lo permitan.*

Dotado de una innegable honestidad, los juicios del Dragón son siempre directos y explícitos, porque él no es de los que toman precauciones, la diplomacia no siendo su especialidad. Sin embargo, si este aspecto de la personalidad del Dragón a menudo puede garantizarle éxito con su audiencia, esta confianza infalible puede volverse contra él cuando este rasgo particular de su personaje es sobreexplotado, abusado o mal utilizado y puede transformarse a los ojos de todos en un personaje furioso y autoritario, incapaz de cuestionarse a sí mismo y de ver realidad por lo que es.*

Profundamente magnético y carismático, al Dragón le encanta seducir y prospera al ser visto, aplaudido y admirado. En público, uno puede notar fácilmente a un Dragón por sus trajes excéntricos, o por un accesorio inusual que muestra con orgullo. En general, es mejor dejar que el Dragón haga lo que desee que competir con él, porque no permitirá que nadie se robe el espectáculo, te arriesgarías a sufrir las quemaduras de sus llamas furiosas, a menos que, magnánimamente, decida lo contrario.*

Obstinado pero perseverante, el prestigioso nativo del Año del Dragón tiende a aferrarse duraderamente a ideas fijas. Afortunadamente para él, si un proyecto o una situación no resultan a su favor, el Dragón siempre tiene en él la capacidad instantánea de borrar todo en su mente. Sin remordimientos, luego reanuda el curso de su existencia, adornado con sus nuevas ambiciones brillantes. Si tienes la oportunidad de conocer a un Dragón en uno de sus mejores días, gracioso y espléndido, como el fénix que se levanta de las cenizas, te permitirá disfrutar de su energía deslumbrante y cálida benevolencia.*

Triángulo de compatibilidad del horóscopo chino del Dragón: El Dragón, la Rata y el Mono son parte del primer triángulo de compatibilidad de la astrología china. De hecho, el Dragón, quinto animal-signo del zodíaco en el calendario chino, se lleva naturalmente con la Rata y el Mono. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Gallo es el amigo secreto del Dragón. El signo del zodiaco chino del Dragón es incompatible con el Perro.'),
(6,'SERPIENTE','assets/img/serpiente.png','El signo de la serpiente dentro de la astrología china, según las creencias culturales ancestrales es considerado como un animal sagrado, de aspecto negativo y para el género femenino es bueno, también relacionado con la sabiduría. En China también la consideran una entidad protectora; un ejemplo de ello lo encontramos en la Gran Muralla China construida sobre un terreno montañoso y ubicada en el centro de color amarillo. En la India es simbolizado el dios Shivá, en algunas aldeas que han conservado sus creencias todavía es venerada. En Mesoamérica también eran veneradas por gran parte de las culturas indígenas que allí florecieron. El ejemplo más famoso es el del dios Quetzalcoatl, la Serpiente Emplumada, Kukulcán para los Mayas. Además en algunos países asiáticos del Lejano Oriente, al igual que el Dragón, y otros animales como el mono, el tigre, la grulla... también es utilizada como símbolo en algunas artes marciales. Pues en ella se han inspirado los diferentes métodos de defensa personal en la China milenaria.*

La Serpiente es bastante introvertida e inclinada a la filosofía y las actividades intelectuales. A menudo es una observadora discreta, con una gran capacidad de deducción. Muy reservada, la Serpiente ciertamente no comparte su conocimiento con el primero en llegar. Pero si alguna vez confía en alguien, nunca le perdonará a la persona la menor traición. Cuando se siente maltratada, la Serpiente se transforma en una criatura vengativa y tenaz, capaz de esperar pacientemente el momento oportuno para superar su desventura y finalmente recuperar la ventaja. Baste decir que nadie tiene el más mínimo interés en convertirse en un enemigo de la Serpiente, porque está perfectamente armada para sacar ventaja de la situación más compleja.  En un entorno caótico, son el ojo de la tormenta. Las Serpientes pueden mantenerse firmes y pensar con calma en soluciones.*

Con su memoria infalible y animada, la Serpiente enigmática tiende a olvidar nada de lo que ha experimentado en el pasado. Siempre en guardia, usa su gran poder intuitivo para anticiparse a los eventos en su beneficio. Parte de ello se expresa en que las Serpientes son humorísticas y sofisticadas, no les gusta conversar o pensar en pequeños problemas cotidianos. Siempre están haciendo nuevos planes y los siguen sin depender de los comentarios de los demás. Por lo general, son correctos, pero esto también proviene de la desconfianza de los demás. No puedes juzgar a una Serpiente por su cubierta. Su conversación lenta y perezosa oculta su pensamiento acelerado. Detrás de su calma, están alertas y observadores.*

El espíritu brillante, misterioso y elegante de la Serpiente fácilmente le abre perspectivas de carrera en los negocios, la política y las relaciones públicas. La Serpiente es astuta, le gusta hablar con precisión y precisión y siempre presta atención a lo que dice. También es conocida por su sentido del humor y sus agudos pinchos. Sin embargo, en situaciones en las que se siente amenazada, su mente puede oscurecerse de repente para dejar espacio para un tono mucho más duro, tanto sarcástico como agresivo. Una persona nacida durante un año de la Serpiente es un ser generoso. Usualmente posesiva y celosa en el amor, ella espera mucho de su pareja, mientras que se toma todo su tiempo para perdonar a cambio. Su profunda ira, expresada principalmente por un silencio oscuro y hostil, puede volverse perjudicial con el paso del tiempo. Sus celos, probablemente su defecto más fuerte, pueden tener efectos nocivos en su pareja, además pueden ser un freno para sus ambiciones profesionales, porque luego puede quedarse con la envidia de los logros de los demás, en lugar de tejer pacientemente los hilos de su propio éxito.*

Si bien este no suele ser el caso durante su juventud, la Serpiente tiende a volverse tacaña con la edad, pero sin embargo más serena y sabia. Por lo tanto, se las arregla para no repetir los mismos errores, a excepción de su vida emocional.*

Triángulo de compatibilidad del horóscopo chino de la Serpiente: Serpiente, el Búfalo y el Gallo, son parte del segundo triángulo de compatibilidad de la astrología china. De hecho, la Serpiente, décimo animal-signo del zodíaco en el calendario chino, se lleva naturalmente con el Búfalo y el Gallo. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Mono es el amigo secreto de la Serpiente. El signo del zodiaco chino de la Serpiente es incompatible con el Cerdo.'),
(7,'CABALLO','assets/img/xxxcaballo.png','El signo del caballo en la astrología china y universalmente representa como el triunfo y la victoria, similar al perro también la fidelidad y la ternura. En el zodiaco occidental también se ha inspirado en este mamífero como el signo de Sagitario, según la mitología griega.*

De acuerdo a la astrología china, el Tigre, el Perro y la Cabra serán sus mejores compañeros de camino en todos los niveles. También pueden compartir maravillosos momentos con el Mono, la Serpiente, el Conejo, el Cerdo, el Gallo u otro Caballo.*

Incluso si el nativo del signo chino del Caballo es muy leal en amistad, su constante necesidad de vivir nuevas experiencias y aventuras en tierras inexploradas es una fuente de incomodidad para sus compañeros más sedentarios. En general, es un deportista consumado y un aficionado de las prácticas deportivas al aire libre.*

Siempre apasionado y sorprendente en el amor, el Caballo no encuentra nada más atractivo que un viaje a lo desconocido. Si tratas de restringir a un Caballo privándolo de su libertad, puede volverse intolerante y agresivo, rumiando constantemente su insatisfacción, como una pequeña historia diaria que tendrás que sufrir los inconvenientes.*

El Caballo es muy rápido y eficiente en su trabajo. Sin embargo, la calidad de su producción a veces puede adolecer de una falta de preparación e investigación aguas arriba, especialmente porque no le gusta pedir consejo, ya que cree que es totalmente autosuficiente. A pesar de la calidad a veces perfectible de sus logros, el Caballo siempre encuentra una audiencia para aplaudirlo cálidamente y felicitarlo con devoción, tanto su persuasión es efectiva.*

En el amor, la preocupación del Caballo por su independencia, demostrada por su capacidad de hacer las maletas de la noche a la mañana, no significa que él aprecie la soledad. Preferiría estar en el origen de una posible separación en lugar de ser abandonado en contra de su voluntad. Un buen amante, siempre sensual y encantador, el Caballo sin embrago debe aprender la moderación y la paciencia si desea preservar la paz y la serenidad dentro de su hogar.*

Mucho más que el dinero, son las emociones fuertes que el Caballo busca vivir con prioridad para sentirse realizado en su vida. A pesar de su autosuficiencia y egoísmo latente, el Caballo puede ser sorprendentemente generoso por alguien más débil que él. De hecho, su naturaleza noble y su sed para exceder sus límites le impiden caer en la mezquina y celosa comparación de su vecino. Por el contrario, debe protegerse de la tentación de retirarse del mundo por haberlo contemplado durante demasiado tiempo desde la cima de sus raros picos nevados que aún no han sido tocados por la contaminación humana.*

Triángulo de compatibilidad del horóscopo chino del Caballo: El Caballo, el Tigre y el Perro son parte del tercero triángulo de compatibilidad de la astrología china. De hecho, el Caballo, séptimo animal-signo del zodíaco en el calendario chino, se lleva naturalmente con el Tigre y el Perro.Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: la Cabra es el amigo secreto del Caballo. El signo del zodiaco chino del Caballo es incompatible con la Rata.*

Conforme a la astrología china, para la Rata, el Caballo es demasiado impredecible y emocionalmente inestable. Tampoco el Buey acepta las incoherencias del Caballo y su creatividad, más que una virtud le parece una bohemia que le lleva al fracaso. En cambio para la Serpiente el Caballo es exabruptal, de ser ambos fogosos tendrán también ciertos momentos maravillosos aunque no tan durareros, si quieren seguir juntos ambos tendrán que luchar por el amor que requieren.'),
(8,'CABRA','assets/img/xxxxcabra.png','El Signo de la cabra en la astrología china, representa la honradez y la sinceridad, incluso es reservado. A diferencia de las culturas occidentales, como la representación del Macho cabrío en sus distintos aspectos, esto no tiene nada que ver con esta cultura oriental si se trata en algunos casos en sentido negativo. Como corresponde también al año de la Oveja, debemos recordar que en las culturas occidentales principalmente en las creencias cristianas tiene algo de similitud con lo que respecta a la representación, como la paz y tranquilidad aparte de la paloma blanca. Dentro de la cultura China, han sido incorporadas en este zodíaco, fauna propio del Euroasia debido a que ambas pertenecen a la misma familia de especies. En el zodíaco occidental, la cabra simboliza al signo de Capricornio. Muchos creen equivocadamente que Cabra es Capricornio, pero el signo paralelo de Capricornio en la astrología china es el Búfalo.*

Las cabras son amorosas y desinteresadas, siempre piensan en los demás, incluso si esto va en contra de sus propios intereses.*

Las cabras pueden perseverar en cualquier dificultad. Este es su rasgo más notable. Son fuertes y resistentes, aunque su gentileza puede ser engañosa. Tienen alta tolerancia y motivación. Son observadores silenciosos, las cabras consideran todos los aspectos de cualquier cosa antes de decidir. Nunca actúan descaradamente y pueden completar tareas con éxito.*

La Cabra se enamora fácilmente, hasta el punto de poder amar sinceramente a varias personas a la vez. Bajo ciertas condiciones, ya sea en la amistad o en el amor, está listo para soportar situaciones desagradables sin decir una palabra. Sin embargo, cuando la Cabra siente que su amor no es recíproco, regaña rápidamente y luego salta con gracia y agilidad hacia pastos más exuberantes. En su vida diaria, la Cabra se conforma fácilmente con lo que la naturaleza le brinda, siempre que la hierba a su disposición permanezca verde y grasa.*

Las cabras también aman a los niños, los animales y la naturaleza. Son muy ordenados y a menudo se los ve organizando el hogar. También son generosos con su tiempo y dinero. Pase lo que pase, ponen las necesidades de los demás por encima de las suyas. Sin embargo, su terquedad interna a veces dificulta la comunicación.* 

Debido a su personalidad moderada, pueden hacer muchos amigos. Son empáticos y siempre tratan de perdonar a los demás entendiendo su punto de vista, sin embargo esto no significa que permanezca ciega a las acciones de quienes lo rodean.. En una discusión, rara vez hablan porque simplemente quieren que la pelea termine. Pero cuando estén en peligro, se pondrán a la defensiva.*

Los hombres nacidos en el año de la cabra son verdaderos caballeros. Están orientados a la familia y tienen una personalidad sincera. No importa a dónde vayan, se les puede ver interactuando con personas y haciendo nuevos amigos. Escuchan a la gente genuinamente y son maduros. Cuando otros tienen problemas, harán todo lo posible para ayudar.*

No les gusta presionarse demasiado y tampoco criticar a los demás. Durante una discusión, a menudo son los pacificadores. En los momentos adecuados, ofrecen consejos y sugerencias.*

Pero a menudo son fatalistas. Es difícil para ellos ver los lados positivos de las cosas y esto los pone ansiosos. Estos hombres intentan usar el entusiasmo para equilibrar su pesimismo. Quieren atención y apoyo.*

Las mujeres nacidas en el año de la cabra son confiables y atentas. Ni siquiera los detalles más pequeños pueden escapar de sus ojos. También son sociales y sensibles a las necesidades de los demás.*

Están muy motivadas y se puede depender de ellas para realizar bien las tareas. Pero no son las mejores para resolver problemas. A menudo no escuchan las advertencias y terminan haciendo las cosas de la manera más difícil.*

Estas mujeres buscan altos estándares y viven una vida organizada. Sin embargo, pueden estar preocupadas y sentirse inseguras. A pesar de su amabilidad hacia los demás, son duras con ellas mismas y nunca se sienten satisfechas.*

En verdad, la Cabra puede realizar milagros, siempre que no se deje atontar por la inactividad de un entorno demasiado favorable y que se las arregle para preguntarse sobre el significado de su vida y sus profundas aspiraciones. De hecho, la Cabra, tan preocupada con su libertad, debe recordar sabiamente que la verdadera libertad pasa por la independencia y que para acceder a ella debe construir sus proyectos a largo plazo, con perseverancia, y evitar cualquier tentación para gastos innecesarios.*

Triángulo de compatibilidad del horóscopo chino de la Cabra: La Cabra, el Conejo y el Cerdo forman parte del cuarto triángulo de compatibilidad de la astrología china. De acuerdo a ella, La Cabra necesita contar con el apoyo de gente fuerte y leal, pero que tenga su lado sensible y amoroso, por eso con el Conejo y el Cerdo forman una pareja perfecta, al igual que con el Caballo y el Tigre que poseen rasgos abiertos y optimistas que complementaran la personalidad de la Cabra. También armonizará muy bien con el Mono, el Dragón, el Gallo, la Serpiente, o bien con otra Cabra. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Caballo es el amigo secreto de la Cabra. El signo del zodiaco chino de la Cabra es incompatible con el Búfalo.'),
(9,'MONO','assets/img/xxxxxmono.png','El mono (猴) es el noveno del ciclo de 12 animales que aparecen en el Zodiaco chino relacionados al calendario chino. El año del mono es asociado al símbolo 申.*

Los Monos son bromistas alegres que tienen la capacidad de lograr todos sus sueños.*

En el trabajo, todos haríamos mucho mejor si escuchábamos más a menudo a los buenos consejos del Mono. Su mente está siempre hasta el desafío de resolver las situaciones más complejas. El Mono puede proporcionar el mejor asesoramiento profesional, siempre y cuando se sienta respetado, escuchado y admirado. Sólo cuando su palabra se pone en duda se puede convertir en un ser manipulador y sin escrúpulos.*

En su vida amorosa, el apetito del Mono y su curiosidad por nuevas experiencias sólo pueden traerlo una satisfacción temporal. En vez de la euforia producida por el momento compartido, el Mono, desgarrado por su intenso deseo de libertad, preferirá dejar de lado. Sólo en la segunda parte de su vidas puede encontrar un mejor equilibrio y la estabilidad en su casa.*

En los negocios, ya que tiene un amor indescriptible por el dinero, el Mono está siempre en la búsqueda de nuevas ideas de enriquecimiento. Su confianza y encanto, ingeniosidad y practicidad, le ayuda a encontrar soluciones creativas y efectivas a los problemas que enfrenta.*

Algunas personas confunden la confianza del Mono con la arrogancia, y sus enemigos no dudarán en intentar devolver a su mente apasionada contra él. Pero el Mono no es de mente sensible, cualquier intento de dañar su ego y ralentizarlo son esfuerzos perdidos.*

El Mono es un estratega experto con un carácter amistoso. Cuando las personas nacidas lo decide, puede convencer y seducir incluso a sus peores enemigos, con su encanto e inteligencia aguda.*

Triángulo de compatibilidad del horóscopo chino del Mono: El Mono, la Rata y el Dragón son parte del primer triángulo de compatibilidad de la astrología china. De hecho, la Rata, primer animal-signo del zodíaco en el calendario chino, se lleva naturalmente con la Rata y el Dragón. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto la Serpiente es el amigo secreto del Mono. El signo del zodiaco chino del Mono es incompatible con el Tigre.'),
(10,'GALLO','assets/img/xxxxxgallo.png','El signo del gallo en la astrología china corresponde a los nacidos en los años 1909-1921-1933-1945-1957-1969-1981-1993-2005-2017. El nacido en este signo es considerado como el héroe, el menos comprendido, el más excéntrico y el más inteligente. Es impuntual como Baneza. A los Gallos no se les ve desaliñados, se pasean mostrando toda su dignidad; es fácil enamorarse de ellos y difícil olvidarlos, ya que este signo suele ser muy atractivo, sobre todo por su elegancia personal. También representa el nuevo amanecer y comenzar, por el canto del gallo cuando sale el sol. En ocasiones se le emparenta o representa con el Feng Huang o Fénix chino, pues además de creencias populares, existe el famoso "Gallo Fénix", Onagadori.*

Una de las tantas cosas que los gallos simbolizan para los chinos, es la suerte. La palabra "gallo" (鸡, jī) en chino tiene una pronunciación similar a la de "suerte" (吉， jí). Se cree que antes de que fuera domesticado por la gente, el gallo pertenecía a la misma familia que el fénix. Los gallos son hermosos, con peine rojo, plumas coloridas y cola dorada. Así que al principio la gente los llamaba. ji ( 吉, que significa suerte) y creía que este animal traería suerte a las personas como el fénix.*

El décimo animal del horóscopo chino tiene una personalidad radiante. Puede avergonzar o fascinar, pero nunca deja indiferente a nadie. El gallo es minucioso y tiene excelentes habilidades de gestión, especialmente cuando se trata de su propio negocio.*

Si el Gallo no tiene mucho talento para el tacto y la diplomacia, por otro lado, está dotado de una honestidad única y una lealtad ejemplar. Muy preciso en todo lo que hace, es muy aficionado a los pequeños detalles, y nada escapa a sus ojos agudos.*

A menudo se puede cruzar un Gallo en el mundo del entretenimiento. Puede convertirse fácilmente en asesor de celebridades, cuidando meticulosamente la gestión diaria de su jefe. Atraído por las artes, el Gallo le encanta estar detrás del escenario, sin embargo no le importa tampoco encontrarse en el centro de atención.*

Con los pies firmemente plantados en el suelo, el Gallo tiene una vitalidad excepcional y la capacidad de seducir, siempre y cuando pueda controlar la situación.*

La personalidad fuerte del Gallo podría sugerir que sea irrespetuoso, lo que no es el caso. En realidad, el Gallo no pica palabras con la gente. Además, simplemente no puede soportar ser contradicho ni permitir que alguien abuse de sus debilidades. Los otros signos del calendario chino deben recordar que las demostraciones de benevolencia y de empatía de un Gallo suelen ser una excusa para dirigir.*

El Gallo usará esta fachada para hacerte creer en su infalibilidad y su rectitud, mientras que en el fondo de sí mismo, su corazón está lleno de dudas. Los Gallos son personas complejas que parecen fuertes, pero, en el fondo, necesitan la validación de sus seres queridos.. Cuando está perturbado, el Gallo responde bruscamente, no dudando si es necesario herir los sentimientos de su amigo o compañero, sólo para que pueda tener la última palabra. *

Si parece anticonformista o libertino a primera vista, la mayoría de los Gallos son en realidad bastante conservadores, a veces incluso reaccionarios. Sin embargo, una mujer Gallo tiene una gran potencialidad para convertirse en una madre fantástica y por organizar eficientemente la educación exitosa de sus hijos.*

Finalmente, el Gallo es un buen compañero, fiel y leal, muy sensible a la adulación, siempre gracioso. Su fuerza emocional contrapesa en gran medida su excedente de orgullo.*

Triángulo de compatibilidad del horóscopo chino del Gallo:El Gallo, el Búfalo y la Serpiente son parte del segundo triángulo de compatibilidad de la astrología china. De hecho, el Gallo, décimo animal-signo del zodíaco en el calendario chino, se lleva naturalmente con el Búfalo y la Serpiente.Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Dragón es el amigo secreto del Gallo. El signo del zodiaco chino del Gallo es incompatible con el Conejo.'),
(11,'PERRO','assets/img/xxxxperro.png','El perro ( 狗 ) en la astrología china es uno de los doce animales del ciclo del zodiaco chino. El año del perro se asocia con el símbolo 戌. El carácter 狗 hace referencia al animal físico y 戌 al animal del zodiaco.*
Representa la ternura, la fidelidad y la felicidad.*

honesto y leal, los Perros son los amigos más verdaderos y la pareja más confiable.*

La característica más definitoria de un Perro es su lealtad. Nunca abandonarán a sus amigos, familiares o trabajo. Aborrece la injusticia sobre todo, y siempre llega a los necesitados, haciéndolo un candidato natural para las misiones humanitarias.*

Tanto  trabajador como honesto, respetuoso y justo, también aprecia la pereza como una virtud. La gula es su pecado pecaminoso, mientras que una tendencia a la hipocondría puede ser para él una fuente de ansiedad que lo podría empujar a aislarse. No obstante a ello, son populares en los círculos sociales. Todo el mundo necesita un Perro amigo para recibir consejos y ayuda. También son buenos para ayudar a otros a encontrar y corregir sus malos hábitos.*

El Perro tiende a tener una visión maniquea de su relación con los demás, que son amigos o enemigos. Esto no significa que no sepa cómo ser indulgente y perdonar con gracia, no sin haber expresado previamente su descontento. El Perro también está dotado de una gran perspicacia y un incomparable sentido de observación, que utiliza para proteger mejor su casa y su vecindario, lugares de los que se aleja lo menos posible. El Pero naturalmente inspira confianza, lo que es conveniente para él para convencer a sus amigos de que siempre lo sigan en nuevos viajes.*

En el amor, el Perro es leal, sensual y profundamente dedicado a su pareja y su familia, se preocupan profundamente por ella. Su terquedad se desvanece ante sus seres queridos. Trabajan para comprender y comprometerse, lo que resulta en una vida familiar armoniosa.. También puede ser celoso e intransigente, defectos por los cuales debe trabajar constantemente en sí mismo. Si el Perro prefiere permanecer discreto sobre su vida privada, nunca le dice que no a las oportunidades que podrían ponerlo en el punto de mira. Con la edad, el undécimo signo del zodíaco chino puede llegar a ser famoso (y más solitario).*

Triángulo de compatibilidad del horóscopo chino del Perro: El Perro, el Tigre y el Caballo son parte del tercero triángulo de compatibilidad de la astrología china. De hecho, el Perro, tercero animal-signo del zodíaco en el calendario chino, se lleva naturalmente con el Tigre y el Caballo. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Conejo es el amigo secreto del Perro. El signo del zodiaco chino del Perro es incompatible con el Dragón.'),
(12,'CERDO','assets/img/xxxxcerdo.png','El signo del cerdo en la astrología china Hai (亥) es el signo de la duodécima Rama Tierra. Su representación animal es el cerdo o jabalí (猪). En la cultura china, el cerdo está asociado con la fertilidad y la virilidad. Los niños nacidos en el Año del Cerdo son considerados muy afortunados, pues serán felices y honrados.*

Los Cerdos tienen una hermosa personalidad y están bendecidos con buena fortuna en la vida.*

Hedonista, el Cerdo tiene un apetito voraz por los placeres de la vida, especialmente por los placeres carnales. Aunque esto puede hacerlo parecer superficial, siempre está dispuesto a gastar una fortuna, solo para satisfacer su necesidad de complacer y disfrutar la vida al máximo.*

Valiente, de buen carácter, enérgico, orgulloso y celoso, el Cerdo a menudo es consultado en la vida profesional por su ingenio y habilidad manual. En el trabajo, aunque algunos tienden a decir que los Cerdos son relativamente lentos, cuando tienen una idea en mente, o están convencidos por una idea, saben muy bien cómo priorizar, aplicar rápidamente y entregar a tiempo un proyecto empresarial. Aunque puedan no destacarse en una multitud, son muy realistas. Otros pueden ser todo hablar y no actuar. Los Cerdos son lo contrario. Son enérgicos y siempre están entusiasmados, incluso para trabajos aburridos. Si se les da la oportunidad, tomarán posiciones de poder y estatus. Creen que solo esas personas tienen derecho a hablar, y eso es lo que quieren. Son un poco materialistas, pero esto es una motivación para que trabajen duro. Ser capaz de sostener objetos sólidos en sus manos les da seguridad. *
Su honestidad intangible le hace rechazar instintivamente los acciones malas o reprensibles. Cuando el Cerdo se siente acorralado, se convierte un ser sospechoso, compartimentado, apático, totalmente ensimismado. Cuando está en busca de paz interior, la naturaleza y el aire fresco se convierten en una necesidad vital para él. El Cerdo ama el campo. Aunque puede encontrarse en reuniones sociales o familiares, al nativo del Año del Cerdo le encanta quedarse solo para cuidar de sí mismo, ofreciéndose pequeños placeres que pueden parecer bastante insignificantes para los otros.* 
A veces un soñador, sin embargo su resistencia puede ocultar su verdadera naturaleza antojada y ocasional. De hecho, se puede obtener fácilmente servicios del Cerdo. Sin saber cómo decir que no, el Cerdo se vuelve rápidamente fatalista cuando se le niega algo a cambio, especialmente en el amor. Sorprendentemente cortés y perdonador, este ser inteligente y afortunado aprecia el dinero, no por el poder que da sino por la realización de su propia comodidad o bienestar material.* 

 

El Cerdo, décimo segundo animal-signo del zodíaco en el calendario chino, forma parte del cuarto Triángulo de compatibilidad y finaliza la rueda china astral. Los 12 signos del zodiaco del horóscopo chino también tienen un amigo secreto: el Tigre es el amigo secreto del Cerdo. El indulgente Cerdo es muy compatible con la bondadosa Cabra, el indulgente Cerdo es aún más compatible con el sensible Conejo, dos Cerdos indulgentes pueden formar una buena pareja. El Cerdo será de gran compañía para el aventurero Tigre. También tiene gran entendimiento con el Signo Perro. La fuerte atracción entre la Rata y el Cerdo hace posible esta unión a pesar de las diferencias. A diferencia de otros opuestos, Serpiente y Cerdo si puede funcionar, pero por la norma de los signos opuestos es recomendable que no se junten.');