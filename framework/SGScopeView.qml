/*
Copyright 2014 ON Semiconductor.
All rights reserved. This software and/or documentation is licensed by ON Semiconductor under
limited terms and conditions. The terms and conditions pertaining to the software and/or documentation are available at
http://www.onsemi.com/site/pdf/ONSEMI_T&C.pdf (“ON Semiconductor Standard Terms and Conditions of Sale, Section 8 Software”).
Do not use this software and/or documentation unless you have carefully read and you agree to the limited terms and conditions.
By using this software and/or documentation, you agree to the limited terms and conditions.

GNU LESSER GENERAL PUBLIC LICENSE
Version 3, 29 June 2007
Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.
This version of the GNU Lesser General Public License incorporates
the terms and conditions of version 3 of the GNU General Public
License, supplemented by the additional permissions listed below.
0. Additional Definitions.
As used herein, "this License" refers to version 3 of the GNU Lesser
General Public License, and the "GNU GPL" refers to version 3 of the GNU
General Public License.
"The Library" refers to a covered work governed by this License,
other than an Application or a Combined Work as defined below.
An "Application" is any work that makes use of an interface provided
by the Library, but which is not otherwise based on the Library.
Defining a subclass of a class defined by the Library is deemed a mode
of using an interface provided by the Library.
A "Combined Work" is a work produced by combining or linking an
Application with the Library. The particular version of the Library
with which the Combined Work was made is also called the "Linked
Version".
The "Minimal Corresponding Source" for a Combined Work means the
Corresponding Source for the Combined Work, excluding any source code
for portions of the Combined Work that, considered in isolation, are
based on the Application, and not on the Linked Version.
The "Corresponding Application Code" for a Combined Work means the
object code and/or source code for the Application, including any data
and utility programs needed for reproducing the Combined Work from the
Application, but excluding the System Libraries of the Combined Work.
1. Exception to Section 3 of the GNU GPL.
You may convey a covered work under sections 3 and 4 of this License
without being bound by section 3 of the GNU GPL.
2. Conveying Modified Versions.
If you modify a copy of the Library, and, in your modifications, a
facility refers to a function or data to be supplied by an Application
that uses the facility (other than as an argument passed when the
facility is invoked), then you may convey a copy of the modified
version:
a) under this License, provided that you make a good faith effort to
ensure that, in the event an Application does not supply the
function or data, the facility still operates, and performs
whatever part of its purpose remains meaningful, or
b) under the GNU GPL, with none of the additional permissions of
this License applicable to that copy.
3. Object Code Incorporating Material from Library Header Files.
The object code form of an Application may incorporate material from
a header file that is part of the Library. You may convey such object
code under terms of your choice, provided that, if the incorporated
material is not limited to numerical parameters, data structure
layouts and accessors, or small macros, inline functions and templates
(ten or fewer lines in length), you do both of the following:
a) Give prominent notice with each copy of the object code that the
Library is used in it and that the Library and its use are
covered by this License.
b) Accompany the object code with a copy of the GNU GPL and this license
document.
4. Combined Works.
You may convey a Combined Work under terms of your choice that,
taken together, effectively do not restrict modification of the
portions of the Library contained in the Combined Work and reverse
engineering for debugging such modifications, if you also do each of
the following:
a) Give prominent notice with each copy of the Combined Work that
the Library is used in it and that the Library and its use are
covered by this License.
b) Accompany the Combined Work with a copy of the GNU GPL and this license
document.
c) For a Combined Work that displays copyright notices during
execution, include the copyright notice for the Library among
these notices, as well as a reference directing the user to the
copies of the GNU GPL and this license document.
d) Do one of the following:
0) Convey the Minimal Corresponding Source under the terms of this
License, and the Corresponding Application Code in a form
suitable for, and under terms that permit, the user to
recombine or relink the Application with a modified version of
the Linked Version to produce a modified Combined Work, in the
manner specified by section 6 of the GNU GPL for conveying
Corresponding Source.
1) Use a suitable shared library mechanism for linking with the
Library. A suitable mechanism is one that (a) uses at run time
a copy of the Library already present on the user's computer
system, and (b) will operate properly with a modified version
of the Library that is interface-compatible with the Linked
Version.
e) Provide Installation Information, but only if you would otherwise
be required to provide such information under section 6 of the
GNU GPL, and only to the extent that such information is
necessary to install and execute a modified version of the
Combined Work produced by recombining or relinking the
Application with a modified version of the Linked Version. (If
you use option 4d0, the Installation Information must accompany
the Minimal Corresponding Source and Corresponding Application
Code. If you use option 4d1, you must provide the Installation
Information in the manner specified by section 6 of the GNU GPL
for conveying Corresponding Source.)
5. Combined Libraries.
You may place library facilities that are a work based on the
Library side by side in a single library together with other library
facilities that are not Applications and are not covered by this
License, and convey such a combined library under terms of your
choice, if you do both of the following:
a) Accompany the combined library with a copy of the same work based
on the Library, uncombined with any other library facilities,
conveyed under the terms of this License.
b) Give prominent notice with the combined library that part of it
is a work based on the Library, and explaining where to find the
accompanying uncombined form of the same work.
6. Revised Versions of the GNU Lesser General Public License.
The Free Software Foundation may publish revised and/or new versions
of the GNU Lesser General Public License from time to time. Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.
Each version is given a distinguishing version number. If the
Library as you received it specifies that a certain numbered version
of the GNU Lesser General Public License "or any later version"
applies to it, you have the option of following the terms and
conditions either of that published version or of any later version
published by the Free Software Foundation. If the Library as you
received it does not specify a version number of the GNU Lesser
General Public License, you may choose any version of the GNU Lesser
General Public License ever published by the Free Software Foundation.
If the Library as you received it specifies that a proxy can decide
whether future versions of the GNU Lesser General Public License shall
apply, that proxy's public statement of acceptance of any version is
permanent authorization for you to choose that version for the
Library.
*/
import QtQuick 2.10
import QtCharts 2.2
import QtQuick.Controls 2.3
import tech.spyglass.ImplementationInterfaceBinding 1.0

ChartView {
    id: chartView
    animationOptions: ChartView.NoAnimation
    theme: ChartView.ChartThemeLight
    property int count:0
    property string chartType: ""
    property string chartTitle: ""
    property int portNumber:0
    property bool whenOpen: false
    property real parameterValue: 1
    property real port1Amperage: 0
    property real port2Amperage: 0
    property real  efficencyValue: 0
    property bool efficencyVisible: false
    property real minLimit: 0
    property real maxLimit: 0.50

    property int plotWidth: 0
    property int plotHeight: 0
    property int plotX: 0
    property int plotY: 0
    property int setUpperRectheight: 0
    property int setLowerRectheight: 0
    property real currentHeight: 0
    property real percentageHeight: 0
    property real overallHeight: 0
    property bool portTempRedZone: false
    property bool inputPowerRedZone: false
    property bool currentYvalueOnGraphVisibility: false
    property string warningMessageOntheGraph: warningMessage.text


    onPlotAreaChanged:  {
        plotWidth = plotArea.width;
        plotHeight = plotArea.height;
        plotX = plotArea.x;
        plotY = plotArea.y;
        setUpperRectheight =  (1 - (minLimit/axisY1.max)) * plotHeight;
        setLowerRectheight = (maxLimit/axisY1.max) * plotHeight;

    }
    onVisibleChanged: {
        if(visible){
            whenOpen = true;
        }
        else {
            whenOpen = false;
            if(count != 0) {
                (chartType === "outputVoltageCurrent")?lineSeries2.clear()&lineSeries1.clear():lineSeries1.clear();
                count = 0;
                axisX.max= 10;
            }
        }
    }


    Label
    {
        id: warningMessage
        opacity: 0.0
        text: warningMessageOntheGraph
        font.bold: true
        font.pixelSize: 22
        color: "red"
        anchors.centerIn: parent

    }

    Connections {
        target: implementationInterfaceBinding


        onPortTemperatureChanged: {
            if( chartType === "Port Temperature"&& whenOpen && portNumber == port  ) {
                parameterValue = value;
                lineSeries1.append(count/10,parameterValue);
                count++;

                if(parameterValue > axisY1.max) {
                    axisY1.max = parameterValue+1;
                }
                if(count/10 > axisX.max) {
                    axisX.max = 2*count/10;
                }

//                if(parameterValue <= currentHeight) {
//                    warningMessage.opacity = 1.0;
//                    warningMessageOntheGraph = "Temperature Too High";
//                    currentYvalueOnGraphVisibility = false;
//                }
//                else  {
//                    warningMessage.opacity = 0.0;
//                    currentYvalueOnGraphVisibility = true;
//                }

            }

        }

        onPortPowerChanged: {
            if( chartType === "Port Power"&& whenOpen  && portNumber == port ) {
                parameterValue = value;
                lineSeries1.append(count/10,parameterValue);
                count++;

                if(parameterValue > axisY1.max) {
                    axisY1.max = parameterValue+1;
                }
                if(count/10 > axisX.max) {
                    axisX.max = 2*count/10;
                }
            }
        }

        onPortOutputVoltageChanged: {
            if( chartType == "Output Voltage"&& whenOpen  && portNumber == port ) {
                parameterValue = value;
                lineSeries1.append(count/10,value);
                lineSeries1.name = "Output Voltage";
                count++;

                if(parameterValue > axisY1.max) {
                    axisY1.max = parameterValue+1;
                }
                if(count/10 > axisX.max) {
                    axisX.max = 2*count/10;
                }
            }
        }

        onPortInputPowerChanged:{
            if( chartType === "Input Power"&& whenOpen) {
                parameterValue = inputPower;
                lineSeries1.append(count/10,parameterValue);
                lineSeries1.name = "Input Power";
                count++;
                //console.log("input voltage=",inputVoltage," current=",port1Amperage+port2Amperage);

                //increase the power scale if we exceed its max Y value
                if(parameterValue > axisY1.max) {
                    axisY1.max = parameterValue+1;
                }
                if (count/10 > axisX.max){
                    axisX.max = 2*count/10;
                }


            }
        }

        onPortCurrentChanged: {
            if (port == 1)
                port1Amperage = value;
            else if (port == 2)
                port2Amperage = value;
        }
        onPortEfficencyChanged: {
            if( chartType === "Input Power"&& whenOpen  && portNumber == port ) {
                efficencyValue = output_power/input_power;

            }
        }
    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            if(!selection)
//            {
//                selection = selectionComponent.createObject(parent, {"x": plotX, "y": plotY, "width": plotWidth , "height":setUpperRectheight})
//                selection = selectionComponent2.createObject(parent, {"x": plotX, "y": plotY + plotHeight - setLowerRectheight , "width": plotWidth , "height": setLowerRectheight});
//            }
//        }
//    }

//    Component {
//        id: selectionComponent

//        Rectangle {
//            id: selComp
//            opacity: 0.2
//            visible: portTempRedZone
//            Label {
//                id: currentYvalue
//                opacity: 1.0
//                text: currentHeight.toFixed(2)
//                font.bold: true
//                font.pixelSize: 22
//                color: "red"
//                anchors.centerIn: parent
//                visible: currentYvalueOnGraphVisibility


//            }
//            border {
//                width: 2
//                color: "red"
//            }
//            color: "red"
//            property int rulersSize: 20
//            MouseArea {     // drag mouse area
//                anchors.fill: parent
//                drag{
//                    target: parent
//                    minimumX: 0
//                    minimumY: 0
//                    maximumX: parent.parent.width - parent.width
//                    maximumY: parent.parent.height - parent.height
//                    smoothed: true
//                }

//                onDoubleClicked: {
//                    parent.destroy()        // destroy component
//                }
//            }

//            Rectangle {
//                width: rulersSize
//                height: rulersSize
//                radius: rulersSize
//                x: parent.x / 2
//                y: parent.y
//                opacity: 2
//                color: "red"
//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.verticalCenter: parent.bottom

//                MouseArea {
//                    anchors.fill: parent
//                    drag{ target: parent; axis: Drag.YAxis }
//                    onMouseYChanged: {
//                        if(drag.active){
//                            selComp.height = selComp.height + mouseY;
//                            overallHeight = selComp.height/plotHeight;
//                            currentHeight = - ((axisY1.max * overallHeight) - (axisY1.max));
//                            currentYvalue.opacity = 1.0
//                            currentYvalueOnGraphVisibility = true;
//                            if(currentHeight > axisY1.max) {
//                                currentYvalue.opacity = 0.0;
//                                currentYvalueOnGraphVisibility = false;
//                                selComp.height = 0;
//                            }
//                            else if(currentHeight < axisY1.min) {
//                                selComp.height = plotHeight;
//                                currentHeight = 0.0;
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }

//    Component {
//        id: selectionComponent2
//        Rectangle {
//            id: selComp2
//            opacity: 0.2
//            visible: inputPowerRedZone
//            z:1

//            Label {
//                id: currentYvalueInInputPower
//                opacity: 1.0
//                text: currentHeight.toFixed(2)
//                font.bold: true
//                font.pixelSize: 22
//                color: "red"
//                z:2
//                anchors.centerIn: parent
//                visible: currentYvalueOnGraphVisibility
//            }

//            border {
//                width: 2
//                color: "red"
//            }
//            color: "red"
//            property int rulersSize: 20
//            MouseArea {     // drag mouse area
//                anchors.fill: parent
//                drag{
//                    target: parent
//                    minimumX: 0
//                    minimumY: 0
//                    maximumX: parent.parent.width - parent.width
//                    maximumY: parent.parent.height - parent.height
//                    smoothed: true
//                }

//                onDoubleClicked: {
//                    parent.destroy()        // destroy component
//                }
//            }

//            Rectangle {
//                id: draggableHolder
//                width: rulersSize
//                height: rulersSize
//                radius: rulersSize
//                x: parent.x/2
//                y: parent.y
//                opacity: 2
//                color: "red"
//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.verticalCenter: parent.top
//                MouseArea {
//                    anchors.fill: parent
//                    drag{ target: parent; axis: Drag.YAxis }
//                    onMouseYChanged: {
//                        if(drag.active){
//                            selComp2.height = selComp2.height - mouseY
//                            selComp2.y = selComp2.y + mouseY
//                            overallHeight = selComp2.height/plotHeight;
//                            currentHeight = (axisY1.max * overallHeight);
//                            currentYvalueInInputPower.opacity = 1.0;
//                            currentYvalueOnGraphVisibility = true;

//                            if(currentHeight > axisY1.max) {
//                                selComp2.height = plotHeight;
//                                selComp2.y = plotY;
//                                currentYvalueInInputPower.opacity = 0.0;
//                                currentYvalueOnGraphVisibility = false;
//                            }
//                            else if(currentHeight < axisY1.min) {
//                                selComp2.height = 0;
//                                selComp2.y = plotY + plotHeight;
//                                currentYvalueInInputPower.opacity = 0.0;
//                                currentYvalueOnGraphVisibility = false;

//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }

    ValueAxis {
        id: axisY1
        min: 0
        max: 1
    }

    ValueAxis {
        id: axisX
        min: 0
        max: 10
        visible: true
    }

    LineSeries {
        id: lineSeries1
        name: chartView.chartTitle
        axisX: axisX
        axisY: axisY1
    }
    LineSeries {
        id: lineSeries2
        axisX: axisX
        axisY: axisY1
        visible: false
    }
    Label {
        id: efficencyLabel
        width: 100; height: 50
        text:  "Efficency: "+ Math.round(efficencyValue,2) + "%"
        visible: efficencyVisible
        z: 2
        anchors { bottom: chartView.bottom; left: chartView.left ; bottomMargin: -10}
    }
}

