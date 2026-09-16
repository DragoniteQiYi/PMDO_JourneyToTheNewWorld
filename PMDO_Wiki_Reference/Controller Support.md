# Controller Support

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Controller_Support

PMDO supports gamepads for the major Nintendo, Playstation, and Xbox controllers. They all come with default button mappings that are best fit for their controllers, but can still be modified in the settings.

## Supporting New Controllers

Unrecognized controllers will default to Xbox-style control schemes. If the labeling is incorrect, it is possible to add support for your controller by following these steps:

Run PMDO with your controller plugged in. In the logs (found in the `LOG` subfolder), search for a debug line that mentions your controller. For example:

```
[2023/03/04 22:14:21.947] Controller 0: (8BitDo Ultimate Controller), GUID: c82d0631, Mapping: 03000000c82d00000631000000007200,*,a:b0,b:b1,x:b2,y:b3,back:b6,guide:b10,start:b7,leftstick:b8,rightstick:b9,leftshoulder:b4,rightshoulder:b5,dpup:h0.1,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,leftx:a0,lefty:a1,rightx:a2,righty:a3,lefttrigger:a4,righttrigger:a5,platform:Windows
```

Copy the GUID, and navigate to the `Controls/Label` subfolder in your PMDO installation. Create a new XML file with your guid as the name. Inside it, map each controller input to a button texture (look at the existing XMLs for reference). All possible controller inputs are specified [here](https://github.com/FNA-XNA/FNA/blob/master/src/Input/Buttons.cs#L20). All button textures are [special characters](https://wiki.pmdo.pmdcollab.org/wiki/Text_Guide%23Special_Characters "Text Guide").

Now with the inputs properly mapped to textures, it is time to map them to in-game inputs. Navigate to the `Controls/Default` subfolder in your PMDO installation and reate a new XML file with your guid as the name. Specify the default controls for this controller in the XML, as well as its name (look at the existing XMLs for reference).

Support for the controller should now be functional the next time the game is started up. These XML files can be sent to a developer to request out-of-the-box support for the controller.
