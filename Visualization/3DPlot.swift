import Python

let np = Python.import("numpy")
let plt = Python.import("matplotlib.pyplot")
let cm = Python.import("matplotlib.cm")
let ticker = Python.import("matplotlib.ticker")

let fig = plt.figure()
let ax = fig.gca()

var x = np.arange(-5, 5, 0.25)
var y = np.arange(-5, 5, 0.25)
// print(np.meshgrid(x, y))
let meshgrid = np.meshgrid(x, y)
(x, y) = (meshgrid[0], meshgrid[1])
let r = np.sqrt((x * x) + (y * y))
let z = np.sin(r)

// Plot the surface
