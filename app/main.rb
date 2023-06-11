def tick args
  tile_x ||= 16
  tile_y ||= 368
  tile_w ||= 32
  tile_h ||= 32
  starting_tick ||= 0
  num_of_frames ||= 4
  frame_duration ||= 10
  loop_animation ||= true
  frame_index = starting_tick.frame_index num_of_frames, frame_duration, loop_animation
  args.outputs.sprites << {
    x: 576, 
    y: 280, 
    h: 4 * tile_h,
    w: 4 * tile_w,
    tile_x: tile_x + (frame_index * tile_w),
    tile_y: tile_y,
    tile_w: tile_w,
    tile_h: tile_h,
    path: 'sprites/DungeonTileSet/sprite_sheet.png'
  }
end
