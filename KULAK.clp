; Allegro sub-drawing file
; Created by Allegro PCB Design GXL (legacy); version= 16.6 P004

_clp_lay_drw = axlDesignType(nil)
_clp_sym = nil
_clp_pbuf  = nil
_clp_cinfo = make_clp_coord_info()
_clp_cinfo->f_rotation = 0.0
_clp_cinfo->l_origin = '(0.0 0.0)
_clp_text_orient = make_axlTextOrientation()
_clp_pin_text = make_axlPinText()
_clp_cinfo->t_from_units = "mils"
_clp_cinfo->t_to_units = car(axlDBGetDesignUnits())
_clp_cinfo->snapToObject = nil
_clp_group_info = make_clp_group_info()
_clp_cinfo->group_info = _clp_group_info
_clp_accuracy =1
_clpCheckAccuracy(_clp_accuracy _clp_cinfo->t_from_units	 	_clp_cinfo->t_to_units)
(putprop _clp_cinfo (list (_clpAdjustPt -82:-124 _clp_cinfo)	
	(_clpAdjustPt -1:135 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(-338.0 -496.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

_clp_dbid = _clpDBCreateLine( list(_clpAdjustPt(-6:59 _clp_cinfo) _clpAdjustPt(-6:-48 _clp_cinfo) ) _clpMKSConvert(10.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units) "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 10 percent completed")
newline()

_clp_dbid = _clpDBCreateLine( list(_clpAdjustPt(-77:130 _clp_cinfo) _clpAdjustPt(-6:59 _clp_cinfo) ) _clpMKSConvert(10.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units) "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 20 percent completed")
newline()

_clp_dbid = _clpDBCreateLine( list(_clpAdjustPt(-6:-48 _clp_cinfo) _clpAdjustPt(-77:-119 _clp_cinfo) ) _clpMKSConvert(10.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units) "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 30 percent completed")
newline()

printf(" 100 percent completed")
newline()

if(_clpPinText then axlMsgPut(list("Text pasted without CLIP_DRAWING property." _clpAxlMsg.classWarn))
_clpDisplayMessage())
axlFlushDisplay()
