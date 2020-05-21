package Logica;


import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luckas
 */
public class ManejadorFechas {

    //Metodo usado para obtener la fecha actual
    //@return Retorna un <b>STRING</b> con la fecha actual formato "dd-MM-yyyy"
    public static String getFechaActual() {
        Date ahora = new Date();
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd-MM-yyyy");
        return formatoFecha.format(ahora);
    }
    
    //Metodo usado para obtener la hora actual del sistema
    //@return Retorna un <b>STRING</b> con la hora actual formato "hh:mm:ss"
    public static String getHoraActual() {
        Date ahora = new Date();
        SimpleDateFormat formateador = new SimpleDateFormat("hh:mm");
        return formateador.format(ahora);
    }

    //Sumarle dias a una fecha determinada
    //@param fch La fecha para sumarle los dias
    //@param dias Numero de dias a agregar
    //@return La fecha agregando los dias
    public static java.sql.Date sumarFechasDias(java.sql.Date fch, int dias) {
        Calendar cal = new GregorianCalendar();
        cal.setTimeInMillis(fch.getTime());
        cal.add(Calendar.DATE, dias);
        return new java.sql.Date(cal.getTimeInMillis());
    }

    //Restarle dias a una fecha determinada
    //@param fch La fecha
    //@param dias Dias a restar
    //@return La fecha restando los dias
    public static synchronized java.sql.Date restarFechasDias(java.sql.Date fch, int dias) {
        Calendar cal = new GregorianCalendar();
        cal.setTimeInMillis(fch.getTime());
        cal.add(Calendar.DATE, -dias);
        return new java.sql.Date(cal.getTimeInMillis());
    }

    //Diferencias entre dos fechas
    //@param fechaInicial La fecha de inicio
    //@param fechaFinal  La fecha de fin
    //@return Retorna el numero de dias entre dos fechas
    public static synchronized int diferenciasDeFechas(Date fechaInicial, Date fechaFinal) {

        DateFormat df = DateFormat.getDateInstance(DateFormat.MEDIUM);
        String fechaInicioString = df.format(fechaInicial);
        try {
            fechaInicial = df.parse(fechaInicioString);
        } catch (ParseException ex) {
        }

        String fechaFinalString = df.format(fechaFinal);
        try {
            fechaFinal = df.parse(fechaFinalString);
        } catch (ParseException ex) {
        }

        long fechaInicialMs = fechaInicial.getTime();
        long fechaFinalMs = fechaFinal.getTime();
        long diferencia = fechaFinalMs - fechaInicialMs;
        double dias = Math.floor(diferencia / (1000 * 60 * 60 * 24));
        return ((int) dias);
    }

    //Devuele un java.util.Date desde un String en formato dd-MM-yyyy
    //@param La fecha a convertir a formato date
    //@return Retorna la fecha en formato Date
    public static synchronized java.util.Date deStringToDate(String fecha) {
        DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
       // SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd-MM-yyyy");
        Date fechaEnviar = null;
        try {
            fechaEnviar = df.parse(fecha);
            return fechaEnviar;
        } catch (ParseException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    public static synchronized java.util.Date deStringToDate2(String fecha) {
        SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd/MM/yyyy");
        Date fechaEnviar = null;
        try {
            fechaEnviar = formatoDelTexto.parse(fecha);
            return fechaEnviar;
        } catch (ParseException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    
    
    /**
     * Formato para fechas
     */
    public static String DateAString(Date fecha){
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd-MM-yyyy");
        return formatoFecha.format(fecha);
    }
    
    
    public static String convertirHoraAString(Date date){
	
   Format formatter = new SimpleDateFormat("HH");
	
   return formatter.format(date);
	
}
    
      public static String convertirMinutoAString(Date date){
	
   Format formatter = new SimpleDateFormat("mm");
	
   return formatter.format(date);
	
}
      
      public static Date convertirHoraStringADate (String hora, String minutos) throws ParseException {
      
      String horaString = hora + ":" + minutos;
        SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
        Date horaCompleta = new Date();
          
                horaCompleta = formatoHora.parse(horaString);
            
        System.out.println("La hora es: " + horaCompleta);
      return horaCompleta;
      }
    
    public static Integer soloAño(Date fecha){
        SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy");
        String retorno = String.valueOf(formatoFecha.format(fecha));
        return Integer.parseInt(retorno);
    }
    
    public static String formatoHora (Date hora) {
    
    SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
    return formatoHora.format(hora);
    }
    
    public static String detectarMesSegunNumero (int num) {
    
        String mes="";
        
        if (num == 1) {
            mes = "Enero";
        }
        if (num == 2) {
            mes = "Febrero";
        }
        if (num == 3) {
            mes = "Marzo";
        }
        if (num == 4) {
            mes = "Abril";
        }
        if (num == 5) {
            mes = "Mayo";
        }
        if (num == 6) {
            mes = "Junio";
        }
        if (num == 7) {
            mes = "Julio";
        }
        if (num == 8) {
            mes = "Agosto";
        }
        if (num == 9) {
            mes = "Septiembre";
        }
        if (num == 10) {
            mes = "Octubre";
        }
        if (num == 11) {
            mes = "Noviembre";
        }
        if (num == 12) {
            mes = "Diciembre";
        }
        
        return mes;
        
    }
    
    //Este método es para usar con jCalendar que va de 0 a 11 y o de 1 a 12 :)
    public static String detectarMesSegunNumero2 (int num) {
    
        String mes="";
        
        if (num == 0) {
            mes = "Enero";
        }
        if (num == 1) {
            mes = "Febrero";
        }
        if (num == 2) {
            mes = "Marzo";
        }
        if (num == 3) {
            mes = "Abril";
        }
        if (num == 4) {
            mes = "Mayo";
        }
        if (num == 5) {
            mes = "Junio";
        }
        if (num == 6) {
            mes = "Julio";
        }
        if (num == 7) {
            mes = "Agosto";
        }
        if (num == 8) {
            mes = "Septiembre";
        }
        if (num == 9) {
            mes = "Octubre";
        }
        if (num == 10) {
            mes = "Noviembre";
        }
        if (num == 11) {
            mes = "Diciembre";
        }
        
        return mes;
        
    }
    
  
}
