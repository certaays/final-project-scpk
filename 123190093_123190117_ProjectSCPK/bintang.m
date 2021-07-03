function varargout = bintang(varargin)
% BINTANG MATLAB code for bintang.fig
%      BINTANG, by itself, creates a new BINTANG or raises the existing
%      singleton*.
%
%      H = BINTANG returns the handle to a new BINTANG or the handle to
%      the existing singleton*.
%
%      BINTANG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BINTANG.M with the given input arguments.
%
%      BINTANG('Property','Value',...) creates a new BINTANG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bintang_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bintang_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bintang

% Last Modified by GUIDE v2.5 19-Jun-2021 14:47:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bintang_OpeningFcn, ...
                   'gui_OutputFcn',  @bintang_OutputFcn, ...
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


% --- Executes just before bintang is made visible.
function bintang_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bintang (see VARARGIN)

% Choose default command line output for bintang
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bintang wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bintang_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%tombol show data - menampilkan dataset pada tabel
opts = detectImportOptions('stars.csv');
opts.SelectedVariableNames = (1:6);
data = readmatrix('stars.csv', opts);
set(handles.uitable1,'data',data);


function suhu_Callback(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of suhu as text
%        str2double(get(hObject,'String')) returns contents of suhu as a double


% --- Executes during object creation, after setting all properties.
function suhu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function luminositas_Callback(hObject, eventdata, handles)
% hObject    handle to luminositas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of luminositas as text
%        str2double(get(hObject,'String')) returns contents of luminositas as a double


% --- Executes during object creation, after setting all properties.
function luminositas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to luminositas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radius_Callback(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radius as text
%        str2double(get(hObject,'String')) returns contents of radius as a double


% --- Executes during object creation, after setting all properties.
function radius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mutlak_Callback(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radius as text
%        str2double(get(hObject,'String')) returns contents of radius as a double


% --- Executes during object creation, after setting all properties.
function mutlak_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function warna_Callback(hObject, eventdata, handles)
% hObject    handle to mutlak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mutlak as text
%        str2double(get(hObject,'String')) returns contents of mutlak as a double


% --- Executes during object creation, after setting all properties.
function warna_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mutlak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function spektral_Callback(hObject, eventdata, handles)
% hObject    handle to spektral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of spektral as text
%        str2double(get(hObject,'String')) returns contents of spektral as a double


% --- Executes during object creation, after setting all properties.
function spektral_CreateFcn(hObject, eventdata, handles)
% hObject    handle to spektral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

suhu = str2double(get(handles.suhu,'string'));
luminositas = str2double(get(handles.luminositas,'string'));
radius = str2double(get(handles.radius,'string'));
mutlak = str2double(get(handles.mutlak,'string'));

warna = get(handles.warna,'value');
if (warna == 2)
    color = 1;
elseif (warna == 3)
    color = 2;
elseif (warna == 4)
    color = 3;
elseif (warna == 5)
    color = 4;
elseif (warna == 6)
    color = 5;
elseif (warna == 7)
    color = 6;
elseif (warna == 8)
    color = 7;
elseif (warna == 9)
    color = 8;
elseif (warna == 10)
    color = 9;
elseif (warna == 11)
    color = 10;
elseif (warna == 12)
    color = 11;
elseif (warna == 13)
    color = 12;
elseif (warna == 14)
    color = 13;
else
    color = 0;
end

spektral = get(handles.spektral,'value');
if (spektral == 2)
    sp = 1;
elseif (spektral == 3)
    sp = 2;
elseif (spektral == 4)
    sp = 3;
elseif (spektral == 5)
    sp = 4;
elseif (spektral == 6)
    sp = 5;
elseif (spektral == 7)
    sp = 6;
else 
    sp = 0;
end

sample = [suhu luminositas radius mutlak color sp];
    
opts = detectImportOptions('stars.csv');
opts.SelectedVariableNames = (1:6);
training = readmatrix('stars.csv', opts);

opts = detectImportOptions('stars.csv');
opts.SelectedVariableNames = (7);
group = readmatrix('stars.csv', opts); 

class = fitcknn(training, group, 'NumNeighbors', 3);
klasifikasi = predict(class, sample)
if(klasifikasi == 0)
    Hasil="Red Dwarf";
elseif (klasifikasi == 1)
    Hasil="Brown Dwarf";
elseif (klasifikasi == 2)
    Hasil="White Dwarf";
elseif (klasifikasi == 3)
    Hasil="Main Sequence";
elseif (klasifikasi == 4)
    Hasil="Super Giants";
elseif(klasifikasi == 5)
    Hasil="Hyper Giants";
end
set(handles.hasil, 'string', Hasil);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.hasil, 'string', '');
set(handles.radius, 'string', '');
set(handles.luminositas, 'string', '');
set(handles.suhu, 'string', '');
set(handles.mutlak, 'string', '');
set(handles.warna, 'value', 1);
set(handles.spektral, 'value', 1);

% --- Executes on selection change in spektral.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to spektral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns spektral contents as cell array
%        contents{get(hObject,'Value')} returns selected item from spektral


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to spektral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in warna.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to warna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns warna contents as cell array
%        contents{get(hObject,'Value')} returns selected item from warna


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to warna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
