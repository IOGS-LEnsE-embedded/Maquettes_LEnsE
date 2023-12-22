Machine Vision Platform
=======================

Machine vision
--------------

**Machine vision** encompasses all industrial and non-industrial applications in which a **combination of hardware and software** provide operational guidance to devices in the execution of their functions based on the capture and processing of images.

.. figure:: ../_static/machine_vision/cognex_machine_vision_example.jpg
   :alt: Cognex Machine Vision Illustration
   :align: center
   
   Cognex Machine Vision Illustration / Crédits `Cognex <https://www.cognex.com/en-au/what-is/machine-vision/what-is-machine-vision>`_

For example, machine vision is used to inspect parts in a production chain without stopping the manufacturing flow. If defaults are detected on a part (wrong color, bad shape...), a sorting system can eject bad elements.

|

In manufacturing settings, machine vision systems required the following items:

#. **Lighting** to illuminate the scene to make the object features visible.
#. **Lens** to captures the image and delivers it to a sensor.
#. **Image sensor** to collect a digital image of the object.
#. **Computer** (or digital signal processor) to process the images and extract the required information.

|

You can find more information about machine vision on the Cognex website : https://www.cognex.com/en-au/what-is/machine-vision


Overview of the platform
------------------------

The **LEnsE** team developped a platform to reproduce a part of an **industrial system of machine vision**.

Machine Vision platform is a combination of a **conveyor** driven in movement by a **step motor**, a sorting system, a **CMOS industrial sensor** and a **lighting system**.

PICTURE OF THE SYSTEM



Materials
---------

Conveyor and sorting system
~~~~~~~~~~~~~~~~~~~~~~~~~~~

This platform is mainly based on a **Dobot conveyor** that permits to transport small pieces 

Step Motor
""""""""""

Sensors
"""""""

Three **SEN0239** infrared presence detectors could be implemented on the board.

SCHEMA ?

A digital output is at a **high level** when an object is detected close to the sensor and at a low level when no object is detected. The sensibility (i.e. the detection distance) can be set up by modifying the value of a potentiometer using a screwdriver.


CMOS Sensor
~~~~~~~~~~~



Electronic control board
~~~~~~~~~~~~~~~~~~~~~~~~

This platform is associated to an **electronic board** for controlling : the translation of the conveyor, the activation of each sorting system, the activation of the lighting system.

.. note::
	This board can be used to control 2 different step-motors.

Microcontroller
"""""""""""""""

.. figure:: ../_static/machine_vision/microcontroller_board_pinout.png
   :alt: Pinout of the microcontroller
   :align: center
   
   Pinouts of the board

Power stage and step motor driver
"""""""""""""""""""""""""""""""""

Two step-motors

La carte électronique, basée sur une plateforme Nucléo L476RG, permet de commander **2 moteurs pas à pas** indépendamment, via des drivers ***TMC2100*** (Kit TMC Silent Step Stick).

Communication
~~~~~~~~~~~~~

A **RN41/42 XV** module or a **nrF24L01** module could be implemented for radio-frequency communication. 

BlueTooth communication via RN41/42 module
""""""""""""""""""""""""""""""""""""""""""

RF communication via nrF24L01 module
""""""""""""""""""""""""""""""""""""



Lighting system
~~~~~~~~~~~~~~~







Testing the platform
--------------------



