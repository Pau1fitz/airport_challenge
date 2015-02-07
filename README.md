<h1>Airport Challenge

Software which tracks the movement of planes landing and taking off from an airport. There is also a weather component which impacts the planes ability to fly. The program contains the following classes and module. This software has been developed through TDD, by using rspec.

<h3>Classes
<h4>Plane

Each instance of a Plane can:
Fly. When a Plane object is created it begins in flight mode.
Land. When a plane lands, it's status changes to 'Landed' and it is stored in the Airport hangar. 
Take Off. When a plane is ready to leave the airport, weather permitting, it has the abilty to leave the hangar and take off, following which it's status is changed to "Flying".

<h4>Airport
Each instance of the Aiport class can:
Store Planes. The Airport has been initilaized with a hangar that can be used to store planes.
Communicate with the Weather module. Each instance of the Airport class can determine whether or not planes can land and take off dependent on the weather forecast. If the weather is stormy planes can neither land, nor take off.


