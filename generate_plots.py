import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# 1. Mission Profile Plot
Time = [0, 2, 5, 240, 245, 250]
Power = [4500, 3000, 900, 900, 2500, 4000]

plt.figure(figsize=(8, 5))
plt.step(Time, Power, where='post', linewidth=2, color='#1f77b4')
plt.xlabel('Time (min)', fontsize=12)
plt.ylabel('Power (W)', fontsize=12)
plt.title('Mission Power Profile', fontsize=14, fontweight='bold')
plt.grid(True, linestyle='--', alpha=0.7)
plt.fill_between(Time, Power, step='post', alpha=0.2, color='#1f77b4')
plt.tight_layout()
plt.savefig('MissionProfile.png', dpi=300)
plt.close()

# 2. Performance Plot
V = np.linspace(5, 35, 100)
rho = 1.225
S = 1.19
W = 22 * 9.81
AR = 7.5625
e = 0.85
CD0 = 0.03

CL = W / (0.5 * rho * V**2 * S)
k = 1 / (np.pi * AR * e)
CD = CD0 + k * CL**2
Drag = 0.5 * rho * V**2 * S * CD
P_req = Drag * V

plt.figure(figsize=(8, 5))
plt.plot(V, P_req, linewidth=2.5, color='#d62728')
plt.xlabel('Velocity (m/s)', fontsize=12)
plt.ylabel('Power Required (W)', fontsize=12)
plt.title('Power Required vs. Velocity', fontsize=14, fontweight='bold')
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.savefig('PowerRequired.png', dpi=300)
plt.close()

# 3. CSV Report
data = [
    ["MTOW (kg)", 22.0],
    ["Wing Area (m2)", 1.19],
    ["Wing Loading (N/m2)", 181.36],
    ["Cruise CL", 0.914],
    ["Cruise CD", 0.071],
    ["Cruise Power (W)", 402.08],
    ["Hover Power (W)", 1609.61],
    ["Battery Capacity (Ah)", 36.22],
    ["Endurance (hr)", 2.0],
    ["Static Margin (%)", 20.0]
]

df = pd.DataFrame(data, columns=["Parameter", "Value"])
df.to_csv("UAV_Summary.csv", index=False)

print("Visuals and CSV generated successfully.")
