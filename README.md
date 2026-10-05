<!-- README.md -->

# Colorblind Shaders

A Minecraft shaderpack for simulating color vision deficiencies.

Colorblind Shaders provides configurable color vision deficiency simulation with adjustable strength. The transformations are based on published color science models rather than simple color filters.

## Features

* Simulation of several types of color vision deficiency
* Adjustable simulation strength from 0 to 10
* Real-time configuration through the Iris shader settings
* Lightweight post-processing effect
* Designed for use with Iris

## Supported Types

Currently supported:

| Type | Description |
| ----------------- | --------------------------------------------------------------------- |
| **Protanopia** | Reduced or absent sensitivity to long-wavelength (L) cone responses |
| **Deuteranopia** | Reduced or absent sensitivity to medium-wavelength (M) cone responses |
| **Tritanopia** | Reduced or absent sensitivity to short-wavelength (S) cone responses |

The models can be combined with different severities.

## Configuration

There is 3 parameters for every vision anomaly type:

* Protanomaly
* Deuteranomaly
* Tritanomaly

Every of theese parameters has values from **0 to 10**.

* `0` — no simulation
* `10` — maximum simulation strength

Intermediate values can be used to simulate less severe color vision deficiencies.

## Installation

1. Install [Iris Shaders](https://modrinth.com/mod/iris).
2. Download the latest release of **Colorblind Shaders** form [Modrinth](https://modrinth.com/shader/colorblindness-shaders).
3. Place the shaderpack `.zip` file into your Minecraft `shaderpacks` folder.
4. Launch Minecraft with Iris.
5. Open **Video Settings → Shader Packs**.
6. Select **Colorblind Shaders**.
7. Open the shader settings to configure the simulation.

The shaderpack does not require extracting the `.zip` file.

## Methodology

Colorblind Shaders is intended to provide a color vision deficiency simulation based on published color science and color vision research.

The transformations used by the shader are implemented as mathematical color-space transformations and interpolation models. The simulation strength is exposed as a continuous parameter rather than being limited to a single fixed transformation.

This project aims to keep the implemented models and their sources transparent so that the simulation can be reviewed, reproduced, and improved.

Detailed information about the mathematical models and their sources will be provided separately.

## Compatibility

Colorblind Shaders is developed for **Iris Shaders**.

Compatibility with other shader loaders or rendering environments is not guaranteed.

The supported Minecraft and Iris versions may vary between releases. Check the release information for the version you are using.

## Performance

The effect is implemented as a screen-space color transformation and is intended to have a low performance impact compared with graphics-heavy shader effects.

Actual performance may vary depending on hardware, Minecraft version, Iris version, and other active shader features.

## Development

The shaderpack is written primarily in GLSL and uses Iris shaderpack features for configuration.

The project structure follows the standard Minecraft shaderpack format.

For information about developing Iris shaderpacks, see the [Iris documentation](https://shaders.properties/).

## Contributing

Bug reports, testing, suggestions, and contributions are welcome.

If you find an incorrect result, visual artifact, compatibility problem, or other issue, please open an issue with:

* Minecraft version
* Iris version
* Shaderpack version
* Color vision deficiency type
* Simulation strength
* Description of the problem
* Screenshots, if applicable

## License

See [`LICENSE`](LICENSE) for the license under which this project is distributed.

## Credits

Built for Minecraft using [Iris Shaders](https://irisshaders.dev/).

The color vision deficiency models used by this project are based on published scientific sources, which will be documented alongside the corresponding implementations.

## Issues

There is some issues with `P` + `D` combining. If you know, how to fix it, or just know something about colorblindness, welcome to my [`Discord`](https://discord.gg/RfVHpFWsrZ) or [`Github Issues`](https://github.com/fruktiliyagoda/Colorblind-Shaders/issues) to share your solutions.
