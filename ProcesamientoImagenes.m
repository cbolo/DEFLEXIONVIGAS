% Programador: César Jordi Bolo Caldas
% Curso: Mecanicá de Medios Continuos
% Fecha: 13/09/2020
% Version: 0

% Descripción: El siguiente script fue desarrollado en Matlab y tiene el
% objetivo de determinar las deflexiones experimentadas por una viga al ser
% sometida a cargas a partir de fotografias. 

% Para la aplicación del metodo es necesario determinar puntos de
% referencia en la viga (circunferencias) las cuaales seran detectadas por
% el presente programa y apartir de dichos desplazamientos calcular
% indirectamente las deformaciones



%% ANALISIS DE IMAGENES SIN DEFORMAR
ImagenInicial01 = imread('IMAGEN ADF 01.jpeg'); %Importanción de imagen sin deformar
ImagenInicial02 = imread('IMAGEN ADF 02.jpeg'); %Importanción de imagen sin deformar
ImagenInicial03 = imread('IMAGEN ADF 03.jpeg'); %Importanción de imagen sin deformar
ImagenInicial04 = imread('IMAGEN ADF 04.jpeg'); %Importanción de imagen sin deformar


%% Calcular centros de las cirfuncerencias para Imagen Inicial
imshow(ImagenInicial01) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
Rmin = 18; Rmax = 30;
%Circulos Imagen 01
[centersImgI01, radiiImgI01] = imfindcircles(ImagenInicial01,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgI01, radiiImgI01,'Color','b');
title('Imagen 01 sin carga')

%Circulos Imagen 02

imshow(ImagenInicial02) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgI02, radiiImgI02] = imfindcircles(ImagenInicial02,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgI02, radiiImgI02,'Color','y');
title('Imagen 02 sin carga')

%Circulos Imagen 03

imshow(ImagenInicial03) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgI03, radiiImgI03] = imfindcircles(ImagenInicial03,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgI03, radiiImgI03,'Color','g');
title('Imagen 03 sin carga')
%Circulos Imagen 04

imshow(ImagenInicial04) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgI04, radiiImgI04] = imfindcircles(ImagenInicial04,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgI04, radiiImgI04,'Color','r');
title('Imagen 04 sin carga')


%% LECTURA DE IMAGENES DEFORMARDAS CARGA 1KG
ImagenDF1_01 = imread('IMAGEN DF1 01.jpeg'); %Importanción de imagen sin deformar
ImagenDF1_02 = imread('IMAGEN DF1 02.jpeg'); %Importanción de imagen sin deformar
ImagenDF1_03 = imread('IMAGEN DF1 03.jpeg'); %Importanción de imagen sin deformar
ImagenDF1_04 = imread('IMAGEN DF1 04.jpeg'); %Importanción de imagen sin deformar



%% Calcular centros de las cirfuncerencias para 1Kg de carga
imshow(ImagenDF1_01) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
Rmin = 18; Rmax = 30;
%Circulos Imagen 01
[centersImgD1_01, radiiImgD1_01] = imfindcircles(ImagenDF1_01,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD1_01, radiiImgD1_01,'Color','b');
title('Imagen 01 con 1kg de carga')

%Circulos Imagen 02

imshow(ImagenDF1_02) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgD1_02, radiiImgD1_02] = imfindcircles(ImagenDF1_02,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD1_02, radiiImgD1_02,'Color','g');
title('Imagen 02 con 1kg de carga')

%Circulos Imagen 03

imshow(ImagenDF1_03) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgD1_03, radiiImgD1_03] = imfindcircles(ImagenDF1_03,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD1_03, radiiImgD1_03,'Color','y');
title('Imagen 03 con 1kg de carga')
%Circulos Imagen 04

imshow(ImagenDF1_04) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgD1_04, radiiImgD1_04] = imfindcircles(ImagenDF1_04,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD1_04, radiiImgD1_04,'Color','r');
title('Imagen 04 con 1kg de carga')


%% LECTURA DE IMAGENES DEFORMARDAS CARGA 3KG
ImagenDF2_01 = imread('IMAGEN DF2 01.jpeg'); %Importanción de imagen sin deformar
ImagenDF2_02 = imread('IMAGEN DF2 02.jpeg'); %Importanción de imagen sin deformar
ImagenDF2_03 = imread('IMAGEN DF2 03.jpeg'); %Importanción de imagen sin deformar
ImagenDF2_04 = imread('IMAGEN DF2 04.jpeg'); %Importanción de imagen sin deformar



%% Calcular centros de las cirfuncerencias para 3Kg de carga
imshow(ImagenDF2_01) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
Rmin = 18; Rmax = 30;
%Circulos Imagen 01
[centersImgD2_01, radiiImgD2_01] = imfindcircles(ImagenDF2_01,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD2_01, radiiImgD2_01,'Color','b');
title('Imagen 01 con 3kg de carga')

%Circulos Imagen 02

imshow(ImagenDF2_02) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgD2_02, radiiImgD2_02] = imfindcircles(ImagenDF2_02,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD2_02, radiiImgD2_02,'Color','g');
title('Imagen 02 con 3kg de carga')

%Circulos Imagen 03

imshow(ImagenDF2_03) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgD2_03, radiiImgD2_03] = imfindcircles(ImagenDF2_03,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD2_03, radiiImgD2_03,'Color','y');
title('Imagen 03 con 3kg de carga')
%Circulos Imagen 04

imshow(ImagenDF2_04) %Mostrar la Imagen Cargada
d = imdistline; % Paso 2: Herramienta para medir los circulos
[centersImgD2_04, radiiImgD2_04] = imfindcircles(ImagenDF2_04,[Rmin Rmax],'ObjectPolarity','bright','Sensitivity',0.93);
viscircles(centersImgD2_04, radiiImgD2_04,'Color','r');
title('Imagen 04 con 3kg de carga')
