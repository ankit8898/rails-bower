@chartPlotter.controller "chartCtrl", ($scope) ->

  $scope.addPoints = ->
    seriesArray = $scope.chartConfig.series
    rndIdx = Math.floor(Math.random() * seriesArray.length)
    seriesArray[rndIdx].data = seriesArray[rndIdx].data.concat([
      1
      10
      20
    ])
    return

  $scope.addSeries = ->
    rnd = []
    i = 0

    while i < 10
      rnd.push Math.floor(Math.random() * 20) + 1
      i++
    $scope.chartConfig.series.push data: rnd
    return

  $scope.removeRandomSeries = ->
    seriesArray = $scope.chartConfig.series
    rndIdx = Math.floor(Math.random() * seriesArray.length)
    seriesArray.splice rndIdx, 1
    return

  $scope.swapChartType = ->
    if @chartConfig.options.chart.type is "line"
      @chartConfig.options.chart.type = "bar"
    else
      @chartConfig.options.chart.type = "line"
      @chartConfig.options.chart.zoomType = "x"
    return

  $scope.toggleLoading = ->
    @chartConfig.loading = not @chartConfig.loading
    return

  $scope.chartConfig =
    options:
      chart:
        type: "bar"

    series: [data: [
      10
      15
      12
      8
      7
    ]]
    title:
      text: "Hello"

    loading: false


