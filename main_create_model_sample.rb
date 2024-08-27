# require 'voxelamming'
require_relative '../lib/voxelamming'

# Voxelammingアプリに表示されている部屋名を指定してください
room_name = "1000"
# VoxelammingManagerクラスのインスタンスを生成します
vox = Voxelamming::VoxelammingManager.new(room_name)

# ボクセルのサイズを設定します
vox.set_box_size(10)
# ボクセルの配置間隔を設定します
vox.set_build_interval(0.01)
# 座標軸を表示します
vox.set_command('axis')

# ボクセルを配置するため、位置と色を設定します
vox.change_shape('sphere')
vox.create_box(0, 0, 0, r: 1, g: 0, b: 0)
vox.create_model('Earth', x: 0, y: 2, z: 0)
vox.create_model('ToyCar', x: 0, y: 4, z: 0, pitch: 90, yaw: 0, roll: 0 , scale: 1)
vox.create_model('ToyBiplane', x: 0, y: 6, z: 0, pitch: 0, yaw: 90, roll: 0 , scale: 1)
vox.create_model('Robot', x: 0, y: 8, z: 0, pitch: 0, yaw: 0, roll: 90 , scale: 1)
vox.create_model('Skull', x: 0, y: 10, z: 0, pitch: 0, yaw: 0, roll: 90 , scale: 1)
vox.create_model('Skull', x: 0, y: 12, z: 0, pitch: 90, yaw: 0, roll: 0 , scale: 1)
vox.create_model('Skull', x: 0, y: 14, z: 0, pitch: 90, yaw: 0, roll: 90 , scale: 1)

# ボクセルデータをアプリに送信します
vox.send_data(name: "createModel")
