import Python

let np = Python.import("numpy")
let plt = Python.import("matplotlib.pyplot")

// Data for plotting
let t = np.arange(0.0, 2.0, 0.01)
let s = 1 + np.sin(2 * np.pi * t)

plt.plot(t, s)
plt.xlabel("time (s)")
plt.ylabel("voltage (mV)")
plt.title("About as simple as it gets, folks")

plt.savefig("SimplePlot.pdf")
plt.show()