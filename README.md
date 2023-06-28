# Why can't I save properties?

I have a custom `SpriteWrapper` scene. It inherits from `Node` and has a `Sprite2D` child node. With getters and setters, I am able to pretend that `SpriteWrapper` has a texture property by magically updating its `Sprite2D` in the background:

![Scene tree and script for SpriteWrapper](https://i.ibb.co/9GWNMVB/Screenshot-2023-06-28-153740.png)

Now I want to use a `SpriteWrapper` in another scene, so I drag it into the scene tree and set its texture:

![SpriteWrapper seems to work as intended in the editor](https://i.ibb.co/NnfY6zX/Screenshot-2023-06-28-154314.png)

But when the `ExampleScene` is saved, closed, and reopened, the texture is gone:

![yup its gone](https://i.ibb.co/rvg3mKb/Untitled-2023-06-27-2108.png)

The texture *is* being saved in the `.tscn` file, but it just isn't getting loaded correctly:

![Texture is correctly serialized](https://i.ibb.co/bdV9GXD/Untitled-2023-06-28-1549.png)

Checking the `SpriteWrapper`'s texture property on ready confirms that there's "nothing there":

![SpriteWrapper texture is just Object#null](https://i.ibb.co/rsTJTFk/Untitled-2023-06-28-1551.png)

Is there something further I need to do to tell Godot that the value of an exported variable needs to be saved with the overall scene tree?