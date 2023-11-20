function varargout = MainDecaimentoSimples(varargin)
% MAINDECAIMENTOSIMPLES MATLAB code for MainDecaimentoSimples.fig
%      MAINDECAIMENTOSIMPLES, by itself, creates a new MAINDECAIMENTOSIMPLES or raises the existing
%      singleton*.
%
%      H = MAINDECAIMENTOSIMPLES returns the handle to a new MAINDECAIMENTOSIMPLES or the handle to
%      the existing singleton*.
%
%      MAINDECAIMENTOSIMPLES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINDECAIMENTOSIMPLES.M with the given input arguments.
%
%      MAINDECAIMENTOSIMPLES('Property','Value',...) creates a new MAINDECAIMENTOSIMPLES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainDecaimentoSimples_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainDecaimentoSimples_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainDecaimentoSimples

% Last Modified by GUIDE v2.5 13-Dec-2016 21:13:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainDecaimentoSimples_OpeningFcn, ...
                   'gui_OutputFcn',  @MainDecaimentoSimples_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MainDecaimentoSimples is made visible.
function MainDecaimentoSimples_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainDecaimentoSimples (see VARARGIN)

% Choose default command line output for MainDecaimentoSimples
handles.output = hObject;

%INICIALIZAÇÃO DE VARIAVEIS
handles.MeiaVida = 1; %MEIA VIDA EM ANOS

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MainDecaimentoSimples wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MainDecaimentoSimples_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in MenuElementos.
function MenuElementos_Callback(hObject, eventdata, handles)
% hObject    handle to MenuElementos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MenuElementos contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MenuElementos

%ESCOLHA DE ISÓTOPO
val = get(handles.MenuElementos,'Value')
guidata(hObject, handles);

switch val
    
    case 1 %Cm244 CADEIA 1
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Curio.jpg');
        handles.MeiaVida = 18.1; %MEIA VIDA EM ANOS
        
    case 2 %Pu240 CADEIA 1
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Plutonio.jpg');
        handles.MeiaVida = 6.564e+3; %MEIA VIDA EM ANOS
        
    case 3 %U236 CADEIA 1
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Uranio.jpg');
        handles.MeiaVida = 23.42e+6; %MEIA VIDA EM ANOS
        
    case 4 %Pu242 CADEIA 2
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Plutonio.jpg');
        handles.MeiaVida = 373.3e+3; %MEIA VIDA EM ANOS
        
    case 5 %U238 CADEIA 2
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Uranio.jpg');
        handles.MeiaVida = 4.468e+9; %MEIA VIDA EM ANOS
        
    case 6 %Am243 CADEIA 3
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Americio.jpg');
        handles.MeiaVida = 7.37e+3; %MEIA VIDA EM ANOS
        
    case 7 %Np239 CADEIA 3
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Neptunio.jpg');
        handles.MeiaVida = 6.4482e-3; %MEIA VIDA EM ANOS
        
    case 8 %Pu239 CADEIA 3
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Plutonio.jpg');
        handles.MeiaVida = 24.11e+3; %MEIA VIDA EM ANOS
        
    case 9 %U235 CADEIA 3
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Uranio.jpg');
        handles.MeiaVida = 703e+6; %MEIA VIDA EM ANOS
        
    case 10 %Pu241 CADEIA 4
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Plutonio.jpg');
        handles.MeiaVida = 14.35; %MEIA VIDA EM ANOS
        
    case 11 %Am241 CADEIA 4
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Americio.jpg');
        handles.MeiaVida = 432.2; %MEIA VIDA EM ANOS
        
    case 12 %Np237 CADEIA 4
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Neptunio.jpg');
        handles.MeiaVida = 2.144e+6; %MEIA VIDA EM ANOS
        
    case 13 %Cm242 CADEIA 5
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Curio.jpg');
        handles.MeiaVida = 4.4603e-1; %MEIA VIDA EM ANOS
        
    case 14 %Pu238 CADEIA 5
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Plutonio.jpg');
        handles.MeiaVida = 87.7; %MEIA VIDA EM ANOS
        
    case 15 %U234 CADEIA 5
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Uranio.jpg');
        handles.MeiaVida = 245.5e+3; %MEIA VIDA EM ANOS
        
    case 16 %Th230 CADEIA 5
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Torio.jpg');
        handles.MeiaVida = 75.38e+3; %MEIA VIDA EM ANOS
        
    case 17 %Ra226 CADEIA 5
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('Radio.jpg');
        handles.MeiaVida = 1.6e+06; %MEIA VIDA EM ANOS
end

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function MenuElementos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MenuElementos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function QuantidadeInicial_Callback(hObject, eventdata, handles)
% hObject    handle to QuantidadeInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QuantidadeInicial as text
%        str2double(get(hObject,'String')) returns contents of QuantidadeInicial as a double


% --- Executes during object creation, after setting all properties.
function QuantidadeInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QuantidadeInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function TempoDesejado_Callback(hObject, eventdata, handles)
% hObject    handle to TempoDesejado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TempoDesejado as text
%        str2double(get(hObject,'String')) returns contents of TempoDesejado as a double


% --- Executes during object creation, after setting all properties.
function TempoDesejado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TempoDesejado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function PassoDeTempo_Callback(hObject, eventdata, handles)
% hObject    handle to PassoDeTempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PassoDeTempo as text
%        str2double(get(hObject,'String')) returns contents of PassoDeTempo as a double


% --- Executes during object creation, after setting all properties.
function PassoDeTempo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PassoDeTempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%----------------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------------

% --- Executes on button press in GeraResultados.
function GeraResultados_Callback(hObject, eventdata, handles)
% hObject    handle to GeraResultados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

format short e;

%INICIALIZANDO VARIAVEIS
NI = str2double(get(handles.QuantidadeInicial,'String'));
TF = str2double(get(handles.TempoDesejado,'String'));
PT = str2double(get(handles.PassoDeTempo,'String'));
MV = handles.MeiaVida;
VetN = zeros((TF/PT)+1,1);
VetA = zeros((TF/PT)+1,1);

%CALCULO DA QUANTIDADE INICIAL
set(handles.QtddInicial, 'String', NI);

%CALCULO DA ATIVIDADE INICIAL
AI = (log(2)/MV)*NI;
set(handles.AtividadeInicial, 'String', AI);

%CALCULO DA QUANTIDADE FINAL - NUMERICO
VetN(1) = NI;
VetTimeN(1) = 0;
for i=0:1:((TF/PT)-1)
    VetN(i+2) = VetN(i+1)*(exp(-(log(2)/MV)*PT));
    VetTimeN(i+2)= VetTimeN(i+1)+PT;
end
set(handles.QtddFinal, 'String', VetN(end));

%CALCULO DA ATIVIDADE FINAL - NUMERICO
VetA(1) = AI;
VetTimeA(1) = 0;
for i=0:1:((TF/PT)-1)
    VetA(i+2) = VetA(i+1)*(exp(-(log(2)/MV)*PT));
    VetTimeA(i+2)= VetTimeA(i+1)+PT;
end
set(handles.AtividadeFinal, 'String', VetA(end));

%Salvando Variaveis
savefile = 'Variaveis.mat';
save(savefile, 'VetN', 'VetA', 'VetTimeN', 'VetTimeA');



% --- Executes on button press in GeraGraficoMassaTempo.
function GeraGraficoMassaTempo_Callback(hObject, eventdata, handles)
% hObject    handle to GeraGraficoMassaTempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%LENDO VARIAVEIS ARMAZENADAS
loadfile = 'Variaveis.mat';
load(loadfile, 'VetN', 'VetTimeN');

%PLOTANDO GRAFICO MASSA X TEMPO
plot(VetTimeN,VetN);
title('Massa (g) x Tempo(anos)');
xlabel('Tempo(anos)');
ylabel('Massa(g)');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%LENDO VARIAVEIS ARMAZENADAS
loadfile = 'Variaveis.mat';
load(loadfile, 'VetA', 'VetTimeA');

%PLOTANDO GRAFICO ATIVIDADE X TEMPO
plot(VetTimeA,VetA);
title('Atividade (Bequerel) x Tempo(anos)');
xlabel('Tempo(anos)');
ylabel('Atividade (Bequerel)');
