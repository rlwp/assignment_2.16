# Assignment 2.16
Given the Lambda function and metric filters created in the activity, use terraform to create the alarm.
Create a public github repository that has a terraform code, containing the answer to the above.
Submission is the url to your public github repository.

Explanation:
**Alarm Name:**

alarm_name specifies a meaningful name for the alarm, e.g., LambdaErrorAlarm.

**Metric and Namespace:**

The metric_name is "Errors", which corresponds to the error count for Lambda.

The namespace should be "AWS/Lambda" for Lambda-related metrics.

**Dimensions:**

dimensions include the Lambda function name (FunctionName) to target the metrics for a specific Lambda function.

**Comparison & Threshold:**

comparison_operator determines the condition, e.g., "GreaterThanOrEqualToThreshold".

threshold is the value at which the alarm is triggered, e.g., 1.

**Evaluation Periods:**

Number of periods the metric must meet the condition, e.g., evaluation_periods = 1.

**Alarm Actions:**

Specify the action to take when the alarm is triggered, e.g., sending a notification to an SNS topic.

**Dependencies:**

The depends_on block ensures that the Lambda function exists before creating the alarm.

**Things to Customize:**
Replace "YourLambdaFunctionName" with the actual Lambda function name.

Update "your-region", "your-account-id", and "your-sns-topic" in alarm_actions.

To invoke send_requests.sh, in your termainal type in './send_requests.sh'.
