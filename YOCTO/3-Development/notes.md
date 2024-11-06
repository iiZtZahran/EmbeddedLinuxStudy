# 1-creating a layer 
1. ```bitbake-layers --help ```
2. ```bitbake-layers create-layer <dir> ```
3. ``` add recipe dir to bblayers.conf ``` 
4. ```bitbake-layers add-layer ../dir ```

# 2-BSP Layer 
1. search for the layer either from vendor or https://layers.openembedded.org/layerindex/branch/kirkstone/layers/
2. Choose compatible branch (kirkstone in our case) 
3. select the layer 
4. ``` git clone -b kirkstone https://git.yoctoproject.org/meta-raspberrypi  ```
5. set configurations: 1. machine=raspberrypi3-64 --> bitbake will search 
6. build the test image ``` $bitbake rpi-test-image ``` 
7. in build/tmp/deploy/imgaes we find our built image 

### 2.1 Creating raspi-image 
1. create raspi-image dir 
2. ```create-rpi-image rpi-test-image``` //from meta-raspberrypi/recipescore/images/rpi-test-image

### 2.2 Flashing raspi-image
1. sdcard-flashing /dev/sda ./sdimage-raspberrypi-202411060451-mmcblk0.direct 

# 3-SW Layer
1. go to openembedded 
2. choose branch 
3. add layer + openembedded + meta-oe 
**NOTE:**in sw layer it depends on meta-data of open_embedded

## 4-Distro Layer 

## Recipe 
-Recipe: file that contain set of instructions that need to be executed 
-Package: Binary + scripts[Add or Remove]
-Application Package Recipes: related to userspace apps 
-Kernel Package Recipes: related to kernel 

## how YOCTO bitbake the recipe 
1. Fetch the source code [ upstream ]
2. patch the code 
3. configure 

## Tools for Recipes
### Recipe Development
1. **Create a new recipe:** Yocto provides a helper script called `devtool`  for recipe development. You can use it to create a new recipe:This command adds a new recipe for the specified source.
`devtool add <source-url> <recipe-name>` 
    `recipetool create -o OUTFILE source` 

1. **Edit an existing recipe:**This command sets up a workspace where you can modify the specified recipe.
```
devtool update-recipe <recipe-name>
```
### Debugging and Analysis
1. **Show recipe dependencies:**This command generates dependency graphs in `dot`  format (task-depends.dot and pn-depends.dot), which can be visualized using tools like 
`bitbake -g <recipe-name>` 

1. **Check for build issues:**This command checks the environment of the specified recipe for `bitbake <recipe-name> -e | grep ^ERROR` 
### Clean and Rebuild
```
bitbake -c clean <recipe-name>
```
1. **Rebuild a recipe:**This command cleans the shared state (sstate) cache for the recipe and then rebuilds it.
`bitbake -c cleansstate <recipe-name>`

## Image Recipe 
-core-image-minimal.bb <--- inherit from core.image.bbclass <--- image.bbclass
-we need our image to inherit base images as well 
meta-IVI-layer
├── conf
│   ├── distro
│   │   └── IVI.conf
│   └── layer.conf
├── COPYING.MIT
├── README
├── recipes-core
│   └── images
│       └── ivi-test-image.bb
├── recipes-example
│   └── example
│       └── example_0.1.bb
└── recipes-native-cpp
    └── helloworld
        └── helloworld_1.0.bb

-The bitbake -e <bitbaked_image> command is used to print the environment variables for a specific recipe or image. This includes all the configuration settings, environment variables, and variables set during the build process. 
- `bitbake -e ivi-test-image | grep "^WORKDIR="`

## runtime view 
-inside buid/tmp/deploy/images/ivi-test-image //where our newly created image is stored 

## integrate SSH
IMAGE_INSTALL:append = " helloworld openssh" in ivi-test-image


