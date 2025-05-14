# Unofficial TWRP device tree for Oculus Go (Pacific)

### Device Image (Image taken from Lifewire website)
<img src="https://www.lifewire.com/thmb/ffYWXkZPwbwzQumv2JsdGgyXAkg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/_hero_4060322-Oculus-Go-3-25f82cf5b2594668b3633d50d035dd9f.jpg">

## What's working?
* So far almost everything.

## Not working?
* As far as I know, the only thing that isn't working is Boot Control HAL, but I am unsure as to if that is really needed, let alone if it'll even work in the grand scheme of things (mainly because I dunno how to make it work lol). If someone knows how to add Boot Control HAL and is willing to help me set that up, please let me know!

## Note:
Since the device doesn't feature a touchscreen, you will have to use an OTG cable with a mouse and keyboard to navigate and type. I just confirmed about 10 minutes before making. this edit to the readme, that OTG support is in fact working thankfully. Also I will be uploading some partially updated source code later on-

# Special thanks!!
* PizzaG for telling me that encryption wasn't working, helping me get the partitions mounted properly; A/B partitions showing up properly as well, and helping with init files
* Alijoshua for helping me start off the port in the beginning, and trying to help with A/B partitions as well.
* Everyone else who gave me help and support!
