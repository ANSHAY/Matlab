function varargout = surfnmesh(varargin)
% SURFNMESH MATLAB code for surfnmesh.fig
%      SURFNMESH, by itself, creates a new SURFNMESH or raises the existing
%      singleton*.
%
%      H = SURFNMESH returns the handle to a new SURFNMESH or the handle to
%      the existing singleton*.
%
%      SURFNMESH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SURFNMESH.M with the given input arguments.
%
%      SURFNMESH('Property','Value',...) creates a new SURFNMESH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before surfnmesh_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to surfnmesh_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help surfnmesh

% Last Modified by GUIDE v2.5 17-Jul-2014 15:30:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @surfnmesh_OpeningFcn, ...
                   'gui_OutputFcn',  @surfnmesh_OutputFcn, ...
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


% --- Executes just before surfnmesh is made visible.
function surfnmesh_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to surfnmesh (see VARARGIN)

% Choose default command line output for surfnmesh
handles.output = hObject;
contour(peaks);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes surfnmesh wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = surfnmesh_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

button = get(hObject,'Value');
if button==1
    surf(peaks);
else
    contour(peaks);
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button = get(hObject,'Value');
if button==1
    mesh(peaks);
else
    contour(peaks);
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


