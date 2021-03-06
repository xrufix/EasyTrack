#include "script_component.hpp"

if(!GVAR(active)) exitWith {};

PARAMS_3(_unit,_container,_item);

private ["_mapDisplay", "_btnConfigure", "_grpConfigure"];
_mapDisplay = DISPLAY(IDD_MAINMAP);

if(_item in TABLET_ITEMS && {GVAR(configureVisible)}) then {
    _grpConfigure = _mapDisplay displayCtrl IDC_GRP_CONFIGURECONTAINER;
    _grpConfigure ctrlShow false;
    GVAR(configureVisible) = false;
};

if(_item in TRACKER_ITEMS && {GVAR(mainControlsVisible)}) then {
    [_mapDisplay displayCtrl IDC_GRP_BFT, "hide"] call FUNC(toggleMainControl);
    (_mapDisplay displayCtrl IDC_GRP_MARKERTOOLTIP) ctrlShow false;
};