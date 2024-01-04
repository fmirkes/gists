# resize image to fixed size without stretching
convert <INPUT> -background none -resize '70x70^' -extent '75x75' -gravity 'center' <OUTPUT>

# looseless png compression
#   alternative: 'pngcrush'
oxipng -o max --strip all --alpha <INPUT>

# lossy png compression + color reduction
pngquant --speed '1' --quality=65-80 <INPUT>
