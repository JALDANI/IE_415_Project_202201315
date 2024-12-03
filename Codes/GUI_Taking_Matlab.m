function varargout = RR_GUI(varargin)
% RR_GUI MATLAB code for RR_GUI.fig
%      RR_GUI, by itself, creates a new RR_GUI or raises the existing
%      singleton*.
%
%      H = RR_GUI returns the handle to a new RR_GUI or the handle to
%      the existing singleton*.
%
%      RR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RR_GUI.M with the given input arguments.
%
%      RR_GUI('Property','Value',...) creates a new RR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RR_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RR_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RR_GUI




gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RR_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @RR_GUI_OutputFcn, ...
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


% --- Executes just before RR_GUI is made visible.
function RR_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for RR_GUI
handles.output = hObject;

% Initialize default values for x and y
handles.xValue = 0;
handles.yValue = 0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RR_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RR_GUI_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in simulateBtn.
function simulateBtn_Callback(hObject, eventdata, handles)
% Retrieve the X and Y values from edit fields
x = handles.xValue;
y = handles.yValue;

% Simulate with the retrieved values
disp(['Simulating with X: ', num2str(x), ' and Y: ', num2str(y)]);
% Here you can add a function to actually simulate or plot based on x and y


% --- Executes on input change for xEdit (X coordinate).
function xEdit_Callback(hObject, eventdata, handles)
% Get the value from the xEdit text box
x = str2double(get(hObject, 'String'));

% Store the value in the handles structure
handles.xValue = x;

% Update the handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function xEdit_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on input change for yEdit (Y coordinate).
function yEdit_Callback(hObject, eventdata, handles)
% Get the value from the yEdit text box
y = str2double(get(hObject, 'String'));

% Store the value in the handles structure
handles.yValue = y;

% Update the handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function yEdit_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
