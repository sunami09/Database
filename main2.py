import pandas as pd
import os

# Current directory where the Python script and Excel files are located
current_directory = os.getcwd()

# Directory to save the CSV files
destination_directory = os.path.join(current_directory, 'CSV')

# Create the destination directory if it doesn't exist
if not os.path.exists(destination_directory):
    os.makedirs(destination_directory)

# List all files in the current directory
files = os.listdir(current_directory)

# Filter out only the Excel files
excel_files = [f for f in files if f.endswith('.xlsx')]

# Convert each Excel file to CSV
for excel_file in excel_files:
    # Read the Excel file
    df = pd.read_excel(os.path.join(current_directory, excel_file))
    
    # Convert the dataframe to a string without the header
    csv_string = df.to_csv(index=False, header=False)
    
    # Add a comma at the end of each line
    csv_string = csv_string.replace('\n', ',\n')
    
    # Convert the Excel file name to CSV format
    csv_file = os.path.splitext(excel_file)[0] + '.csv'
    
    # Save the modified string as a CSV file in the destination directory
    with open(os.path.join(destination_directory, csv_file), 'w') as f:
        f.write(csv_string)

print("Conversion completed!")
