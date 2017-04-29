#include <QCoreApplication>
#include <iostream>

using namespace std;


/***********************************************************************************
 * ***
 * ***
 * ***          Declaracion de funciones
 * ***
 * ***
 **********************************************************************************/
void SecuenciaMasLarga( string , string );
void SolucionSecuencia( string , int, int );

/***********************************************************************************
 * ***
 * ***
 * ***          Declaracion de variables globales
 * ***
 * ***
 **********************************************************************************/
char Solucion[ 100 ][ 100 ];

/***********************************************************************************
 * ***
 * ***
 * ***          Funcion principal del programa
 * ***
 * ***
 **********************************************************************************/
int main(int argc, char *argv[])
{
    string PrimeraPalabra;
    string SegundaPalabra;    
    cout << "Ingrese la primera Palabra\n";
    cin >> PrimeraPalabra;
    cout << "Ingrese la segunda Palabra\n";
    cin >> SegundaPalabra;

 //   QCoreApplication a(argc, argv);
    cout << PrimeraPalabra << "\n" << SegundaPalabra << "\n\n";
    SecuenciaMasLarga( PrimeraPalabra, SegundaPalabra );

   // return a.exec();
    return 0;
}


/***********************************************************************************
 * ***
 * ***
 * ***          Funcion para encontrar la secuencia mas larga
 * ***
 * ***
 **********************************************************************************/
void SecuenciaMasLarga( string PrimeraPalabra, string SegundaPalabra ){  

    int i = PrimeraPalabra.length() + 1;
    int j = SegundaPalabra.length() + 1;
    int Matriz[ i ][ j ] = { 0 };    

    for( int a = 0; a < i; a++ ){
        Matriz[ a ][ 0 ] = 0;       
    }
    for( int a = 0; a < j; a++ ){
        Matriz[ 0 ][ a ] = 0;        
    }

    for( int a = 1; a < i; a++ ){
        for( int b = 1; b < j; b++ ){
            if( PrimeraPalabra.substr( a - 1, 1 ) == SegundaPalabra.substr( b - 1, 1 ) ){
                Matriz[ a ][ b ] = Matriz[ a - 1 ][ b -1 ] + 1;
                Solucion[ a ][ b ] = '/';
            }else if( Matriz[ a - 1 ][ b ] >= Matriz[ a ][ b - 1 ]){
                Matriz[ a ][ b ] = Matriz[ a - 1 ][ b ];
                Solucion[  a ][ b ] = '|';
            }else{
                Matriz[ a ][ b ] = Matriz[ a ][ b -1 ];
                Solucion[ a ][ b ] = '-';
            }
        }
    }

    for( int a = 0; a < i; a++ ){
        for( int b = 0; b < j; b++ ){
            cout << Matriz[ a ][ b ] << "\t";
        }
        cout << "\n";
    }
    cout << "\n\n";

    for( int a = 0; a < i ; a++ ){
        for( int b = 0; b < j ; b++ ){
            cout << QString( QChar(Solucion[ a ][ b ])).toStdString() << "\t";
        }
        cout << "\n";
    }
    cout << "\n\n";

    SolucionSecuencia( PrimeraPalabra.c_str(), i - 1 , j - 1 );
    cout << "\n\n";

}

/***********************************************************************************
 * ***
 * ***
 * ***          Funcion para encontrar la cadena de solucion
 * ***
 * ***
 **********************************************************************************/
void SolucionSecuencia( string Palabra, int i, int j ){
    if ( i==0 || j==0 )
       return ;
    if ( Solucion[ i + 1 ][ j + 1 ]=='/' )
    {

        SolucionSecuencia( Palabra, i-1, j-1 );
        cout<< Palabra.substr( i , 1 );
     }
    else

        if ( Solucion[ i ][ j ]== '|' )
             SolucionSecuencia( Palabra, i-1, j);
        else // "-"
            SolucionSecuencia( Palabra, i, j-1 );
}

