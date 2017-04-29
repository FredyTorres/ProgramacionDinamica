/*********************************************************************
 * ***
 * ***
 * ***      Inclsion de librerias
 * ***
 * ***
*********************************************************************/

//#include <QCoreApplication>
#include <iostream>
#include <stdio.h>
#include <string.h>


using namespace std;

/*********************************************************************
 * ***
 * ***
 * ***      Declaracion de constantes y Macros
 * ***
 * ***
*********************************************************************/


/*********************************************************************
 * ***
 * ***
 * ***      Declaracion de funciones
 * ***
 * ***
*********************************************************************/
void Combinatoria( int , int );



/*********************************************************************
 * ***
 * ***
 * ***      Declaracion de variables globales
 * ***
 * ***
*********************************************************************/

/*********************************************************************
 * ***
 * ***
 * ***      Funcion principal del programa
 * ***
 * ***
*********************************************************************/
int main(int argc, char *argv[])
{

    int NumeroACombinar = 0;
    int Combinacion = 0;
    system("color FC" );
    cout << "\t------------------------------------------------------------\n" << "\t        Programa para encontrar la combinatoria de un Numero\n";
    cout << "\t------------------------------------------------------------\n\n";
 //   QCoreApplication a(argc, argv);

 //   return a.exec();
    cout << "\t Ingrese el numero a combinar: ";
    cin >> NumeroACombinar;
    cout << "\t Ingrese la combinacion: ";
    cin >> Combinacion;
    Combinatoria( NumeroACombinar, Combinacion );
    return 0;
}


/*********************************************************************
 * ***
 * ***
 * ***      Funcion para realizar la combinatoria
 * ***
 * ***
 * ***      @param N: Numero a combinar
 * ***      @param K: Numero para determinar las combinaciones
*********************************************************************/
void Combinatoria( int N, int K ){
    int Combinacion[ N ][ K ] = { 0 };
    for( int i = 0; i < N; i++ ){
        for( int j = 0; j < K; j++ ){
            Combinacion[ i ][ j ] = 0;
        }
    }

    for( int i = 0; i < N; i++ ){
        Combinacion[ i ][ 0 ] = 1;
    }
    for( int i = 1; i < N; i++ ){
        Combinacion[ i ][ 1 ] = i;
    }
    for( int i = 2; i < K; i++ ){
        Combinacion[ i ][ i ] = 1;
    }

    for( int i = 3; i < N; i++ ){
        for( int j = 2; j <= i - 1; j++ ){
            if( j <= K ){
                Combinacion[ i ][ j ] = Combinacion[ i - 1 ][ j - 1 ] + Combinacion[ i - 1 ][ j ];
            }
        }
    }
    cout << "\t";
    for( int i = 0; i < N; i++ ){
        for( int j = 0; j < K; j++ ){
            cout << Combinacion[ i ][ j ] << "\t";
        }
        cout << endl << "\t";
    }
}
