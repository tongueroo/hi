@image = helper.full_image_name # includes the git sha tongueroo/hi:ufo-[sha].
@cpu = 128
@memory_reservation = 256
@environment = helper.env_file(".env")
