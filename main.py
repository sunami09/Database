import pandas as pd
import os

# Current directory where the Python script and Excel files are located
current_directory = os.getcwd()

# Directory to save the .dat files
destination_directory = os.path.join(current_directory, 'DAT')

# Create the destination directory if it doesn't exist
if not os.path.exists(destination_directory):
    os.makedirs(destination_directory)

# List all files in the current directory
files = os.listdir(current_directory)

# Filter out only the Excel files
excel_files = [f for f in files if f.endswith('.xlsx')]

# Convert each Excel file to .dat
for excel_file in excel_files:
    # Read the Excel file
    df = pd.read_excel(os.path.join(current_directory, excel_file))
    
    # Convert the dataframe to a string without the header
    dat_string = df.to_csv(index=False, header=False)
    
    # Add a comma at the end of each line
    dat_string = dat_string.replace('\n', ',\n')
    
    # Convert the Excel file name to .dat format
    dat_file = os.path.splitext(excel_file)[0] + '.dat'
    
    # Save the modified string as a .dat file in the destination directory
    with open(os.path.join(destination_directory, dat_file), 'w') as f:
        f.write(dat_string)

print("Conversion completed!")
