<h1>Airport Challenge

Software which tracks the movement of planes landing and taking off from an airport. There is also a weather component which impacts the planes ability to fly. The program contains the following classes and module. TDD was implemented to develop this software using rspec.

<h3>Classes
<h4>Plane

Each instance of a Plane can:
Fly. When a Plane object is created it begins in flight mode.
Land. When a plane lands, it's status changes to 'Landed' and it is stored in the Airport hangar. 
Take Off. When a plane is ready to leave the airport, weather permitting, it has the abilty to leave the hangar and take off, following which it's status is changed to "Flying".

<h4>Airport
<p>Each instance of the Aiport class can:
Store Planes. The Airport has been initilaized with a hangar that can be used to store planes.
Communicate with the Weather module. Each instance of the Airport class can determine whether or not planes can land and take off dependent on the weather forecast. If the weather is stormy planes can neither land, nor take off.

<h3>Module
<h4>Weather
<p>A weather module was created to determine if the forecast was stormy or sunny, each of which had an impact on whether planes can land or take-off.

<h4>CRC

Class Responsibility Collaborator (CRC) Modeling methodology was used to gather and define the user requirements for this object-oriented application. 

<h4>How to use
<h2>Clone the repository with

```git clone git@github.com:Pau1fitz/airport_challenge.git```

Switch to it with 

```cd airport_challenge```


