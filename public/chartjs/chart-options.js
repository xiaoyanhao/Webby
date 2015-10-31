var myGrowthOptions = {

  // Boolean - Whether grid lines are shown across the chart
  scaleShowGridLines : true,

  // String - Colour of the grid lines
  scaleGridLineColor : "rgba(0, 0, 0, 0.05)",

  // Number - Width of the grid lines
  scaleGridLineWidth : 1,

  // Boolean - Whether to show horizontal lines (except X axis)
  scaleShowHorizontalLines: true,

  // Boolean - Whether to show vertical lines (except Y axis)
  scaleShowVerticalLines: true,

  // Boolean - Whether the line is curved between points
  bezierCurve : true,

  // Number - Tension of the bezier curve between points
  bezierCurveTension : 0.4,

  // Boolean - Whether to show a dot for each point
  pointDot : true,

  // Number - Radius of each point dot in pixels
  pointDotRadius : 4,

  // Number - Pixel width of point dot stroke
  pointDotStrokeWidth : 1,

  // Number - amount extra to add to the radius to cater for hit detection outside the drawn point
  pointHitDetectionRadius : 20,

  // Boolean - Whether to show a stroke for datasets
  datasetStroke : true,

  // Number - Pixel width of dataset stroke
  datasetStrokeWidth : 2,

  // Boolean - Whether to fill the dataset with a colour
  datasetFill : true,

  // String - A legend template
  legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"

};

var myGrowthFakeDatas = {
  labels: ["10/20", "10/21", "10/22", "10/23", "10/24", "10/25", "10/26"],
  datasets: [
    {
      label: "My First dataset",
      fillColor: "rgba(220,220,220,0.2)",
      strokeColor: "rgba(220,220,220,1)",
      pointColor: "rgba(220,220,220,1)",
      pointStrokeColor: "#fff",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(220,220,220,1)",
      data: [0, 3, 6, 9, 11, 15, 18]
    }
  ]
}