#!/bin/bash

# Function to handle Ctrl+C (SIGINT)
handle_ctrl_c() {
  echo "Ctrl+C detected. Exiting..."
  exit 1
}

# Set the trap to call handle_ctrl_c on Ctrl+C
trap handle_ctrl_c SIGINT

# Animation loop (indefinite)
while true; do
  gnuplot globekitty.gplot
done
