function varargout = MenuDecaimento(varargin)
% MENUDECAIMENTO MATLAB code for MenuDecaimento.fig
%      MENUDECAIMENTO, by itself, creates a new MENUDECAIMENTO or raises the existing
%      singleton*.
%
%      H = MENUDECAIMENTO returns the handle to a new MENUDECAIMENTO or the handle to
%      the existing singleton*.
%
%      MENUDECAIMENTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENUDECAIMENTO.M with the given input arguments.
%
%      MENUDECAIMENTO('Property','Value',...) creates a new MENUDECAIMENTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MenuDecaimento_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MenuDecaimento_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MenuDecaimento

% Last Modified by GUIDE v2.5 06-Dec-2016 15:46:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MenuDecaimento_OpeningFcn, ...
                   'gui_OutputFcn',  @MenuDecaimento_OutputFcn, ...
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


% --- Executes just before MenuDecaimento is made visible.
function MenuDecaimento_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MenuDecaimento (see VARARGIN)


% posta as fotos na tela
axes(handles.Fig1);
imshow('uerj.jpg');

axes(handles.Fig2);
imshow ('iprj.jpg');


% Choose default command line output for MenuDecaimento
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MenuDecaimento wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MenuDecaimento_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in BotaoMenuDecSimples.
function BotaoMenuDecSimples_Callback(hObject, eventdata, handles)
% hObject    handle to BotaoMenuDecSimples (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MainDecaimentoSimples



% --- Executes on button press in ButaoMenuDecComposto.
function ButaoMenuDecComposto_Callback(hObject, eventdata, handles)
% hObject    handle to ButaoMenuDecComposto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MainDecaimentoComposto
