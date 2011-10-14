TTT.Game = SC.Object.extend({
  row_labels: ['?', 'A', 'B', 'C', 'D', 'E' ],
  column_labels: ['?','1', '2', '3', '4', '5'],
  column: function(position){
     column_index = position % this.get('dimension');
     if ( column_index === 0){
        return this.get('dimension')
     }else{
       return column_index;
    }
  },
  labels: function(position) {
    label_array = ['??']
    for( position = 1; position <= (this.get('dimension') * this.get('dimension')); position++){

      row = Math.ceil( position / this.get('dimension') );
      column = this.column(position);
      label_array[position] = "" + this.get('row_labels')[row] +  this.get('column_labels')[column]  ;
    }
    //return label_array;
     return [ '?','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25'];
  }.property('dimension', 'row_labels', 'column_labels')
});

