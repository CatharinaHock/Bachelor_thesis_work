import time
import socket

print("=== Starting Python test job ===")
print(f"Running on host: {socket.gethostname()}")

# Simulate some computation
for i in range(5):
    print(f"Step {i+1}/5 ...")
    time.sleep(2)

# Create a text file
filename = "test_output.txt"
with open(filename, "w") as f:
    f.write("my_script.py made this!\n")

print(f"Wrote message to {filename}")
print("=== Job completed successfully ===")
