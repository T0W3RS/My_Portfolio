function varargout = MainDecaimentoComposto(varargin)
% MAINDECAIMENTOCOMPOSTO MATLAB code for MainDecaimentoComposto.fig
%      MAINDECAIMENTOCOMPOSTO, by itself, creates a new MAINDECAIMENTOCOMPOSTO or raises the existing
%      singleton*.
%
%      H = MAINDECAIMENTOCOMPOSTO returns the handle to a new MAINDECAIMENTOCOMPOSTO or the handle to
%      the existing singleton*.
%
%      MAINDECAIMENTOCOMPOSTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINDECAIMENTOCOMPOSTO.M with the given input arguments.
%
%      MAINDECAIMENTOCOMPOSTO('Property','Value',...) creates a new MAINDECAIMENTOCOMPOSTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainDecaimentoComposto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainDecaimentoComposto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainDecaimentoComposto

% Last Modified by GUIDE v2.5 15-Dec-2016 13:29:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainDecaimentoComposto_OpeningFcn, ...
                   'gui_OutputFcn',  @MainDecaimentoComposto_OutputFcn, ...
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


% --- Executes just before MainDecaimentoComposto is made visible.
function MainDecaimentoComposto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainDecaimentoComposto (see VARARGIN)

% Choose default command line output for MainDecaimentoComposto
handles.output = hObject;

%INICIALIZAÇÃO DE VARIAVEIS
%Cm244->Pu240->U236 CADEIA 1-SERIE DO TORIO
handles.MeiaVidaCm244 = 18.1; %MEIA VIDA EM ANOS
handles.MeiaVidaPu240 = 6.564e+3; %MEIA VIDA EM ANOS
handles.MeiaVidaU236 = 23.42e+6; %MEIA VIDA EM ANOS

%Pu242->%U238 CADEIA 2 - SERIE DO URANIO
handles.MeiaVidaPu242 = 373.3e+3; %MEIA VIDA EM ANOS
handles.MeiaVidaU238 = 4.468e+9; %MEIA VIDA EM ANOS

%Am243->Np239->Pu239->U235 CADEIA 3 - SERIE DO ACTINIO
handles.MeiaVidaAm243 = 7.37e+3; %MEIA VIDA EM ANOS
handles.MeiaVidaPu239 = 24.11e+3; %MEIA VIDA EM ANOS
handles.MeiaVidaU235 = 703e+6; %MEIA VIDA EM ANOS

%Pu241->Am241->Np237 CADEIA 4 - SERIE DO NEPTUNIO
handles.MeiaVidaPu241 = 14.35; %MEIA VIDA EM ANOS
handles.MeiaVidaAm241 = 432.2; %MEIA VIDA EM ANOS
handles.MeiaVidaNp237 = 2.144e+6; %MEIA VIDA EM ANOS

%Cm242->Pu238->U234->Th230->Ra226 CADEIA 5 - SERIE ARTIFICIAL
handles.MeiaVidaCm242 = 4.4603e-1; %MEIA VIDA EM ANOS
handles.MeiaVidaPu238 = 87.7; %MEIA VIDA EM ANOS
handles.MeiaVidaU234 = 245.5e+3; %MEIA VIDA EM ANOS
handles.MeiaVidaTh230 = 75.38e+3; %MEIA VIDA EM ANOS
handles.MeiaVidaRa226 = 1.6e+06; %MEIA VIDA EM ANOS


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MainDecaimentoComposto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MainDecaimentoComposto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in MenuSeries.
function MenuSeries_Callback(hObject, eventdata, handles)
% hObject    handle to MenuSeries (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MenuSeries contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MenuSeries

%ESCOLHA DE ISÓTOPO
handles.ValSwitch = get(handles.MenuSeries,'Value');
guidata(hObject, handles);
zero = 0;

switch handles.ValSwitch
    
    case 1  %Cm244->Pu240->U236 CADEIA 1-SERIE DO TORIO
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('SerieTorio.jpg');
        
        set(handles.QtddCm244,'String',zero);
        set(handles.QtddPu240,'String',zero);
        set(handles.QtddU236,'String',zero);
        set(handles.QtddPu242,'String','');
        set(handles.QtddU238,'String','');
        set(handles.QtddAm243,'String','');
        set(handles.QtddPu239,'String','');
        set(handles.QtddU235,'String','');
        set(handles.QtddPu241,'String','');
        set(handles.QtddAm241,'String','');
        set(handles.QtddNp237,'String','');
        set(handles.QtddCm242,'String','');
        set(handles.QtddPu238,'String','');
        set(handles.QtddU234,'String','');
        set(handles.QtddTh230,'String','');
        set(handles.QtddRa226,'String','');
        
    case 2  %Pu242->%U238 CADEIA 2 - SERIE DO URANIO
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('SerieUranio.jpg');
        
        set(handles.QtddCm244,'String','');
        set(handles.QtddPu240,'String','');
        set(handles.QtddU236,'String','');
        set(handles.QtddPu242,'String',zero);
        set(handles.QtddU238,'String',zero);
        set(handles.QtddAm243,'String','');
        set(handles.QtddPu239,'String','');
        set(handles.QtddU235,'String','');
        set(handles.QtddPu241,'String','');
        set(handles.QtddAm241,'String','');
        set(handles.QtddNp237,'String','');
        set(handles.QtddCm242,'String','');
        set(handles.QtddPu238,'String','');
        set(handles.QtddU234,'String','');
        set(handles.QtddTh230,'String','');
        set(handles.QtddRa226,'String','');
        
    case 3  %Am243->Np239->Pu239->U235 CADEIA 3 - SERIE DO ACTINIO
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('SerieActinio.jpg');
        
        set(handles.QtddCm244,'String','');
        set(handles.QtddPu240,'String','');
        set(handles.QtddU236,'String','');
        set(handles.QtddPu242,'String','');
        set(handles.QtddU238,'String','');
        set(handles.QtddAm243,'String',zero);
        set(handles.QtddPu239,'String',zero);
        set(handles.QtddU235,'String',zero);
        set(handles.QtddPu241,'String','');
        set(handles.QtddAm241,'String','');
        set(handles.QtddNp237,'String','');
        set(handles.QtddCm242,'String','');
        set(handles.QtddPu238,'String','');
        set(handles.QtddU234,'String','');
        set(handles.QtddTh230,'String','');
        set(handles.QtddRa226,'String','');
         
    case 4  %Pu241->Am241->Np237 CADEIA 4 - SERIE DO NEPTUNIO
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('SerieNeptunio.jpg');
        
        set(handles.QtddCm244,'String','');
        set(handles.QtddPu240,'String','');
        set(handles.QtddU236,'String','');
        set(handles.QtddPu242,'String','');
        set(handles.QtddU238,'String','');
        set(handles.QtddAm243,'String','');
        set(handles.QtddPu239,'String','');
        set(handles.QtddU235,'String','');
        set(handles.QtddPu241,'String',zero);
        set(handles.QtddAm241,'String',zero);
        set(handles.QtddNp237,'String',zero);
        set(handles.QtddCm242,'String','');
        set(handles.QtddPu238,'String','');
        set(handles.QtddU234,'String','');
        set(handles.QtddTh230,'String','');
        set(handles.QtddRa226,'String','');
      
    case 5 %Cm242->Pu238->U234->Th230->Ra226 CADEIA 5 - SERIE ARTIFICIAL
        set(handles.FigInfo, 'Visible', 'on');
        axes(handles.FigInfo);
        imshow('SerieArtificial.jpg');
        
        set(handles.QtddCm244,'String','');
        set(handles.QtddPu240,'String','');
        set(handles.QtddU236,'String','');
        set(handles.QtddPu242,'String','');
        set(handles.QtddU238,'String','');
        set(handles.QtddAm243,'String','');
        set(handles.QtddPu239,'String','');
        set(handles.QtddU235,'String','');
        set(handles.QtddPu241,'String','');
        set(handles.QtddAm241,'String','');
        set(handles.QtddNp237,'String','');
        set(handles.QtddCm242,'String',zero);
        set(handles.QtddPu238,'String',zero);
        set(handles.QtddU234,'String',zero);
        set(handles.QtddTh230,'String',zero);
        set(handles.QtddRa226,'String',zero);
end

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function MenuSeries_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MenuSeries (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


function QtddCm244_Callback(hObject, eventdata, handles)
% hObject    handle to QtddCm244 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddCm244 as text
%        str2double(get(hObject,'String')) returns contents of QtddCm244 as a double


% --- Executes during object creation, after setting all properties.
function QtddCm244_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddCm244 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddPu240_Callback(hObject, eventdata, handles)
% hObject    handle to QtddPu240 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddPu240 as text
%        str2double(get(hObject,'String')) returns contents of QtddPu240 as a double


% --- Executes during object creation, after setting all properties.
function QtddPu240_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddPu240 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddU236_Callback(hObject, eventdata, handles)
% hObject    handle to QtddU236 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddU236 as text
%        str2double(get(hObject,'String')) returns contents of QtddU236 as a double


% --- Executes during object creation, after setting all properties.
function QtddU236_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddU236 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddPu242_Callback(hObject, eventdata, handles)
% hObject    handle to QtddPu242 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddPu242 as text
%        str2double(get(hObject,'String')) returns contents of QtddPu242 as a double


% --- Executes during object creation, after setting all properties.
function QtddPu242_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddPu242 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddU238_Callback(hObject, eventdata, handles)
% hObject    handle to QtddU238 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddU238 as text
%        str2double(get(hObject,'String')) returns contents of QtddU238 as a double


% --- Executes during object creation, after setting all properties.
function QtddU238_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddU238 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function QtddAm243_Callback(hObject, eventdata, handles)
% hObject    handle to QtddAm243 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddAm243 as text
%        str2double(get(hObject,'String')) returns contents of QtddAm243 as a double


% --- Executes during object creation, after setting all properties.
function QtddAm243_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddAm243 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function QtddPu239_Callback(hObject, eventdata, handles)
% hObject    handle to QtddPu239 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddPu239 as text
%        str2double(get(hObject,'String')) returns contents of QtddPu239 as a double


% --- Executes during object creation, after setting all properties.
function QtddPu239_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddPu239 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddU235_Callback(hObject, eventdata, handles)
% hObject    handle to QtddU235 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddU235 as text
%        str2double(get(hObject,'String')) returns contents of QtddU235 as a double


% --- Executes during object creation, after setting all properties.
function QtddU235_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddU235 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function QtddPu241_Callback(hObject, eventdata, handles)
% hObject    handle to QtddPu241 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddPu241 as text
%        str2double(get(hObject,'String')) returns contents of QtddPu241 as a double


% --- Executes during object creation, after setting all properties.
function QtddPu241_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddPu241 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddAm241_Callback(hObject, eventdata, handles)
% hObject    handle to QtddAm241 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddAm241 as text
%        str2double(get(hObject,'String')) returns contents of QtddAm241 as a double


% --- Executes during object creation, after setting all properties.
function QtddAm241_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddAm241 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddNp237_Callback(hObject, eventdata, handles)
% hObject    handle to QtddNp237 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddNp237 as text
%        str2double(get(hObject,'String')) returns contents of QtddNp237 as a double


% --- Executes during object creation, after setting all properties.
function QtddNp237_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddNp237 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function QtddCm242_Callback(hObject, eventdata, handles)
% hObject    handle to QtddCm242 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddCm242 as text
%        str2double(get(hObject,'String')) returns contents of QtddCm242 as a double


% --- Executes during object creation, after setting all properties.
function QtddCm242_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddCm242 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddPu238_Callback(hObject, eventdata, handles)
% hObject    handle to QtddPu238 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddPu238 as text
%        str2double(get(hObject,'String')) returns contents of QtddPu238 as a double


% --- Executes during object creation, after setting all properties.
function QtddPu238_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddPu238 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddU234_Callback(hObject, eventdata, handles)
% hObject    handle to QtddU234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddU234 as text
%        str2double(get(hObject,'String')) returns contents of QtddU234 as a double


% --- Executes during object creation, after setting all properties.
function QtddU234_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddU234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QtddTh230_Callback(hObject, eventdata, handles)
% hObject    handle to QtddTh230 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddTh230 as text
%        str2double(get(hObject,'String')) returns contents of QtddTh230 as a double


% --- Executes during object creation, after setting all properties.
function QtddTh230_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddTh230 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function QtddRa226_Callback(hObject, eventdata, handles)
% hObject    handle to QtddRa226 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtddRa226 as text
%        str2double(get(hObject,'String')) returns contents of QtddRa226 as a double


% --- Executes during object creation, after setting all properties.
function QtddRa226_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtddRa226 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%----------------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------------


% --- Executes on button press in GeraGraficoMassaTempo.
function GeraGraficoMassaTempo_Callback(hObject, eventdata, handles)
% hObject    handle to GeraGraficoMassaTempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

warning off;

%INICIALIZAÇÃO DE VARIAVEIS

TF = str2double(get(handles.TempoDesejado,'String'));
PT = str2double(get(handles.PassoDeTempo,'String'));


%Cm244->Pu240->U236 CADEIA 1-SERIE DO TORIO

if (handles.ValSwitch == 1)
    VetNCm244 = zeros((TF/PT)+1,1);
    VetNPu240 = zeros((TF/PT)+1,1);
    VetNU236 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);

    VetNCm244(1) = str2double(get(handles.QtddCm244,'String'));
    VetNPu240(1) = str2double(get(handles.QtddPu240,'String'));
    VetNU236(1) = str2double(get(handles.QtddU236,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaCm244)*VetNCm244(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaPu240)*VetNPu240(i+1))+((log(2)/handles.MeiaVidaCm244)*VetNCm244(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaU236)*VetNU236(i+1))+((log(2)/handles.MeiaVidaPu240)*VetNPu240(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaU236)*(VetNU236(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K12))));
    
        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaU236)*(VetNU236(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K22))));
        
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+K32*PT))+((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaU236)*(VetNU236(i+1)+K33*PT))+((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+K32*PT)));
        
        %CALCULO DO V(I+1)
        VetNCm244(i+2) = VetNCm244(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNPu240(i+2) = VetNPu240(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNU236(i+2) = VetNU236(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
    
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetACm244 = (log(2)/handles.MeiaVidaCm244)*VetNCm244;
    VetAPu240 = (log(2)/handles.MeiaVidaPu240)*VetNPu240;
    VetAU236 = (log(2)/handles.MeiaVidaU236)*VetNU236;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetNCm244,'g',VetTime, VetNPu240,'b',VetTime,VetNU236,'r');
    title('Massa (g) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Massa(g)');
    legend('Cm244','Pu240','U236');
    
    %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String',VetNCm244(end));
    set(handles.QtddNFPu240,'String',VetNPu240(end));
    set(handles.QtddNFU236,'String',VetNU236(end));
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String',VetACm244(1));
    set(handles.QtddAIPu240,'String',VetAPu240(1));
    set(handles.QtddAIU236,'String',VetAU236(1));
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String',VetACm244(end));
    set(handles.QtddAFPu240,'String',VetAPu240(end));
    set(handles.QtddAFU236,'String',VetAU236(end));
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
end

%Pu242->%U238 CADEIA 2 - SERIE DO URANIO
if (handles.ValSwitch == 2)
    
    VetNPu242 = zeros((TF/PT)+1,1);
    VetNU238 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);


    VetNPu242(1) = str2double(get(handles.QtddPu242,'String'));
    VetNU238(1) = str2double(get(handles.QtddU238,'String'));
    VetTimeN(1) = 0;

     for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaPu242)*VetNPu242(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaU238)*VetNU238(i+1))+((log(2)/handles.MeiaVidaPu242)*VetNPu242(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaU238)*(VetNU238(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K11))));
    
        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaU238)*(VetNU238(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K21))));
        
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaU238)*(VetNU238(i+1)+K32*PT))+((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+K31*PT)));
        
        %CALCULO DO V(I+1)
        VetNPu242(i+2) = VetNPu242(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNU238(i+2) = VetNU238(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
    
        VetTime(i+2)= VetTime(i+1)+PT;
     end
     
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetAPu242 = (log(2)/handles.MeiaVidaPu242)*VetNPu242;
    VetAU238 = (log(2)/handles.MeiaVidaU238)*VetNU238;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetNPu242,'r',VetTime, VetNU238,'b');
    title('Massa (g) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Massa(g)');
    legend('Pu242','U238');
    
      %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String',VetNPu242(end));
    set(handles.QtddNFU238,'String',VetNU238(end));
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String',VetAPu242(1));
    set(handles.QtddAIU238,'String',VetAU238(1));
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String',VetAPu242(end));
    set(handles.QtddAFU238,'String',VetAU238(end));
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
end
    
    
%Am243->Pu239->U235 CADEIA 3 - SERIE DO ACTINIO
if (handles.ValSwitch == 3)
    
    VetNAm243 = zeros((TF/PT)+1,1);
    VetNPu239 = zeros((TF/PT)+1,1);
    VetNU235 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);

    VetNAm243(1) = str2double(get(handles.QtddAm243,'String'));
    VetNPu239(1) = str2double(get(handles.QtddPu239,'String'));
    VetNU235(1) = str2double(get(handles.QtddU235,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaAm243)*VetNAm243(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaPu239)*VetNPu239(i+1))+((log(2)/handles.MeiaVidaAm243)*VetNAm243(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaU235)*VetNU235(i+1))+((log(2)/handles.MeiaVidaPu239)*VetNPu239(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaU235)*(VetNU235(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K12))));

        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaU235)*(VetNU235(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K22))));
            
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+K32*PT))+((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaU235)*(VetNU235(i+1)+K33*PT))+((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+K32*PT)));
        
        %CALCULO DO V(I+1)
        VetNAm243(i+2) = VetNAm243(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNPu239(i+2) = VetNPu239(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNU235(i+2) = VetNU235(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
    
    
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetAAm243 = (log(2)/handles.MeiaVidaAm243)*VetNAm243;
    VetAPu239 = (log(2)/handles.MeiaVidaPu239)*VetNPu239;
    VetAU235 = (log(2)/handles.MeiaVidaU235)*VetNU235;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetNAm243,'g',VetTime, VetNPu239,'b',VetTime,VetNU235,'r');
    title('Massa (g) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Massa(g)');
    legend('Am243','Pu239','U235');
    
     %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String',VetNAm243(end));
    set(handles.QtddNFPu239,'String',VetNPu239(end));
    set(handles.QtddNFU235,'String',VetNU235(end));
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String',VetAAm243(1));
    set(handles.QtddAIPu239,'String',VetAPu239(1));
    set(handles.QtddAIU235,'String',VetAU235(1));
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String',VetAAm243(end));
    set(handles.QtddAFPu239,'String',VetAPu239(end));
    set(handles.QtddAFU235,'String',VetAU235(end));
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
    
end
    

%Pu241->Am241->Np237 CADEIA 4 - SERIE DO NEPTUNIO
if (handles.ValSwitch == 4)  
    
    VetNPu241 = zeros((TF/PT)+1,1);
    VetNAm241 = zeros((TF/PT)+1,1);
    VetNNp237 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);

    VetNPu241(1) = str2double(get(handles.QtddPu241,'String'));
    VetNAm241(1) = str2double(get(handles.QtddAm241,'String'));
    VetNNp237(1) = str2double(get(handles.QtddNp237,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaPu241)*VetNPu241(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaAm241)*VetNAm241(i+1))+((log(2)/handles.MeiaVidaPu241)*VetNPu241(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaNp237)*VetNNp237(i+1))+((log(2)/handles.MeiaVidaAm241)*VetNAm241(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaNp237)*(VetNNp237(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K12))));

        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaNp237)*(VetNNp237(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K22))));
            
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+K32*PT))+((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaNp237)*(VetNNp237(i+1)+K33*PT))+((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+K32*PT)));
        
        %CALCULO DO V(I+1)
        VetNPu241(i+2) = VetNPu241(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNAm241(i+2) = VetNAm241(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNNp237(i+2) = VetNNp237(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
       
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetAPu241 = (log(2)/handles.MeiaVidaPu241)*VetNPu241;
    VetAAm241 = (log(2)/handles.MeiaVidaAm241)*VetNAm241;
    VetANp237 = (log(2)/handles.MeiaVidaNp237)*VetNNp237;
    
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetNPu241,'g',VetTime, VetNAm241,'b',VetTime,VetNNp237,'r');
    title('Massa (g) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Massa(g)');
    legend('Pu241','Am241','Np237');
    
    %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String',VetNPu241(end));
    set(handles.QtddNFAm241,'String',VetNAm241(end));
    set(handles.QtddNFNp237,'String',VetNNp237(end));
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String',VetAPu241(1));
    set(handles.QtddAIAm241,'String',VetAAm241(1));
    set(handles.QtddAINp237,'String',VetANp237(1));
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String',VetAPu241(end));
    set(handles.QtddAFAm241,'String',VetAAm241(end));
    set(handles.QtddAFNp237,'String',VetANp237(end));
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
    
end

%Cm242->Pu238->U234->Th230->Ra226 CADEIA 5 - SERIE ARTIFICIAL
if (handles.ValSwitch == 5)
    
    VetNCm242 = zeros((TF/PT)+1,1);
    VetNPu238 = zeros((TF/PT)+1,1);
    VetNU234 = zeros((TF/PT)+1,1);
    VetNTh230 = zeros((TF/PT)+1,1);
    VetNRa226 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);    

    VetNCm242(1) = str2double(get(handles.QtddCm242,'String'));
    VetNPu238(1) = str2double(get(handles.QtddPu238,'String'));
    VetNU234(1) = str2double(get(handles.QtddU234,'String'));
    VetNTh230(1) = str2double(get(handles.QtddTh230,'String'));
    VetNRa226(1) = str2double(get(handles.QtddRa226,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaCm242)*VetNCm242(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaPu238)*VetNPu238(i+1))+((log(2)/handles.MeiaVidaCm242)*VetNCm242(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaU234)*VetNU234(i+1))+((log(2)/handles.MeiaVidaPu238)*VetNPu238(i+1)));
        K14 = (-((log(2)/handles.MeiaVidaTh230)*VetNTh230(i+1))+((log(2)/handles.MeiaVidaU234)*VetNU234(i+1)));
        K15 = (-((log(2)/handles.MeiaVidaRa226)*VetNRa226(i+1))+((log(2)/handles.MeiaVidaTh230)*VetNTh230(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K12))));
        K24 = (-((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K14)))+((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K13))));
        K25 = (-((log(2)/handles.MeiaVidaRa226)*(VetNRa226(i+1)+((PT/2)*K15)))+((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K14))));

        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K22))));
        K34 = (-((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K24)))+((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K23))));
        K35 = (-((log(2)/handles.MeiaVidaRa226)*(VetNRa226(i+1)+((PT/2)*K25)))+((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K24))));
            
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+K32*PT))+((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+K33*PT))+((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+K32*PT)));
        K44 = (-((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+K34*PT))+((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+K33*PT)));
        K45 = (-((log(2)/handles.MeiaVidaRa226)*(VetNRa226(i+1)+K35*PT))+((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+K34*PT)));
        
        %CALCULO DO V(I+1)
        VetNCm242(i+2) = VetNCm242(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNPu238(i+2) = VetNPu238(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNU234(i+2) = VetNU234(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
        VetNTh230(i+2) = VetNTh230(i+1)+((PT/6)*(K14+(2*K24)+(2*K34)+K44));
        VetNRa226(i+2) = VetNRa226(i+1)+((PT/6)*(K15+(2*K25)+(2*K35)+K45));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
       
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetACm242 = (log(2)/handles.MeiaVidaCm242)*VetNCm242;
    VetAPu238 = (log(2)/handles.MeiaVidaPu238)*VetNPu238;
    VetAU234 = (log(2)/handles.MeiaVidaU234)*VetNU234;
    VetATh230 = (log(2)/handles.MeiaVidaTh230)*VetNTh230;
    VetARa226 = (log(2)/handles.MeiaVidaRa226)*VetNRa226;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetNCm242,'g',VetTime, VetNPu238,'b',VetTime,VetNU234,'r',VetTime,VetNTh230,'k',VetTime,VetNRa226,'m');
    title('Massa (g) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Massa(g)');
    legend('Cm242','Pu238','U234','Th230','Ra226');
    
    %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String',VetNCm242(end));
    set(handles.QtddNFPu238,'String',VetNPu238(end));
    set(handles.QtddNFU234,'String',VetNU234(end));
    set(handles.QtddNFTh230,'String',VetNTh230(end));
    set(handles.QtddNFRa226,'String',VetNRa226(end));
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String',VetACm242(1));
    set(handles.QtddAIPu238,'String',VetAPu238(1));
    set(handles.QtddAIU234,'String',VetAU234(1));
    set(handles.QtddAITh230,'String',VetATh230(1));
    set(handles.QtddAIRa226,'String',VetARa226(1));

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String',VetACm242(end));
    set(handles.QtddAFPu238,'String',VetAPu238(end));
    set(handles.QtddAFU234,'String',VetAU234(end));
    set(handles.QtddAFTh230,'String',VetATh230(end));
    set(handles.QtddAFRa226,'String',VetARa226(end));
    
end

%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------
% --- Executes on button press in GeraGraficoAtividadeTempo.
function GeraGraficoAtividadeTempo_Callback(hObject, eventdata, handles)
% hObject    handle to GeraGraficoAtividadeTempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

warning off;

%INICIALIZAÇÃO DE VARIAVEIS

TF = str2double(get(handles.TempoDesejado,'String'));
PT = str2double(get(handles.PassoDeTempo,'String'));


%Cm244->Pu240->U236 CADEIA 1-SERIE DO TORIO

if (handles.ValSwitch == 1)
    VetNCm244 = zeros((TF/PT)+1,1);
    VetNPu240 = zeros((TF/PT)+1,1);
    VetNU236 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);

    VetNCm244(1) = str2double(get(handles.QtddCm244,'String'));
    VetNPu240(1) = str2double(get(handles.QtddPu240,'String'));
    VetNU236(1) = str2double(get(handles.QtddU236,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaCm244)*VetNCm244(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaPu240)*VetNPu240(i+1))+((log(2)/handles.MeiaVidaCm244)*VetNCm244(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaU236)*VetNU236(i+1))+((log(2)/handles.MeiaVidaPu240)*VetNPu240(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaU236)*(VetNU236(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K12))));
    
        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaU236)*(VetNU236(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+((PT/2)*K22))));
        
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+K32*PT))+((log(2)/handles.MeiaVidaCm244)*(VetNCm244(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaU236)*(VetNU236(i+1)+K33*PT))+((log(2)/handles.MeiaVidaPu240)*(VetNPu240(i+1)+K32*PT)));
        
        %CALCULO DO V(I+1)
        VetNCm244(i+2) = VetNCm244(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNPu240(i+2) = VetNPu240(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNU236(i+2) = VetNU236(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
    
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetACm244 = (log(2)/handles.MeiaVidaCm244)*VetNCm244;
    VetAPu240 = (log(2)/handles.MeiaVidaPu240)*VetNPu240;
    VetAU236 = (log(2)/handles.MeiaVidaU236)*VetNU236;
 
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetACm244,'g',VetTime, VetAPu240,'b',VetTime,VetAU236,'r');
    title('Atividade (Bequerel) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Atividade(Bequerel)');
    legend('Cm244','Pu240','U236');
    
    %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String',VetNCm244(end));
    set(handles.QtddNFPu240,'String',VetNPu240(end));
    set(handles.QtddNFU236,'String',VetNU236(end));
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String',VetACm244(1));
    set(handles.QtddAIPu240,'String',VetAPu240(1));
    set(handles.QtddAIU236,'String',VetAU236(1));
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String',VetACm244(end));
    set(handles.QtddAFPu240,'String',VetAPu240(end));
    set(handles.QtddAFU236,'String',VetAU236(end));
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
    
end

%Pu242->%U238 CADEIA 2 - SERIE DO URANIO
if (handles.ValSwitch == 2)
    
    VetNPu242 = zeros((TF/PT)+1,1);
    VetNU238 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);


    VetNPu242(1) = str2double(get(handles.QtddPu242,'String'));
    VetNU238(1) = str2double(get(handles.QtddU238,'String'));
    VetTimeN(1) = 0;

     for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaPu242)*VetNPu242(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaU238)*VetNU238(i+1))+((log(2)/handles.MeiaVidaPu242)*VetNPu242(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaU238)*(VetNU238(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K11))));
    
        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaU238)*(VetNU238(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+((PT/2)*K21))));
        
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaU238)*(VetNU238(i+1)+K32*PT))+((log(2)/handles.MeiaVidaPu242)*(VetNPu242(i+1)+K31*PT)));
        
        %CALCULO DO V(I+1)
        VetNPu242(i+2) = VetNPu242(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNU238(i+2) = VetNU238(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
    
        VetTime(i+2)= VetTime(i+1)+PT;
     end
    
    
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetAPu242 = (log(2)/handles.MeiaVidaPu242)*VetNPu242;
    VetAU238 = (log(2)/handles.MeiaVidaU238)*VetNU238;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetAPu242,'r',VetTime, VetAU238,'b');
    title('Atividade (Bequerel) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Atividade(Bequerel)');
    legend('Pu242','U238');
    
     %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String',VetNPu242(end));
    set(handles.QtddNFU238,'String',VetNU238(end));
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String',VetAPu242(1));
    set(handles.QtddAIU238,'String',VetAU238(1));
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String',VetAPu242(end));
    set(handles.QtddAFU238,'String',VetAU238(end));
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
end
    
    
%Am243->Pu239->U235 CADEIA 3 - SERIE DO ACTINIO
if (handles.ValSwitch == 3)
    
    VetNAm243 = zeros((TF/PT)+1,1);
    VetNPu239 = zeros((TF/PT)+1,1);
    VetNU235 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);

    VetNAm243(1) = str2double(get(handles.QtddAm243,'String'));
    VetNPu239(1) = str2double(get(handles.QtddPu239,'String'));
    VetNU235(1) = str2double(get(handles.QtddU235,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaAm243)*VetNAm243(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaPu239)*VetNPu239(i+1))+((log(2)/handles.MeiaVidaAm243)*VetNAm243(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaU235)*VetNU235(i+1))+((log(2)/handles.MeiaVidaPu239)*VetNPu239(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaU235)*(VetNU235(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K12))));

        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaU235)*(VetNU235(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+((PT/2)*K22))));
            
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+K32*PT))+((log(2)/handles.MeiaVidaAm243)*(VetNAm243(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaU235)*(VetNU235(i+1)+K33*PT))+((log(2)/handles.MeiaVidaPu239)*(VetNPu239(i+1)+K32*PT)));
        
        %CALCULO DO V(I+1)
        VetNAm243(i+2) = VetNAm243(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNPu239(i+2) = VetNPu239(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNU235(i+2) = VetNU235(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
    
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetAAm243 = (log(2)/handles.MeiaVidaAm243)*VetNAm243;
    VetAPu239 = (log(2)/handles.MeiaVidaPu239)*VetNPu239;
    VetAU235 = (log(2)/handles.MeiaVidaU235)*VetNU235;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetAAm243,'g',VetTime, VetAPu239,'b',VetTime,VetAU235,'r');
    title('Atividade (Bequerel) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Atividade(Bequerel)');
    legend('Am243','Pu239','U235');
    
       %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String',VetNAm243(end));
    set(handles.QtddNFPu239,'String',VetNPu239(end));
    set(handles.QtddNFU235,'String',VetNU235(end));
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String',VetAAm243(1));
    set(handles.QtddAIPu239,'String',VetAPu239(1));
    set(handles.QtddAIU235,'String',VetAU235(1));
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String',VetAAm243(end));
    set(handles.QtddAFPu239,'String',VetAPu239(end));
    set(handles.QtddAFU235,'String',VetAU235(end));
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
end
    

%Pu241->Am241->Np237 CADEIA 4 - SERIE DO NEPTUNIO
if (handles.ValSwitch == 4)  
    
    VetNPu241 = zeros((TF/PT)+1,1);
    VetNAm241 = zeros((TF/PT)+1,1);
    VetNNp237 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);

    VetNPu241(1) = str2double(get(handles.QtddPu241,'String'));
    VetNAm241(1) = str2double(get(handles.QtddAm241,'String'));
    VetNNp237(1) = str2double(get(handles.QtddNp237,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaPu241)*VetNPu241(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaAm241)*VetNAm241(i+1))+((log(2)/handles.MeiaVidaPu241)*VetNPu241(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaNp237)*VetNNp237(i+1))+((log(2)/handles.MeiaVidaAm241)*VetNAm241(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaNp237)*(VetNNp237(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K12))));

        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaNp237)*(VetNNp237(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+((PT/2)*K22))));
            
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+K32*PT))+((log(2)/handles.MeiaVidaPu241)*(VetNPu241(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaNp237)*(VetNNp237(i+1)+K33*PT))+((log(2)/handles.MeiaVidaAm241)*(VetNAm241(i+1)+K32*PT)));
        
        %CALCULO DO V(I+1)
        VetNPu241(i+2) = VetNPu241(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNAm241(i+2) = VetNAm241(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNNp237(i+2) = VetNNp237(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
      
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetAPu241 = (log(2)/handles.MeiaVidaPu241)*VetNPu241;
    VetAAm241 = (log(2)/handles.MeiaVidaAm241)*VetNAm241;
    VetANp237 = (log(2)/handles.MeiaVidaNp237)*VetNNp237;
    
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetAPu241,'g',VetTime, VetAAm241,'b',VetTime,VetANp237,'r');
    title('Atividade (Bequerel) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Atividade(Bequerel)');
    legend('Pu241','Am241','Np237');
    
    %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String',VetNPu241(end));
    set(handles.QtddNFAm241,'String',VetNAm241(end));
    set(handles.QtddNFNp237,'String',VetNNp237(end));
    set(handles.QtddNFCm242,'String','Massa Final');
    set(handles.QtddNFPu238,'String','Massa Final');
    set(handles.QtddNFU234,'String','Massa Final');
    set(handles.QtddNFTh230,'String','Massa Final');
    set(handles.QtddNFRa226,'String','Massa Final');
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String',VetAPu241(1));
    set(handles.QtddAIAm241,'String',VetAAm241(1));
    set(handles.QtddAINp237,'String',VetANp237(1));
    set(handles.QtddAICm242,'String','Atividade Inicial');
    set(handles.QtddAIPu238,'String','Atividade Inicial');
    set(handles.QtddAIU234,'String','Atividade Inicial');
    set(handles.QtddAITh230,'String','Atividade Inicial');
    set(handles.QtddAIRa226,'String','Atividade Inicial');

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String',VetAPu241(end));
    set(handles.QtddAFAm241,'String',VetAAm241(end));
    set(handles.QtddAFNp237,'String',VetANp237(end));
    set(handles.QtddAFCm242,'String','Atividade Final');
    set(handles.QtddAFPu238,'String','Atividade Final');
    set(handles.QtddAFU234,'String','Atividade Final');
    set(handles.QtddAFTh230,'String','Atividade Final');
    set(handles.QtddAFRa226,'String','Atividade Final');
    
end

%Cm242->Pu238->U234->Th230->Ra226 CADEIA 5 - SERIE ARTIFICIAL
if (handles.ValSwitch == 5)
    
    VetNCm242 = zeros((TF/PT)+1,1);
    VetNPu238 = zeros((TF/PT)+1,1);
    VetNU234 = zeros((TF/PT)+1,1);
    VetNTh230 = zeros((TF/PT)+1,1);
    VetNRa226 = zeros((TF/PT)+1,1);
    VetTime = zeros((TF/PT)+1,1);    

    VetNCm242(1) = str2double(get(handles.QtddCm242,'String'));
    VetNPu238(1) = str2double(get(handles.QtddPu238,'String'));
    VetNU234(1) = str2double(get(handles.QtddU234,'String'));
    VetNTh230(1) = str2double(get(handles.QtddTh230,'String'));
    VetNRa226(1) = str2double(get(handles.QtddRa226,'String'));
    VetTimeN(1) = 0;
    
    for i=0:1:((TF/PT)-1) %RUNGE-KUTTA DE QUARTA ORDEM
    
        %CALCULO K1
        K11 = (-((log(2)/handles.MeiaVidaCm242)*VetNCm242(i+1)));
        K12 = (-((log(2)/handles.MeiaVidaPu238)*VetNPu238(i+1))+((log(2)/handles.MeiaVidaCm242)*VetNCm242(i+1)));
        K13 = (-((log(2)/handles.MeiaVidaU234)*VetNU234(i+1))+((log(2)/handles.MeiaVidaPu238)*VetNPu238(i+1)));
        K14 = (-((log(2)/handles.MeiaVidaTh230)*VetNTh230(i+1))+((log(2)/handles.MeiaVidaU234)*VetNU234(i+1)));
        K15 = (-((log(2)/handles.MeiaVidaRa226)*VetNRa226(i+1))+((log(2)/handles.MeiaVidaTh230)*VetNTh230(i+1)));
    
        %CALCULO K2
        K21 = (-((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K11))));
        K22 = (-((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K12)))+((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K11))));
        K23 = (-((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K13)))+((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K12))));
        K24 = (-((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K14)))+((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K13))));
        K25 = (-((log(2)/handles.MeiaVidaRa226)*(VetNRa226(i+1)+((PT/2)*K15)))+((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K14))));

        %CALCULO K3
        K31 = (-((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K21))));
        K32 = (-((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K22)))+((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+((PT/2)*K21))));
        K33 = (-((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K23)))+((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+((PT/2)*K22))));
        K34 = (-((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K24)))+((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+((PT/2)*K23))));
        K35 = (-((log(2)/handles.MeiaVidaRa226)*(VetNRa226(i+1)+((PT/2)*K25)))+((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+((PT/2)*K24))));
            
        %CALCULO K4
        K41 = (-((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+K31*PT)));
        K42 = (-((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+K32*PT))+((log(2)/handles.MeiaVidaCm242)*(VetNCm242(i+1)+K31*PT)));
        K43 = (-((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+K33*PT))+((log(2)/handles.MeiaVidaPu238)*(VetNPu238(i+1)+K32*PT)));
        K44 = (-((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+K34*PT))+((log(2)/handles.MeiaVidaU234)*(VetNU234(i+1)+K33*PT)));
        K45 = (-((log(2)/handles.MeiaVidaRa226)*(VetNRa226(i+1)+K35*PT))+((log(2)/handles.MeiaVidaTh230)*(VetNTh230(i+1)+K34*PT)));
        
        %CALCULO DO V(I+1)
        VetNCm242(i+2) = VetNCm242(i+1)+((PT/6)*(K11+(2*K21)+(2*K31)+K41));
        VetNPu238(i+2) = VetNPu238(i+1)+((PT/6)*(K12+(2*K22)+(2*K32)+K42));
        VetNU234(i+2) = VetNU234(i+1)+((PT/6)*(K13+(2*K23)+(2*K33)+K43));
        VetNTh230(i+2) = VetNTh230(i+1)+((PT/6)*(K14+(2*K24)+(2*K34)+K44));
        VetNRa226(i+2) = VetNRa226(i+1)+((PT/6)*(K15+(2*K25)+(2*K35)+K45));
    
    
        VetTime(i+2)= VetTime(i+1)+PT;
    end
      
    %TRANFORMANDO VETOR MASSA EM VETOR ATIVIDADE
    VetACm242 = (log(2)/handles.MeiaVidaCm242)*VetNCm242;
    VetAPu238 = (log(2)/handles.MeiaVidaPu238)*VetNPu238;
    VetAU234 = (log(2)/handles.MeiaVidaU234)*VetNU234;
    VetATh230 = (log(2)/handles.MeiaVidaTh230)*VetNTh230;
    VetARa226 = (log(2)/handles.MeiaVidaRa226)*VetNRa226;
    
    %PLOTANDO GRAFICO MASSA X TEMPO
    axes(handles.FigInfo);
    plot(VetTime,VetACm242,'g',VetTime, VetAPu238,'b',VetTime,VetAU234,'r',VetTime,VetATh230,'k',VetTime,VetARa226,'m');
    title('Atividade (Bequerel) x Tempo(anos)');
    xlabel('Tempo(anos)');
    ylabel('Atividade(Bequerel)');
    legend('Cm242','Pu238','U234','Th230','Ra226');
    
     %MOSTRANDO VALORES INICIAL/FINAL DE ATIVIDADE E FINAL DE MASSA
    %MASSA FINAL
    set(handles.QtddNFCm244,'String','Massa Final');
    set(handles.QtddNFPu240,'String','Massa Final');
    set(handles.QtddNFU236,'String','Massa Final');
    set(handles.QtddNFPu242,'String','Massa Final');
    set(handles.QtddNFU238,'String','Massa Final');
    set(handles.QtddNFAm243,'String','Massa Final');
    set(handles.QtddNFPu239,'String','Massa Final');
    set(handles.QtddNFU235,'String','Massa Final');
    set(handles.QtddNFPu241,'String','Massa Final');
    set(handles.QtddNFAm241,'String','Massa Final');
    set(handles.QtddNFNp237,'String','Massa Final');
    set(handles.QtddNFCm242,'String',VetNCm242(end));
    set(handles.QtddNFPu238,'String',VetNPu238(end));
    set(handles.QtddNFU234,'String',VetNU234(end));
    set(handles.QtddNFTh230,'String',VetNTh230(end));
    set(handles.QtddNFRa226,'String',VetNRa226(end));
    
    %ATIVIDADE INICIAL
    set(handles.QtddAICm244,'String','Atividade Inicial');
    set(handles.QtddAIPu240,'String','Atividade Inicial');
    set(handles.QtddAIU236,'String','Atividade Inicial');
    set(handles.QtddAIPu242,'String','Atividade Inicial');
    set(handles.QtddAIU238,'String','Atividade Inicial');
    set(handles.QtddAIAm243,'String','Atividade Inicial');
    set(handles.QtddAIPu239,'String','Atividade Inicial');
    set(handles.QtddAIU235,'String','Atividade Inicial');
    set(handles.QtddAIPu241,'String','Atividade Inicial');
    set(handles.QtddAIAm241,'String','Atividade Inicial');
    set(handles.QtddAINp237,'String','Atividade Inicial');
    set(handles.QtddAICm242,'String',VetACm242(1));
    set(handles.QtddAIPu238,'String',VetAPu238(1));
    set(handles.QtddAIU234,'String',VetAU234(1));
    set(handles.QtddAITh230,'String',VetATh230(1));
    set(handles.QtddAIRa226,'String',VetARa226(1));

    %ATIVIDADE FINAL
    set(handles.QtddAFCm244,'String','Atividade Final');
    set(handles.QtddAFPu240,'String','Atividade Final');
    set(handles.QtddAFU236,'String','Atividade Final');
    set(handles.QtddAFPu242,'String','Atividade Final');
    set(handles.QtddAFU238,'String','Atividade Final');
    set(handles.QtddAFAm243,'String','Atividade Final');
    set(handles.QtddAFPu239,'String','Atividade Final');
    set(handles.QtddAFU235,'String','Atividade Final');
    set(handles.QtddAFPu241,'String','Atividade Final');
    set(handles.QtddAFAm241,'String','Atividade Final');
    set(handles.QtddAFNp237,'String','Atividade Final');
    set(handles.QtddAFCm242,'String',VetACm242(end));
    set(handles.QtddAFPu238,'String',VetAPu238(end));
    set(handles.QtddAFU234,'String',VetAU234(end));
    set(handles.QtddAFTh230,'String',VetATh230(end));
    set(handles.QtddAFRa226,'String',VetARa226(end));
    
end
