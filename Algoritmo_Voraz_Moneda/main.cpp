#include <QCoreApplication>

#include <iostream>
#include <vector>

using namespace std;

/***********************************************************************************
 * ***
 * ***
 * ***          Definicion de funciones
 * ***
 * ***
 **********************************************************************************/
void insercion( int [], int );
void AlgoritmoVoraz( int *, int , int *, int );
void Visualizar( int * , int * , int );
/*
 *
 */


/***********************************************************************************
 * ***
 * ***
 * ***          Funcion principal del programa
 * ***
 * ***
 **********************************************************************************/
int main(int argc, char *argv[])
{
  //  QCoreApplication a(argc, argv);
    int CantidadMonedas = 0;
    int CantidadCambio = 0;
    cout << "Ingrese cuantas monedas diferentes que quiere ingresar\n\n";
    cin >> CantidadMonedas;
    int Denominaciones[ CantidadMonedas ] = { 0 };
    int Solucion[ CantidadMonedas ] = { 0 };
    for( int i = 0; i < CantidadMonedas; i++ ){
        cout << "Ingrese la denominacion\t";
        cin >> Denominaciones[ i ];
    }
    insercion( Denominaciones, CantidadMonedas );
    cout << "Ingrese la cantidad a Cambiar\n\n";
    cin >> CantidadCambio;
    AlgoritmoVoraz( Denominaciones, CantidadMonedas, Solucion, CantidadCambio );
    Visualizar( Denominaciones, Solucion, CantidadMonedas );
   // return a.exec();
    return 0;
}


/***********************************************************************************
 * ***
 * ***
 * ***          Ordenamiento por medio de insercion
 * ***
 * ***
 *  @param  arrayData[]: Arreglo de datos para ordenar
 *  @param  numData: Numero de datos a escribir en el archivo
 **********************************************************************************/
void insercion( int arrayData[], int numData ){

    for( int i = 1; i < numData; i++ ){
        int temp = arrayData[ i ];
        int j = i - 1;
        while( j >= 0 && arrayData[ j ] > temp ){
            arrayData[ j + 1 ] = arrayData[ j ];
            j--;
        }
        arrayData[ j + 1 ] = temp;
    }
}


/***********************************************************************************
 * ***
 * ***
 * ***          Algoritmo Voraz para saber la cantidad de monedas
 * ***
 * ***
 *  @param  arrayData: Arreglo de datos para ordenar
 *  @param  numData: Numero de datos a escribir en el archivo
 *  @param  Solucion: Arreglo para saber cuantas monedas coinciden
 *  @param  Cantidad: Cantidad a cambiar por monedas
 **********************************************************************************/
void AlgoritmoVoraz( int *ArrayData, int NumData, int * Solucion, int Cantidad ){
    int Moneda;
    while( NumData > 0 ){
        Moneda = *( ArrayData + ( NumData - 1 ) );
        while( Cantidad - Moneda >= 0 ){
            Cantidad -= Moneda;
            ( *( Solucion + ( NumData - 1 ) ) )++;
        }
        NumData--;
    }
}



/***********************************************************************************
 * ***
 * ***
 * ***          Algoritmo Voraz para saber la cantidad de monedas
 * ***
 * ***
 *  @param  Denominaciones: con las monedas ingresadas
 *  @param  Solucion: Arreglo para saber cuantas monedas coinciden
 *  @param  CantidadMonedas: Cantidad de monedas ingresadas
 **********************************************************************************/
void Visualizar( int * Denominaciones, int * Solucion, int CantidadMonedas ){
    for( int i = 0; i < CantidadMonedas; i++ ){
        cout << *( Denominaciones + i ) << "\t";
    }
    cout << endl;
    for( int i = 0; i < CantidadMonedas; i++ ){
        cout << *( Solucion + i ) << "\t";
    }
}
