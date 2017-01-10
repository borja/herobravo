# DB Loader
def rclases
  load_yaml('renegado/clases')
end

def rpersonajes
  rclases.values.flatten.sort
end
