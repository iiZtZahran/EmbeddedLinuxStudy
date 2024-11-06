## create new building enviroment.
source oe-init-build-env <build directory>

Sourcing operations:
1. Add new env variables.
2. Add Extra Path to PATH variable.
3. Create build directroy if not exists
4. change directry to build directory

## Layers 
- we package the needed tools like ssh,device drivers,ssh etc in `layers` 

1. **BSP Layer (Board Support Package)**:
   - Contains hardware-specific configurations, files, and drivers required to support a particular hardware platform (e.g., a specific SoC or development board).
   - Includes kernel configurations, bootloader, and hardware-specific recipes to ensure the OS can run on the target device.

2. **Dist Layer (Distribution Layer)**:
   - Defines the overall configuration for a particular distribution.
   - Contains settings and customizations for building a specific type of image, which may include particular software versions, libraries, or system configurations.
   - Often contains the `DISTRO` variable configuration to define distribution specifics like package formats, C libraries, etc.

3. **Core Layer**:
   - Contains essential and core components for the Yocto build environment.
   - Provides base recipes and configurations needed by most projects, such as commonly used libraries and tools.
   - Usually includes recipes for core utilities, libraries, and basic components like `glibc`, busybox, and init systems.

4. **GUI Layer**:
   - Provides graphical interface components for images that require a GUI.
   - Contains recipes for window managers, display servers, toolkits (e.g., GTK, Qt), and other graphical libraries.
   - Useful for projects where a user interface is needed, such as on embedded devices with screens.

5. **App Layer (Application Layer)**:
   - Contains applications and custom software that you want to include in the image.
   - Typically holds project-specific recipes for the final software or applications that will run on the target device.
   - Allows customization of the final product by adding specific applications, utilities, or features.

## Layers contain META DATA 
1. recipesxx.bb
2. classesxx.bbclass
3. configurationxx.conf

## Developer tasks 
-Configure: Distros & local.conf
-Develop: Recipes: contain instructions to build target 
-Build Images/apps

## Behind the Scenes 
-bitbake: parse recipes and cook them then load them
-bitbake: create data dictionary[hash map for the var value var name and view] produced from the `bblayers.config`
