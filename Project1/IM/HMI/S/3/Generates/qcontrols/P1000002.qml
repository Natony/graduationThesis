import QtQuick 2.7
import "qrc:/"
IGuiPage
{
	id: q16777218
	objId: 16777218
	x: 0
	y: 0
	width: 800
	height: 480
	IGuiQmlRectangle
	{
		id: q671088658
		objId: 671088658
		x: 7
		y: 120
		width: 205
		height: 128
		qm_BorderWidth: 2
		qm_TextColor: "#ff000000"
		qm_FillColor: "#ffffffff"
		qm_RectangleWidth: 205
		qm_RectangleHeight: 128
	}
	IGuiTrendView
	{
		id: q469762049
		objId: 469762049
		x: 216
		y: 37
		width: 582
		height: 390
		qm_BorderCornerRadius: 4
		qm_BorderWidth: 1
		qm_RectangleBorder.color:"#ff6b717b"
		qm_FillColor: "#fff7f3f7"
		qm_FocusWidth: 2
		qm_FocusColor: "#ff94b6e7"
		rulerColor: "#7b7d84"
		rulerVisibility: false
		qm_TrendXPos: 2
		qm_TrendYPos: 2
		qm_TrendWidth: 578
		qm_TrendHeight: 313
		IGuiListCtrl
		{
			id: qu469762049
			objectName: "qu469762049"
			x: 6
			y: 319
			width: 570
			height: 65
			qm_list.qm_linesPerRow: 1
			qm_list.qm_tableRowHeight: 18
			qm_list.qm_tableMarginLeft: 3
			qm_list.qm_tableMarginRight: 1
			qm_list.qm_tableMarginBottom: 1
			qm_list.qm_tableMarginTop: 1
			qm_list.qm_tableBackColor: "#ffffffff"
			qm_list.qm_tableSelectBackColor: "#ffd6dfef"
			qm_list.qm_tableAlternateBackColor: "#ffffffff"
			qm_list.qm_tableTextColor: "#ffffffff"
			qm_list.qm_tableSelectTextColor: "#ff424952"
			qm_list.qm_tableAlternateTextColor: "#ffffffff"
			qm_scrollCtrl: qus469762049

			qm_hasHeader: true
			qm_hasBorder: true
			qm_hasHorizontalScrollBar: true
			qm_hasVerticalScrollBar: true
			qm_list.qm_gridLineStyle: 0
			qm_list.qm_gridLineWidth: 1
			qm_list.qm_gridLineColor: "#ff848284"
			qm_columnTypeList: [0, 0, 0, 0]
			totalColumnWidth: 570
			qm_headerItem: qh469762049
			IGuiListHeader
			{
				id: qh469762049
				qm_listItem: qu469762049
				qm_columnWidthList: [102, 120, 162, 186]
				color: "#ff84868c"
				qm_tableHeaderTextColor: "#ffffffff"
				qm_tableHeaderValueVarTextAlignmentHorizontal: Text.AlignLeft
				qm_tableHeaderValueVarTextAlignmentVertical: Text.AlignVCenter
				qm_tableHeaderMarginLeft: 3
				qm_tableHeaderMarginRight: 1
				qm_tableHeaderMarginBottom: 1
				qm_tableHeaderMarginTop: 1
				qm_noOfColumns: 4
				qm_tableHeaderHeight: 18
				qm_leftImageID: 20
				qm_leftTileTop: 4
				qm_leftTileBottom: 15
				qm_leftTileRight: 2
				qm_leftTileLeft: 4
				qm_middleImageID: 21
				qm_middleTileTop: 2
				qm_middleTileBottom: 15
				qm_middleTileRight: 2
				qm_middleTileLeft: 2
				qm_rightImageID: 22
				qm_rightTileTop: 4
				qm_rightTileBottom: 15
				qm_rightTileRight: 4
				qm_rightTileLeft: 2
				radius: 2
			}
			IGuiScrollIndicatorCtrl
			{
				id: qus469762049

			}
			qm_UseRowSpecificColor: true
		}
	}
	IGuiTextField
	{
		id: q268435484
		objId: 268435484
		x: 333
		y: 6
		width: 186
		height: 29
		qm_Transparent : true 
		qm_TextColor: "#ff003000"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiQmlRectangle
	{
		id: q671088655
		objId: 671088655
		x: 0
		y: 442
		width: 800
		height: 38
		qm_BorderWidth: 0
		qm_TextColor: "#ff181c31"
		qm_FillColor: "#ff008284"
		qm_RectangleWidth: 800
		qm_RectangleHeight: 38
	}
	IGuiQmlRectangle
	{
		id: q671088656
		objId: 671088656
		x: 8
		y: 39
		width: 204
		height: 72
		qm_BorderWidth: 2
		qm_TextColor: "#ff000000"
		qm_FillColor: "#ffffffff"
		qm_RectangleWidth: 204
		qm_RectangleHeight: 72
	}
	IGuiTextField
	{
		id: q268435485
		objId: 268435485
		x: 31
		y: 44
		width: 154
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiSliderSwitchHorizontal
	{
		id: q352321536
		objId: 352321536
		x: 47
		y: 78
		width: 122
		height: 25
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/23#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ff636573"
		qm_TextColor: "#ffffffff"
		qm_ValueVarTextAlignmentHorizontal: Text.AlignHCenter
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 2
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
		qm_FocusWidth: 2
		qm_FocusColor: "#ff94b6e7"
		qm_SliderRectHeight: 24
		qm_SliderRectWidth: 60
		qm_SliderRectBorderCornerRadius: 3
		qm_SliderRectBorderWidth: 2
		qm_SliderRectImageID: 24
		qm_SliderRectTileTop: 12
		qm_SliderRectTileBottom: 13
		qm_SliderRectTileRight: 5
		qm_SliderRectTileLeft: 5
		qm_SliderGripBorderCornerRadius: 3
		qm_SliderGripBorderWidth: 2
		qm_SliderGripImageID: 25
		qm_SliderGripTileWidth: 8
		qm_SliderGripTileHeight: 56
		qm_SliderGripTileTop: 12
		qm_SliderGripTileBottom: 13
		qm_SliderGripTileRight: 0
		qm_SliderGripTileLeft: 0
		qm_SliderRectOffFillColor: "#ff008200"
		qm_SliderRectOnFillColor: "#ff008200"
		qm_SwichOnSide: false
		qm_SwitchOnValue: 1
	}
	IGuiLine
	{
		id: q671088657
		objId: 671088657
		qm_LineWidth: 2
		qm_BorderStyle: 0
		qm_TextColor: "#ff000000"
		qm_LineStartArrow: false
		qm_LineEndArrow: false
		qm_LineEndsShape: 0
		qm_FillColor: "#ffffffff"
		qm_FillStyle: true
	}
	IGuiTextField
	{
		id: q268435486
		objId: 268435486
		x: 68
		y: 123
		width: 79
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiRectangle
	{
		id: q671088652
		objId: 671088652
		x: 48
		y: 161
		width: 119
		height: 8
		qm_BorderWidth: 1
		qm_TextColor: "#ff181c31"
		qm_FillColor: "#ffdedbde"
		qm_BorderStyle: 0
		qm_RectangleRadiusHorizontal: 10
		qm_RectangleRadiusVertical: 10
		qm_FillStyle: false
	}
	IGuiIOField
	{
		id: q33554442
		objId: 33554442
		x: 92
		y: 211
		width: 80
		height: 30
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/32#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ffffffff"
		qm_FocusWidth: 0
		qm_FocusColor: "#00000000"
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 4
		qm_Anchors.leftMargin: 5
		qm_Anchors.rightMargin: 4
		qm_Anchors.topMargin: 4
	}
	IGuiTextField
	{
		id: q268435482
		objId: 268435482
		x: 174
		y: 213
		width: 43
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiTextField
	{
		id: q268435483
		objId: 268435483
		x: 21
		y: 213
		width: 67
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiLine
	{
		id: q671088659
		objId: 671088659
		qm_LineWidth: 2
		qm_BorderStyle: 0
		qm_TextColor: "#ff000000"
		qm_LineStartArrow: false
		qm_LineEndArrow: false
		qm_LineEndsShape: 0
		qm_FillColor: "#ffffffff"
		qm_FillStyle: true
	}
	IGuiQmlRectangle
	{
		id: q671088660
		objId: 671088660
		x: 6
		y: 256
		width: 205
		height: 116
		qm_BorderWidth: 2
		qm_TextColor: "#ff000000"
		qm_FillColor: "#ffffffff"
		qm_RectangleWidth: 205
		qm_RectangleHeight: 116
	}
	IGuiTextField
	{
		id: q268435487
		objId: 268435487
		x: 67
		y: 259
		width: 79
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiLine
	{
		id: q671088661
		objId: 671088661
		qm_LineWidth: 2
		qm_BorderStyle: 0
		qm_TextColor: "#ff000000"
		qm_LineStartArrow: false
		qm_LineEndArrow: false
		qm_LineEndsShape: 0
		qm_FillColor: "#ffffffff"
		qm_FillStyle: true
	}
	IGuiIOField
	{
		id: q33554443
		objId: 33554443
		x: 93
		y: 296
		width: 78
		height: 30
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/34#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ffffffff"
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 4
		qm_Anchors.leftMargin: 5
		qm_Anchors.rightMargin: 4
		qm_Anchors.topMargin: 4
	}
	IGuiTextField
	{
		id: q268435488
		objId: 268435488
		x: 169
		y: 300
		width: 47
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiTextField
	{
		id: q268435489
		objId: 268435489
		x: 7
		y: 300
		width: 85
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiIOField
	{
		id: q33554444
		objId: 33554444
		x: 93
		y: 333
		width: 78
		height: 30
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/34#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ffffffff"
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 4
		qm_Anchors.leftMargin: 5
		qm_Anchors.rightMargin: 4
		qm_Anchors.topMargin: 4
	}
	IGuiTextField
	{
		id: q268435490
		objId: 268435490
		x: 172
		y: 337
		width: 43
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiTextField
	{
		id: q268435491
		objId: 268435491
		x: 22
		y: 337
		width: 70
		height: 23
		qm_Transparent : true 
		qm_TextColor: "#ff31344a"
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 3
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
	}
	IGuiContainer
	{
		id: q369098752
		objId: 369098752
		x: 52
		y: 381
		width: 134
		height: 39
		IGuiTextField
		{
			id: q268435481
			objId: 268435481
			x: 86
			y: 16
			width: 48
			height: 23
			qm_Transparent : true 
			qm_TextColor: "#ff31344a"
			qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
			qm_Anchors.bottomMargin: 2
			qm_Anchors.leftMargin: 3
			qm_Anchors.rightMargin: 2
			qm_Anchors.topMargin: 2
		}
		IGuiLine
		{
			id: q671088654
			objId: 671088654
			qm_LineWidth: 6
			qm_BorderStyle: 0
			qm_TextColor: "#ff008200"
			qm_LineStartArrow: false
			qm_LineEndArrow: false
			qm_LineEndsShape: 0
			qm_FillColor: "#ffffffff"
			qm_FillStyle: true
		}
		IGuiLine
		{
			id: q671088653
			objId: 671088653
			qm_LineWidth: 6
			qm_BorderStyle: 0
			qm_TextColor: "#ffff0000"
			qm_LineStartArrow: false
			qm_LineEndArrow: false
			qm_LineEndsShape: 0
			qm_FillColor: "#ffffffff"
			qm_FillStyle: true
		}
		IGuiTextField
		{
			id: q268435480
			objId: 268435480
			x: 86
			y: 0
			width: 43
			height: 23
			qm_Transparent : true 
			qm_TextColor: "#ff31344a"
			qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
			qm_Anchors.bottomMargin: 2
			qm_Anchors.leftMargin: 3
			qm_Anchors.rightMargin: 2
			qm_Anchors.topMargin: 2
		}
	}
	IGuiSliderSwitchHorizontal
	{
		id: q352321538
		objId: 352321538
		x: 45
		y: 177
		width: 120
		height: 27
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/23#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ff636573"
		qm_TextColor: "#ff5a596b"
		qm_ValueVarTextAlignmentHorizontal: Text.AlignHCenter
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 2
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
		qm_FocusWidth: 2
		qm_FocusColor: "#ff94b6e7"
		qm_SliderRectHeight: 26
		qm_SliderRectWidth: 59
		qm_SliderRectBorderCornerRadius: 3
		qm_SliderRectBorderWidth: 2
		qm_SliderRectImageID: 24
		qm_SliderRectTileTop: 13
		qm_SliderRectTileBottom: 14
		qm_SliderRectTileRight: 5
		qm_SliderRectTileLeft: 5
		qm_SliderGripBorderCornerRadius: 3
		qm_SliderGripBorderWidth: 2
		qm_SliderGripImageID: 25
		qm_SliderGripTileWidth: 8
		qm_SliderGripTileHeight: 56
		qm_SliderGripTileTop: 13
		qm_SliderGripTileBottom: 14
		qm_SliderGripTileRight: 0
		qm_SliderGripTileLeft: 0
		qm_SliderRectOffFillColor: "#fff7f3f7"
		qm_SliderRectOnFillColor: "#fff7f3f7"
		qm_SwichOnSide: false
		qm_SwitchOnValue: 1
	}
	IGuiButton
	{
		id: q486539300
		objId: 486539300
		x: 149
		y: 445
		width: 106
		height: 34
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/33#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ffffffff"
		qm_TextColor: "#ff000000"
		qm_ValueVarTextAlignmentHorizontal: Text.AlignHCenter
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 2
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
		qm_FocusWidth: 1
		qm_FocusColor: "#ff94b6e7"
	}
	IGuiButton
	{
		id: q486539301
		objId: 486539301
		x: 536
		y: 445
		width: 106
		height: 34
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/33#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ffffffff"
		qm_TextColor: "#ff000000"
		qm_ValueVarTextAlignmentHorizontal: Text.AlignHCenter
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 2
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
		qm_FocusWidth: 1
		qm_FocusColor: "#ff94b6e7"
	}
	IGuiButton
	{
		id: q486539302
		objId: 486539302
		x: 344
		y: 445
		width: 106
		height: 34
		qm_BorderCornerRadius: 3
		qm_BorderWidth: 2
		qm_ImageSource: "image://QSmartImageProvider/33#2#4#128#0#0"
		qm_Border.top: 5
		qm_Border.bottom: 5
		qm_Border.right: 5
		qm_Border.left: 5
		qm_FillColor: "#ffffffff"
		qm_TextColor: "#ff000000"
		qm_ValueVarTextAlignmentHorizontal: Text.AlignHCenter
		qm_ValueVarTextAlignmentVertical: Text.AlignVCenter
		qm_Anchors.bottomMargin: 2
		qm_Anchors.leftMargin: 2
		qm_Anchors.rightMargin: 2
		qm_Anchors.topMargin: 2
		qm_FocusWidth: 1
		qm_FocusColor: "#ff94b6e7"
	}
}
