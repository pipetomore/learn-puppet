#Need to update to use directories instead of import declarations
import 'nodes.pp'
 # Define filebucket 'main':
    filebucket { 'main':
      server => 'ops1.agile.pragmatics.com',
      path   => false,
    }