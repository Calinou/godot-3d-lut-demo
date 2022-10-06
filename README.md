# Godot 3D LUT example

This project includes code for generating 3D look-up-tables for color correction.
Example output files are included in the `generated/` folder.

If you are copying neutral LUTs for use in your projects, make sure to also
copy the associated `.import` file to get the import type to be set up
correctly immediately. This allows using the LUT without having to restart
the editor.

> **Note**
>
> 3D LUT color correction is only supported in Godot 4, not Godot 3.x.
> Godot 3.x is limited to 1D LUT color correction, which doesn't allow adjusting
> each channel's output individually (red/green/blue).

## License

Copyright © 2022 Hugo Locurcio and contributors

Unless otherwise specified, files in this repository are licensed under the
MIT license. See [LICENSE.md](LICENSE.md) for more information.
