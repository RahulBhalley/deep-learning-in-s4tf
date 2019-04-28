/*
    Author: Rahul Bhalley
    Date: 28 April 2019
    File: Oscillations.swift
*/

import Python

let np = Python.import("numpy")
let plt = Python.import("matplotlib.pyplot")

let x1 = np.linspace(0.0, 5.0)
let x2 = np.linspace(0.0, 2.0)

let y1 = np.cos(2 * np.pi * x1) * np.exp(-x1)
let y2 = np.cos(2 * np.pi * x2)

plt.subplot(2, 1, 1)
plt.plot(x1, y1, "o-")
plt.title("A tale of 2 subplots")
plt.ylabel("Damped oscillation")

plt.subplot(2, 1, 2)
plt.plot(x2, y2, ".-")
plt.xlabel("time (s)")
plt.ylabel("Undamped")

plt.savefig("Oscillations.pdf")
plt.show()