#Reporte Técnico
*Eliminé el botón (Button) del storyboard, ya se tenía una referencia a un botón deseado (Aoutlet Button)
*Mantuve el Button llamado Aoutlet Button
*Eliminé el TextField llamado Round Style Text Field
*Mantuve el TextField llamado Outlet Text
*Corregí el nombre en código del TextField llamado outtletText a outletText, ya que en el inspector de conexiones el TextField llamado Outlet Text ya mantenía una conexión en el ViewController con un TextField llamado outletText solo que estaba mal llamado
*Hice la conexión del outletText agregando @IBOutlet y conectándolo en el storyboard
*Cambié la linea de código outtletText.text = "You are a genius " por outletText.text = "You are a genius "
*Agregué la línea @IBAction al método actionButton para que me permitiese hacer una conexión en el inspector de conexiones al evento de TouchUpInside
*Cambié el texto que dice Touch Me! en el botón porque en los requerimientos dice que quiere el cliente que diga Touch me (sin admiración y con minúscula el me)
*Hice un poco más grande el botón porque no cabía bien el texto de Touch me

#Nombres de error y razones que muestra la ventana de depuración de código:
Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<prueba.ViewController 0x7f83f8405d60> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key outletText.'

libc++abi.dylib: terminating with uncaught exception of type NSException

#Conclusiones de la Actividad
Es muy importante identificar bien lo que nos dice la ventana de depuración ya que allí nos dice de una manera casi exacta que tipo de error tenemos. Muchas veces no leemos el tipo de advertencia o error que nos indica, sin embargo es demasiado importante hacerlo.

Con lo visto hasta ahora en el curso no me costó mucho trabajo hacer lo necesario para que funcionara, ya que hemos entendido muy bien las conexiones del ViewController con el Storyboard y qué hacer cuando tenemos un detalle de este tipo. Gracias a la explicación del Interface Builder y el MVC.