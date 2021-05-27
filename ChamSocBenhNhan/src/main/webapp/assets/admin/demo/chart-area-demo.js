// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["Jan(1)", "Feb(2)", "Mar(3)", "Apr(4)", "May(5)", "Jun(6)", "Jul(7)", "Aug(8)", "Sep(9)", "Oct(10)", "Nov(11)", "Dec(12)"],
    datasets: [{
      label: "Tổng tiền(VND)",
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.2)",
      yValueFormatString: "#,##0.0mn",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      // chiều rộng đường viền
      pointBorderWidth: 2,
      data: [$("#thang1").val(),$("#thang2").val(), $("#thang3").val(), $("#thang4").val(), $("#thang5").val(), $("#thang6").val(), $("#thang7").val(), $("#thang8").val(), $("#thang9").val(), $("#thang10").val(), $("#thang11").val(), $("#thang12").val()],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 12
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 100000000 ,
          maxTicksLimit: 1
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
