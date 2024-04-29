import pandas as pd

import glob

if __name__ == '__main__':
    data_path = r'dataset/sms/oral_data'
    # grid_id = {5059, 5161, 6064, 5061, 5159, 5259}
    # Initialize an empty dataframe to append daily and hourly resampled data
    minuteGridActivity = pd.DataFrame()
    hourlyGridActivity = pd.DataFrame()

    # Create a list of 62 data file names placed under directory  "./Data/" with extension .txt

    filenames = glob.glob(f"{data_path}/*.txt")

    # Set the column names for the data read
    col_list = ['gridID', 'timeInterval', 'countryCode', 'smsIn', 'smsOut', 'callIn', 'callOut', 'internet']

    # Read each tab separated file into Pandas DataFrame
    for file in filenames:
        read_data = pd.read_csv(file, sep='\t', header=None, names=col_list, parse_dates=True)

        # Convert timeInterval column which has Epoch timestamps to UTC and then convert to Milan's local timezone and save it to column startTime
        # tz_localize(None) returns local time format instead of "UTC+1:00" format
        read_data['startTime'] = pd.to_datetime(read_data.timeInterval, unit='ms', utc=True).dt.tz_convert('CET').dt.tz_localize(None)
        # read_data = read_data[read_data['gridID'].isin(grid_id)]
        # Drop timeInterval & countryCode columns
        read_data.drop(columns=['timeInterval', 'countryCode'], inplace=True)

        # Groupby gridID and startTime, startTime which is 10 min apart is resampled to daily aggregation
        read_data_minute = read_data.groupby(['gridID', pd.Grouper(key='startTime', freq='10T')]).sum()
        minuteGridActivity = pd.concat([minuteGridActivity, read_data_minute]).groupby(['gridID', 'startTime']).sum()

        # Groupby gridID and startTime, startTime which is 10 min apart is resampled to hourly aggregation
        read_data_hourly = read_data.groupby(['gridID', pd.Grouper(key='startTime', freq='H')]).sum()
        hourlyGridActivity = pd.concat([hourlyGridActivity, read_data_hourly]).groupby(['gridID', 'startTime']).sum()

    # Get Grid wise total volume of the activities over the 2months
    minute_max_grid_activity = minuteGridActivity.groupby('startTime').max()
    minute_min_grid_activity = minuteGridActivity.groupby('startTime').medium()
    minute_mean_grid_activity = minuteGridActivity.groupby('startTime').mean()

    hourly_max_grid_activity = hourlyGridActivity.groupby('startTime').max()
    hourly_min_grid_activity = hourlyGridActivity.groupby('startTime').medium()
    hourly_mean_grid_activity = hourlyGridActivity.groupby('startTime').mean()

    minute_max_grid_activity.to_csv(r'dataset/sms/minute_max_grid_activity.csv', encoding='gbk')
    minute_min_grid_activity.to_csv(r'dataset/sms/minute_min_grid_activity.csv', encoding='gbk')
    minute_mean_grid_activity.to_csv(r'dataset/sms/minute_mean_grid_activity.csv', encoding='gbk')

    hourly_max_grid_activity.to_csv(r'dataset/sms/hourly_max_grid_activity.csv', encoding='gbk')
    hourly_min_grid_activity.to_csv(r'dataset/sms/hourly_min_grid_activity.csv', encoding='gbk')
    hourly_mean_grid_activity.to_csv(r'dataset/sms/hourly_mean_grid_activity.csv', encoding='gbk')
    print('a')
