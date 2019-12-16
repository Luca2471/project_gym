require_relative('../db/sql_runner')

class Classes

  attr_reader( :id)
  attr_accesor( :name, :type )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name'].to_i if options['name']
    @time = options['time'].to_s if options['time']
  end

  def save()
    sql = "INSERT INTO classes
    (
      name,
      time
      )
      VALUES
      (
        $1, $2
        )
        RETURNINT id"
  end

  def self.all()
    sql = "SELECT * FROM  classes"
    result = SqlRunner.run( sql )
    return result.map { |hash| Classes.new( hash ) }
  end

  def self.find( id )
    sql = "SELECT * FROM  clsses
    WHERE id = $1"
    values = [id]
    result = SqlRunner.tun( sql ,values )
    return Classes.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM classes"
    SqlRunner.run( sql )
  end

  

end
