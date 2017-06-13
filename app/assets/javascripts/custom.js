$(function () {
  var ctx = document.getElementById("barChart").getContext('2d');
  ctx.canvas.height = 200;
  ctx.canvas.width = 500;
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ['Mon','Tue','Wed','Thur','Fri','Sat','Sun'],
          datasets: [{
              label: 'Number of orders per day for 7 days',
              data: [12, 13, 3, 5, 2, 18, 15],
              backgroundColor: [
                  'rgba(255, 99, 132, 0.2)',
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)',
                  'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                  'rgba(255,99,132,1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
          }]
      },
      options: {
          responsive: false,
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero: true
                  }
              }]
          }
      }
  });

  var ctx2 = document.getElementById("barChart2").getContext('2d');
  ctx2.canvas.height = 200;
  ctx2.canvas.width = 500;
  var myChart2 = new Chart(ctx2, {
    type: 'horizontalBar',
    data: {
          labels: ["Landing page", "View product", "Add to cart", "Checkout", "Help"],
          datasets: [{
              label: 'Daily struggle score per page',
              data: [60, 95, 15, 25, 10],
              backgroundColor: [
                  'rgba(255, 99, 132, 0.2)',
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)',
                  'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                  'rgba(255,99,132,1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
          }]
      },
      options: {
          responsive: false,
          scales: {
              xAxes: [{
                  ticks: {
                      beginAtZero: true
                  }
              }]
          }
      }
  });

  var ctx3 = document.getElementById("lineChart").getContext('2d');
  ctx3.canvas.height = 200;
  ctx3.canvas.width = 500;
  var myChart3 = new Chart(ctx3, {
    type: 'line',
    data: {
      labels: ['Mon','Tue','Wed','Thur','Fri','Sat','Sun'],
      datasets: [{ 
          data: [8.6,11.4,10.6,10.6,10.7,11.1,13.3],
          label: "Previous Week",
          borderColor: "#3e95cd",
          fill: false
        }, { 
          data: [28.2,35,41.1,50.2,63.5,80.9,94.7],
          label: "Current Week",
          borderColor: "#8e5ea2",
          fill: false
        }]
    }, 
    options: {
      title: {
        display: true,
        text: 'Struggle score per day (in %)'
      }
    }
  });   

  var ctx4 = document.getElementById("bubbleChart").getContext('2d');
  ctx4.canvas.height = 200;
  ctx4.canvas.width = 500;
  var myChart4 = new Chart(ctx4, {
    type: 'bubble',
    data: {
      labels: "Africa",
      datasets: [
        {
          label: ["Company"],
          backgroundColor: "blue",
          borderColor: "black",
          data: [{
            x: 0,
            y: 0,
            r: 6
          }]
        }, {
          label: ["Ikeja"],
          backgroundColor: "rgba(60,186,159,0.2)",
          borderColor: "rgba(60,186,159,1)",
          data: [{
            x: 1,
            y: 2,
            r: 6
          }]
        }, {
          label: ["Abeokuta"],
          backgroundColor: "rgba(193,46,12,0.2)",
          borderColor: "rgba(193,46,12,1)",
          data: [{
            x: 2,
            y: 6,
            r: 6
          }]
        }, {
          label: ["Sango"],
          backgroundColor: "rgba(0,0,0,0.2)",
          borderColor: "#000",
          data: [{
            x: 3,
            y: 4,
            r: 6
          }]
        }, {
          label: ["Ota"],
          backgroundColor: "rgba(255,221,50,0.2)",
          borderColor: "rgba(255,221,50,1)",
          data: [{
            x: 4,
            y: 5,
            r: 6
          }]
        }
      ]    
    },
    options: {
      title: {
        display: true,
        text: 'Order locations'
      }, scales: {
        yAxes: [{ 
          scaleLabel: {
            display: true,
            labelString: "Number of orders"
          }, 
          ticks: {
            beginAtZero: true
          }
        }],
        xAxes: [{ 
          ticks: {
            beginAtZero: true
          },
          scaleLabel: {
            display: true,
            labelString: "Number of locations"
          }
        }]
      }
    }
  });
});