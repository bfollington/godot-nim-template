# Copyright 2017 Xored Software, Inc.

import godot
import godotapi / [scene_tree, resource_loader, packed_scene,
                   global_constants, node, spatial]

gdobj Spin of Spatial:
  method ready*() =
    print("hello spin")

  method process*(delta: float64) =
    var axis = Vector3(x: 0.1, y: 0.1, z: 0.1)
    axis.normalize()

    rotate(self, axis, 0.1)
