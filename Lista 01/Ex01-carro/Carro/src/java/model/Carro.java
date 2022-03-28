package model;

public class Carro {
    private double valorCarro;
    
    boolean ar, cambioAutomatico, alarme, pinturaEspecial, tetoSolar, multimidia, importado;
    double potenciaMotor;
    
    double arFabrica = 3000;
    double cambioFabrica = 5000;
    double alarmeFabrica = 800;
    double pinturaEspecialFabrica = 2500;
    double tetoSolarFabrica = 4000;
    double multimidiaFabrica = 1800;
    double ipi = 0.2;
    
//      TODO: o cálculo do carro deve ficar em um controller?
    public double totalCarro(){
        return (valorCarro + 
                comAr() + 
                comCambioAutomatico() + 
                comAlarme() + 
                comPinturaEspecial() + 
                comTetoSolar() + 
                comMultimidia() +
                ehImportado()
                );
    }
    
    public double comAr(){
        return isAr() == true ? valorCarro += arFabrica : 0;
    }
    
    public double comCambioAutomatico(){
        return isCambioAutomatico() == true ? valorCarro += cambioFabrica : 0;
    }
    
    public double comAlarme(){
        return isAlarme() == true ? valorCarro += alarmeFabrica : 0;
    }
    
    public double comPinturaEspecial(){
        return isPinturaEspecial() == true ? valorCarro += pinturaEspecialFabrica : 0;
    }
        
    public double comTetoSolar(){
        return isTetoSolar() == true ? valorCarro += tetoSolarFabrica : 0;
    }
    
    public double comMultimidia(){
        return isMultimidia() == true ? valorCarro += multimidiaFabrica : 0;
    }
    
    public double ehImportado(){
        return isImportado() == true ? valorCarro *= 0.3 : 0;
    }
    
    public Carro() {}

    public Carro(boolean ar, boolean cambioAutomatico, boolean alarme, boolean pinturaEspecial, boolean tetoSolar, boolean multimidia, boolean importado, double potenciaMotor) {
        this.ar = ar;
        this.cambioAutomatico = cambioAutomatico;
        this.alarme = alarme;
        this.pinturaEspecial = pinturaEspecial;
        this.tetoSolar = tetoSolar;
        this.multimidia = multimidia;
        this.importado = importado;
        this.potenciaMotor = potenciaMotor;
    }

    public double getValorCarro() {
        return valorCarro;
    }

    public void setValorCarro(double valorCarro) {
        this.valorCarro = valorCarro;
    }

    public boolean isAr() {
        return ar;
    }

    public void setAr(boolean ar) {
        this.ar = ar;
    }

    public boolean isCambioAutomatico() {
        return cambioAutomatico;
    }

    public void setCambioAutomatico(boolean cambioAutomatico) {
        this.cambioAutomatico = cambioAutomatico;
    }

    public boolean isAlarme() {
        return alarme;
    }

    public void setAlarme(boolean alarme) {
        this.alarme = alarme;
    }

    public boolean isPinturaEspecial() {
        return pinturaEspecial;
    }

    public void setPinturaEspecial(boolean pinturaEspecial) {
        this.pinturaEspecial = pinturaEspecial;
    }

    public boolean isTetoSolar() {
        return tetoSolar;
    }

    public void setTetoSolar(boolean tetoSolar) {
        this.tetoSolar = tetoSolar;
    }

    public boolean isMultimidia() {
        return multimidia;
    }

    public void setMultimidia(boolean multimidia) {
        this.multimidia = multimidia;
    }

    public boolean isImportado() {
        return importado;
    }

    public void setImportado(boolean importado) {
        this.importado = importado;
    }

    public double getPotenciaMotor() {
        return potenciaMotor;
    }

    public void setPotenciaMotor(double potenciaMotor) {
        this.potenciaMotor = potenciaMotor;
    }

    
    
    }
