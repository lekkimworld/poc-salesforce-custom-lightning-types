# poc-salesforce-custom-lightning-types

Simple prototype project to test out custom lightning types for Agentforce actions. I managed to make custom lightning types work in a scratch org. Custom Lightning Types are a way to use Lightning Web Components to change the rendering of complex Apex types returned from a custom Apex action in Agentforce. Once you know how it's quite simple to make it work. Basically the way it works is that you return a custom class from your action and map that type to a custom LWC through a schema definition. For now there is no way to change the custom lightning type once deployed so get it right! Or do a new one. The devs told me that they are working on relaxing that validation post GA. The functionality goes GA with Summer 25 (AFAIK). I deployed mine to a scratch org with release="Preview"so it should be easy to try out now.

The screenshots to this post show the difference between having Agentforce do the rendering (pure text) and a custom rendering (the blue text). There is also a screenshot of the action definition where the output rendering is changed.

![Screenshot of standard text rendering of apex action output.](/images/screenshot_textrendering.jpg)
![Screenshot of custom LWC rendering of apex action output.](/images/screenshot_customrendering.jpg)
![Screenshot of mapping custom rendering of an apex action.](/images/screenshot_mapping.jpg)
