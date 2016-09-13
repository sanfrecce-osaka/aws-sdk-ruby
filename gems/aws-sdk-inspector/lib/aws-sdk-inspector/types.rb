# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Inspector
    module Types

      # @note When making an API call, pass AddAttributesToFindingsRequest
      #   data as a hash:
      #
      #       {
      #         finding_arns: ["Arn"], # required
      #         attributes: [ # required
      #           {
      #             key: "AttributeKey", # required
      #             value: "AttributeValue",
      #           },
      #         ],
      #       }
      class AddAttributesToFindingsRequest < Aws::Structure.new(
        :finding_arns,
        :attributes)

        # @!attribute [rw] finding_arns
        #   The ARNs that specify the findings that you want to assign
        #   attributes to.
        #   @return [Array<String>]

        # @!attribute [rw] attributes
        #   The array of attributes that you want to assign to specified
        #   findings.
        #   @return [Array<Types::Attribute>]

      end

      class AddAttributesToFindingsResponse < Aws::Structure.new(
        :failed_items)

        # @!attribute [rw] failed_items
        #   Attribute details that cannot be described. An error code is
        #   provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # Used in the exception error that is thrown if you start an assessment
      # run for an assessment target that includes an EC2 instance that is
      # already participating in another started assessment run.
      class AgentAlreadyRunningAssessment < Aws::Structure.new(
        :agent_id,
        :assessment_run_arn)

        # @!attribute [rw] agent_id
        #   ID of the agent that is running on an EC2 instance that is already
        #   participating in another started assessment run.
        #   @return [String]

        # @!attribute [rw] assessment_run_arn
        #   The ARN of the assessment run that has already been started.
        #   @return [String]

      end

      # Contains information about an Amazon Inspector agent. This data type
      # is used as a request parameter in the ListAssessmentRunAgents action.
      # @note When making an API call, pass AgentFilter
      #   data as a hash:
      #
      #       {
      #         agent_healths: ["HEALTHY"], # required, accepts HEALTHY, UNHEALTHY
      #         agent_health_codes: ["IDLE"], # required, accepts IDLE, RUNNING, SHUTDOWN, UNHEALTHY, THROTTLED, UNKNOWN
      #       }
      class AgentFilter < Aws::Structure.new(
        :agent_healths,
        :agent_health_codes)

        # @!attribute [rw] agent_healths
        #   The current health state of the agent. Values can be set to
        #   **HEALTHY** or **UNHEALTHY**.
        #   @return [Array<String>]

        # @!attribute [rw] agent_health_codes
        #   The detailed health state of the agent. Values can be set to
        #   **IDLE**, **RUNNING**, **SHUTDOWN**, **UNHEALTHY**, **THROTTLED**,
        #   and **UNKNOWN**.
        #   @return [Array<String>]

      end

      # Used as a response element in the PreviewAgents action.
      class AgentPreview < Aws::Structure.new(
        :agent_id,
        :auto_scaling_group)

        # @!attribute [rw] agent_id
        #   The ID of the EC2 instance where the agent is installed.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group
        #   The Auto Scaling group for the EC2 instance where the agent is
        #   installed.
        #   @return [String]

      end

      # A snapshot of an Amazon Inspector assessment run that contains the
      # findings of the assessment run .
      #
      # Used as the response element in the DescribeAssessmentRuns action.
      class AssessmentRun < Aws::Structure.new(
        :arn,
        :name,
        :assessment_template_arn,
        :state,
        :duration_in_seconds,
        :rules_package_arns,
        :user_attributes_for_findings,
        :created_at,
        :started_at,
        :completed_at,
        :state_changed_at,
        :data_collected,
        :state_changes,
        :notifications)

        # @!attribute [rw] arn
        #   The ARN of the assessment run.
        #   @return [String]

        # @!attribute [rw] name
        #   The auto-generated name for the assessment run.
        #   @return [String]

        # @!attribute [rw] assessment_template_arn
        #   The ARN of the assessment template that is associated with the
        #   assessment run.
        #   @return [String]

        # @!attribute [rw] state
        #   The state of the assessment run.
        #   @return [String]

        # @!attribute [rw] duration_in_seconds
        #   The duration of the assessment run.
        #   @return [Integer]

        # @!attribute [rw] rules_package_arns
        #   The rules packages selected for the assessment run.
        #   @return [Array<String>]

        # @!attribute [rw] user_attributes_for_findings
        #   The user-defined attributes that are assigned to every generated
        #   finding.
        #   @return [Array<Types::Attribute>]

        # @!attribute [rw] created_at
        #   The time when StartAssessmentRun was called.
        #   @return [Time]

        # @!attribute [rw] started_at
        #   The time when StartAssessmentRun was called.
        #   @return [Time]

        # @!attribute [rw] completed_at
        #   The assessment run completion time that corresponds to the rules
        #   packages evaluation completion time or failure.
        #   @return [Time]

        # @!attribute [rw] state_changed_at
        #   The last time when the assessment run\'s state changed.
        #   @return [Time]

        # @!attribute [rw] data_collected
        #   A Boolean value (true or false) that specifies whether the process
        #   of collecting data from the agents is completed.
        #   @return [Boolean]

        # @!attribute [rw] state_changes
        #   A list of the assessment run state changes.
        #   @return [Array<Types::AssessmentRunStateChange>]

        # @!attribute [rw] notifications
        #   A list of notifications for the event subscriptions. A notification
        #   about a particular generated finding is added to this list only
        #   once.
        #   @return [Array<Types::AssessmentRunNotification>]

      end

      # Contains information about an Amazon Inspector agent. This data type
      # is used as a response element in the ListAssessmentRunAgents action.
      class AssessmentRunAgent < Aws::Structure.new(
        :agent_id,
        :assessment_run_arn,
        :agent_health,
        :agent_health_code,
        :agent_health_details,
        :auto_scaling_group,
        :telemetry_metadata)

        # @!attribute [rw] agent_id
        #   The AWS account of the EC2 instance where the agent is installed.
        #   @return [String]

        # @!attribute [rw] assessment_run_arn
        #   The ARN of the assessment run that is associated with the agent.
        #   @return [String]

        # @!attribute [rw] agent_health
        #   The current health state of the agent.
        #   @return [String]

        # @!attribute [rw] agent_health_code
        #   The detailed health state of the agent.
        #   @return [String]

        # @!attribute [rw] agent_health_details
        #   The description for the agent health code.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group
        #   The Auto Scaling group of the EC2 instance that is specified by the
        #   agent ID.
        #   @return [String]

        # @!attribute [rw] telemetry_metadata
        #   The Amazon Inspector application data metrics that are collected by
        #   the agent.
        #   @return [Array<Types::TelemetryMetadata>]

      end

      # Used as the request parameter in the ListAssessmentRuns action.
      # @note When making an API call, pass AssessmentRunFilter
      #   data as a hash:
      #
      #       {
      #         name_pattern: "NamePattern",
      #         states: ["CREATED"], # accepts CREATED, START_DATA_COLLECTION_PENDING, START_DATA_COLLECTION_IN_PROGRESS, COLLECTING_DATA, STOP_DATA_COLLECTION_PENDING, DATA_COLLECTED, EVALUATING_RULES, FAILED, COMPLETED, COMPLETED_WITH_ERRORS
      #         duration_range: {
      #           min_seconds: 1,
      #           max_seconds: 1,
      #         },
      #         rules_package_arns: ["Arn"],
      #         start_time_range: {
      #           begin_date: Time.now,
      #           end_date: Time.now,
      #         },
      #         completion_time_range: {
      #           begin_date: Time.now,
      #           end_date: Time.now,
      #         },
      #         state_change_time_range: {
      #           begin_date: Time.now,
      #           end_date: Time.now,
      #         },
      #       }
      class AssessmentRunFilter < Aws::Structure.new(
        :name_pattern,
        :states,
        :duration_range,
        :rules_package_arns,
        :start_time_range,
        :completion_time_range,
        :state_change_time_range)

        # @!attribute [rw] name_pattern
        #   For a record to match a filter, an explicit value or a string
        #   containing a wildcard that is specified for this data type property
        #   must match the value of the **assessmentRunName** property of the
        #   AssessmentRun data type.
        #   @return [String]

        # @!attribute [rw] states
        #   For a record to match a filter, one of the values specified for this
        #   data type property must be the exact match of the value of the
        #   **assessmentRunState** property of the AssessmentRun data type.
        #   @return [Array<String>]

        # @!attribute [rw] duration_range
        #   For a record to match a filter, the value that is specified for this
        #   data type property must inclusively match any value between the
        #   specified minimum and maximum values of the **durationInSeconds**
        #   property of the AssessmentRun data type.
        #   @return [Types::DurationRange]

        # @!attribute [rw] rules_package_arns
        #   For a record to match a filter, the value that is specified for this
        #   data type property must be contained in the list of values of the
        #   **rulesPackages** property of the AssessmentRun data type.
        #   @return [Array<String>]

        # @!attribute [rw] start_time_range
        #   For a record to match a filter, the value that is specified for this
        #   data type property must inclusively match any value between the
        #   specified minimum and maximum values of the **startTime** property
        #   of the AssessmentRun data type.
        #   @return [Types::TimestampRange]

        # @!attribute [rw] completion_time_range
        #   For a record to match a filter, the value that is specified for this
        #   data type property must inclusively match any value between the
        #   specified minimum and maximum values of the **completedAt** property
        #   of the AssessmentRun data type.
        #   @return [Types::TimestampRange]

        # @!attribute [rw] state_change_time_range
        #   For a record to match a filter, the value that is specified for this
        #   data type property must match the **stateChangedAt** property of the
        #   AssessmentRun data type.
        #   @return [Types::TimestampRange]

      end

      # Used as one of the elements of the AssessmentRun data type.
      class AssessmentRunNotification < Aws::Structure.new(
        :date,
        :event,
        :message,
        :error,
        :sns_topic_arn,
        :sns_publish_status_code)

        # @!attribute [rw] date
        #   The date of the notification.
        #   @return [Time]

        # @!attribute [rw] event
        #   The event for which a notification is sent.
        #   @return [String]

        # @!attribute [rw] message
        #   @return [String]

        # @!attribute [rw] error
        #   The Boolean value that specifies whether the notification represents
        #   an error.
        #   @return [Boolean]

        # @!attribute [rw] sns_topic_arn
        #   The SNS topic to which the SNS notification is sent.
        #   @return [String]

        # @!attribute [rw] sns_publish_status_code
        #   The status code of the SNS notification.
        #   @return [String]

      end

      # Used as one of the elements of the AssessmentRun data type.
      class AssessmentRunStateChange < Aws::Structure.new(
        :state_changed_at,
        :state)

        # @!attribute [rw] state_changed_at
        #   The last time the assessment run state changed.
        #   @return [Time]

        # @!attribute [rw] state
        #   The assessment run state.
        #   @return [String]

      end

      # Contains information about an Amazon Inspector application. This data
      # type is used as the response element in the DescribeAssessmentTargets
      # action.
      class AssessmentTarget < Aws::Structure.new(
        :arn,
        :name,
        :resource_group_arn,
        :created_at,
        :updated_at)

        # @!attribute [rw] arn
        #   The ARN that specifies the Amazon Inspector assessment target.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the Amazon Inspector assessment target.
        #   @return [String]

        # @!attribute [rw] resource_group_arn
        #   The ARN that specifies the resource group that is associated with
        #   the assessment target.
        #   @return [String]

        # @!attribute [rw] created_at
        #   The time at which the assessment target is created.
        #   @return [Time]

        # @!attribute [rw] updated_at
        #   The time at which UpdateAssessmentTarget is called.
        #   @return [Time]

      end

      # Used as the request parameter in the ListAssessmentTargets action.
      # @note When making an API call, pass AssessmentTargetFilter
      #   data as a hash:
      #
      #       {
      #         assessment_target_name_pattern: "NamePattern",
      #       }
      class AssessmentTargetFilter < Aws::Structure.new(
        :assessment_target_name_pattern)

        # @!attribute [rw] assessment_target_name_pattern
        #   For a record to match a filter, an explicit value or a string that
        #   contains a wildcard that is specified for this data type property
        #   must match the value of the **assessmentTargetName** property of the
        #   AssessmentTarget data type.
        #   @return [String]

      end

      # Contains information about an Amazon Inspector assessment template.
      # This data type is used as the response element in the
      # DescribeAssessmentTemplates action.
      class AssessmentTemplate < Aws::Structure.new(
        :arn,
        :name,
        :assessment_target_arn,
        :duration_in_seconds,
        :rules_package_arns,
        :user_attributes_for_findings,
        :created_at)

        # @!attribute [rw] arn
        #   The ARN of the assessment template.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the assessment template.
        #   @return [String]

        # @!attribute [rw] assessment_target_arn
        #   The ARN of the assessment target that corresponds to this assessment
        #   template.
        #   @return [String]

        # @!attribute [rw] duration_in_seconds
        #   The duration in seconds specified for this assessment tempate. The
        #   default value is 3600 seconds (one hour). The maximum value is 86400
        #   seconds (one day).
        #   @return [Integer]

        # @!attribute [rw] rules_package_arns
        #   The rules packages that are specified for this assessment template.
        #   @return [Array<String>]

        # @!attribute [rw] user_attributes_for_findings
        #   The user-defined attributes that are assigned to every generated
        #   finding from the assessment run that uses this assessment template.
        #   @return [Array<Types::Attribute>]

        # @!attribute [rw] created_at
        #   The time at which the assessment template is created.
        #   @return [Time]

      end

      # Used as the request parameter in the ListAssessmentTemplates action.
      # @note When making an API call, pass AssessmentTemplateFilter
      #   data as a hash:
      #
      #       {
      #         name_pattern: "NamePattern",
      #         duration_range: {
      #           min_seconds: 1,
      #           max_seconds: 1,
      #         },
      #         rules_package_arns: ["Arn"],
      #       }
      class AssessmentTemplateFilter < Aws::Structure.new(
        :name_pattern,
        :duration_range,
        :rules_package_arns)

        # @!attribute [rw] name_pattern
        #   For a record to match a filter, an explicit value or a string that
        #   contains a wildcard that is specified for this data type property
        #   must match the value of the **assessmentTemplateName** property of
        #   the AssessmentTemplate data type.
        #   @return [String]

        # @!attribute [rw] duration_range
        #   For a record to match a filter, the value specified for this data
        #   type property must inclusively match any value between the specified
        #   minimum and maximum values of the **durationInSeconds** property of
        #   the AssessmentTemplate data type.
        #   @return [Types::DurationRange]

        # @!attribute [rw] rules_package_arns
        #   For a record to match a filter, the values that are specified for
        #   this data type property must be contained in the list of values of
        #   the **rulesPackageArns** property of the AssessmentTemplate data
        #   type.
        #   @return [Array<String>]

      end

      # A collection of attributes of the host from which the finding is
      # generated.
      class AssetAttributes < Aws::Structure.new(
        :schema_version,
        :agent_id,
        :auto_scaling_group,
        :ami_id,
        :hostname,
        :ipv4_addresses)

        # @!attribute [rw] schema_version
        #   The schema version of this data type.
        #   @return [Integer]

        # @!attribute [rw] agent_id
        #   The ID of the agent that is installed on the EC2 instance where the
        #   finding is generated.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group
        #   The Auto Scaling group of the EC2 instance where the finding is
        #   generated.
        #   @return [String]

        # @!attribute [rw] ami_id
        #   The ID of the Amazon Machine Image (AMI) that is installed on the
        #   EC2 instance where the finding is generated.
        #   @return [String]

        # @!attribute [rw] hostname
        #   The hostname of the EC2 instance where the finding is generated.
        #   @return [String]

        # @!attribute [rw] ipv4_addresses
        #   The list of IP v4 addresses of the EC2 instance where the finding is
        #   generated.
        #   @return [Array<String>]

      end

      # This data type is used as a request parameter in the
      # AddAttributesToFindings and CreateAssessmentTemplate actions.
      # @note When making an API call, pass Attribute
      #   data as a hash:
      #
      #       {
      #         key: "AttributeKey", # required
      #         value: "AttributeValue",
      #       }
      class Attribute < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The attribute key.
        #   @return [String]

        # @!attribute [rw] value
        #   The value assigned to the attribute key.
        #   @return [String]

      end

      # @note When making an API call, pass CreateAssessmentTargetRequest
      #   data as a hash:
      #
      #       {
      #         assessment_target_name: "AssessmentTargetName", # required
      #         resource_group_arn: "Arn", # required
      #       }
      class CreateAssessmentTargetRequest < Aws::Structure.new(
        :assessment_target_name,
        :resource_group_arn)

        # @!attribute [rw] assessment_target_name
        #   The user-defined name that identifies the assessment target that you
        #   want to create. The name must be unique within the AWS account.
        #   @return [String]

        # @!attribute [rw] resource_group_arn
        #   The ARN that specifies the resource group that is used to create the
        #   assessment target.
        #   @return [String]

      end

      class CreateAssessmentTargetResponse < Aws::Structure.new(
        :assessment_target_arn)

        # @!attribute [rw] assessment_target_arn
        #   The ARN that specifies the assessment target that is created.
        #   @return [String]

      end

      # @note When making an API call, pass CreateAssessmentTemplateRequest
      #   data as a hash:
      #
      #       {
      #         assessment_target_arn: "Arn", # required
      #         assessment_template_name: "AssessmentTemplateName", # required
      #         duration_in_seconds: 1, # required
      #         rules_package_arns: ["Arn"], # required
      #         user_attributes_for_findings: [
      #           {
      #             key: "AttributeKey", # required
      #             value: "AttributeValue",
      #           },
      #         ],
      #       }
      class CreateAssessmentTemplateRequest < Aws::Structure.new(
        :assessment_target_arn,
        :assessment_template_name,
        :duration_in_seconds,
        :rules_package_arns,
        :user_attributes_for_findings)

        # @!attribute [rw] assessment_target_arn
        #   The ARN that specifies the assessment target for which you want to
        #   create the assessment template.
        #   @return [String]

        # @!attribute [rw] assessment_template_name
        #   The user-defined name that identifies the assessment template that
        #   you want to create. You can create several assessment templates for
        #   an assessment target. The names of the assessment templates that
        #   correspond to a particular assessment target must be unique.
        #   @return [String]

        # @!attribute [rw] duration_in_seconds
        #   The duration of the assessment run in seconds. The default value is
        #   3600 seconds (one hour).
        #   @return [Integer]

        # @!attribute [rw] rules_package_arns
        #   The ARNs that specify the rules packages that you want to attach to
        #   the assessment template.
        #   @return [Array<String>]

        # @!attribute [rw] user_attributes_for_findings
        #   The user-defined attributes that are assigned to every finding that
        #   is generated by the assessment run that uses this assessment
        #   template.
        #   @return [Array<Types::Attribute>]

      end

      class CreateAssessmentTemplateResponse < Aws::Structure.new(
        :assessment_template_arn)

        # @!attribute [rw] assessment_template_arn
        #   The ARN that specifies the assessment template that is created.
        #   @return [String]

      end

      # @note When making an API call, pass CreateResourceGroupRequest
      #   data as a hash:
      #
      #       {
      #         resource_group_tags: [ # required
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue",
      #           },
      #         ],
      #       }
      class CreateResourceGroupRequest < Aws::Structure.new(
        :resource_group_tags)

        # @!attribute [rw] resource_group_tags
        #   A collection of keys and an array of possible values,
        #   \'\[\\\{\"key\":\"key1\",\"values\":\[\"Value1\",\"Value2\"\]\\},\\\{\"key\":\"Key2\",\"values\":\[\"Value3\"\]\\}\]\'.
        #
        #   For
        #   example,\'\[\\\{\"key\":\"Name\",\"values\":\[\"TestEC2Instance\"\]\\}\]\'.
        #   @return [Array<Types::ResourceGroupTag>]

      end

      class CreateResourceGroupResponse < Aws::Structure.new(
        :resource_group_arn)

        # @!attribute [rw] resource_group_arn
        #   The ARN that specifies the resource group that is created.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteAssessmentRunRequest
      #   data as a hash:
      #
      #       {
      #         assessment_run_arn: "Arn", # required
      #       }
      class DeleteAssessmentRunRequest < Aws::Structure.new(
        :assessment_run_arn)

        # @!attribute [rw] assessment_run_arn
        #   The ARN that specifies the assessment run that you want to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteAssessmentTargetRequest
      #   data as a hash:
      #
      #       {
      #         assessment_target_arn: "Arn", # required
      #       }
      class DeleteAssessmentTargetRequest < Aws::Structure.new(
        :assessment_target_arn)

        # @!attribute [rw] assessment_target_arn
        #   The ARN that specifies the assessment target that you want to
        #   delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteAssessmentTemplateRequest
      #   data as a hash:
      #
      #       {
      #         assessment_template_arn: "Arn", # required
      #       }
      class DeleteAssessmentTemplateRequest < Aws::Structure.new(
        :assessment_template_arn)

        # @!attribute [rw] assessment_template_arn
        #   The ARN that specifies the assessment template that you want to
        #   delete.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeAssessmentRunsRequest
      #   data as a hash:
      #
      #       {
      #         assessment_run_arns: ["Arn"], # required
      #       }
      class DescribeAssessmentRunsRequest < Aws::Structure.new(
        :assessment_run_arns)

        # @!attribute [rw] assessment_run_arns
        #   The ARN that specifies the assessment run that you want to describe.
        #   @return [Array<String>]

      end

      class DescribeAssessmentRunsResponse < Aws::Structure.new(
        :assessment_runs,
        :failed_items)

        # @!attribute [rw] assessment_runs
        #   Information about the assessment run.
        #   @return [Array<Types::AssessmentRun>]

        # @!attribute [rw] failed_items
        #   Assessment run details that cannot be described. An error code is
        #   provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # @note When making an API call, pass DescribeAssessmentTargetsRequest
      #   data as a hash:
      #
      #       {
      #         assessment_target_arns: ["Arn"], # required
      #       }
      class DescribeAssessmentTargetsRequest < Aws::Structure.new(
        :assessment_target_arns)

        # @!attribute [rw] assessment_target_arns
        #   The ARNs that specifies the assessment targets that you want to
        #   describe.
        #   @return [Array<String>]

      end

      class DescribeAssessmentTargetsResponse < Aws::Structure.new(
        :assessment_targets,
        :failed_items)

        # @!attribute [rw] assessment_targets
        #   Information about the assessment targets.
        #   @return [Array<Types::AssessmentTarget>]

        # @!attribute [rw] failed_items
        #   Assessment target details that cannot be described. An error code is
        #   provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # @note When making an API call, pass DescribeAssessmentTemplatesRequest
      #   data as a hash:
      #
      #       {
      #         assessment_template_arns: ["Arn"], # required
      #       }
      class DescribeAssessmentTemplatesRequest < Aws::Structure.new(
        :assessment_template_arns)

        # @!attribute [rw] assessment_template_arns
        #   The ARN that specifiesthe assessment templates that you want to
        #   describe.
        #   @return [Array<String>]

      end

      class DescribeAssessmentTemplatesResponse < Aws::Structure.new(
        :assessment_templates,
        :failed_items)

        # @!attribute [rw] assessment_templates
        #   Information about the assessment templates.
        #   @return [Array<Types::AssessmentTemplate>]

        # @!attribute [rw] failed_items
        #   Assessment template details that cannot be described. An error code
        #   is provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      class DescribeCrossAccountAccessRoleResponse < Aws::Structure.new(
        :role_arn,
        :valid,
        :registered_at)

        # @!attribute [rw] role_arn
        #   The ARN that specifies the IAM role that Amazon Inspector uses to
        #   access your AWS account.
        #   @return [String]

        # @!attribute [rw] valid
        #   A Boolean value that specifies whether the IAM role has the
        #   necessary policies attached to enable Amazon Inspector to access
        #   your AWS account.
        #   @return [Boolean]

        # @!attribute [rw] registered_at
        #   The date when the cross-account access role was registered.
        #   @return [Time]

      end

      # @note When making an API call, pass DescribeFindingsRequest
      #   data as a hash:
      #
      #       {
      #         finding_arns: ["Arn"], # required
      #         locale: "EN_US", # accepts EN_US
      #       }
      class DescribeFindingsRequest < Aws::Structure.new(
        :finding_arns,
        :locale)

        # @!attribute [rw] finding_arns
        #   The ARN that specifies the finding that you want to describe.
        #   @return [Array<String>]

        # @!attribute [rw] locale
        #   The locale into which you want to translate a finding description,
        #   recommendation, and the short description that identifies the
        #   finding.
        #   @return [String]

      end

      class DescribeFindingsResponse < Aws::Structure.new(
        :findings,
        :failed_items)

        # @!attribute [rw] findings
        #   Information about the finding.
        #   @return [Array<Types::Finding>]

        # @!attribute [rw] failed_items
        #   Finding details that cannot be described. An error code is provided
        #   for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # @note When making an API call, pass DescribeResourceGroupsRequest
      #   data as a hash:
      #
      #       {
      #         resource_group_arns: ["Arn"], # required
      #       }
      class DescribeResourceGroupsRequest < Aws::Structure.new(
        :resource_group_arns)

        # @!attribute [rw] resource_group_arns
        #   The ARN that specifies the resource group that you want to describe.
        #   @return [Array<String>]

      end

      class DescribeResourceGroupsResponse < Aws::Structure.new(
        :resource_groups,
        :failed_items)

        # @!attribute [rw] resource_groups
        #   Information about a resource group.
        #   @return [Array<Types::ResourceGroup>]

        # @!attribute [rw] failed_items
        #   Resource group details that cannot be described. An error code is
        #   provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # @note When making an API call, pass DescribeRulesPackagesRequest
      #   data as a hash:
      #
      #       {
      #         rules_package_arns: ["Arn"], # required
      #         locale: "EN_US", # accepts EN_US
      #       }
      class DescribeRulesPackagesRequest < Aws::Structure.new(
        :rules_package_arns,
        :locale)

        # @!attribute [rw] rules_package_arns
        #   The ARN that specifies the rules package that you want to describe.
        #   @return [Array<String>]

        # @!attribute [rw] locale
        #   The locale that you want to translate a rules package description
        #   into.
        #   @return [String]

      end

      class DescribeRulesPackagesResponse < Aws::Structure.new(
        :rules_packages,
        :failed_items)

        # @!attribute [rw] rules_packages
        #   Information about the rules package.
        #   @return [Array<Types::RulesPackage>]

        # @!attribute [rw] failed_items
        #   Rules package details that cannot be described. An error code is
        #   provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # This data type is used in the AssessmentTemplateFilter data type.
      # @note When making an API call, pass DurationRange
      #   data as a hash:
      #
      #       {
      #         min_seconds: 1,
      #         max_seconds: 1,
      #       }
      class DurationRange < Aws::Structure.new(
        :min_seconds,
        :max_seconds)

        # @!attribute [rw] min_seconds
        #   The minimum value of the duration range. Must be greater than zero.
        #   @return [Integer]

        # @!attribute [rw] max_seconds
        #   The maximum value of the duration range. Must be less than or equal
        #   to 604800 seconds (1 week).
        #   @return [Integer]

      end

      # This data type is used in the Subscription data type.
      class EventSubscription < Aws::Structure.new(
        :event,
        :subscribed_at)

        # @!attribute [rw] event
        #   The event for which Amazon Simple Notification Service (SNS)
        #   notifications are sent.
        #   @return [String]

        # @!attribute [rw] subscribed_at
        #   The time at which SubscribeToEvent is called.
        #   @return [Time]

      end

      # Includes details about the failed items.
      class FailedItemDetails < Aws::Structure.new(
        :failure_code,
        :retryable)

        # @!attribute [rw] failure_code
        #   The status code of a failed item.
        #   @return [String]

        # @!attribute [rw] retryable
        #   Indicates whether you can immediately retry a request for this item
        #   for a specified resource.
        #   @return [Boolean]

      end

      # Contains information about an Amazon Inspector finding. This data type
      # is used as the response element in the DescribeFindings action.
      class Finding < Aws::Structure.new(
        :arn,
        :schema_version,
        :service,
        :service_attributes,
        :asset_type,
        :asset_attributes,
        :id,
        :title,
        :description,
        :recommendation,
        :severity,
        :numeric_severity,
        :confidence,
        :indicator_of_compromise,
        :attributes,
        :user_attributes,
        :created_at,
        :updated_at)

        # @!attribute [rw] arn
        #   The ARN that specifies the finding.
        #   @return [String]

        # @!attribute [rw] schema_version
        #   The schema version of this data type.
        #   @return [Integer]

        # @!attribute [rw] service
        #   The data element is set to \"Inspector\".
        #   @return [String]

        # @!attribute [rw] service_attributes
        #   This data type is used in the Finding data type.
        #   @return [Types::InspectorServiceAttributes]

        # @!attribute [rw] asset_type
        #   The type of the host from which the finding is generated.
        #   @return [String]

        # @!attribute [rw] asset_attributes
        #   A collection of attributes of the host from which the finding is
        #   generated.
        #   @return [Types::AssetAttributes]

        # @!attribute [rw] id
        #   The ID of the finding.
        #   @return [String]

        # @!attribute [rw] title
        #   The name of the finding.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the finding.
        #   @return [String]

        # @!attribute [rw] recommendation
        #   The recommendation for the finding.
        #   @return [String]

        # @!attribute [rw] severity
        #   The finding severity. Values can be set to High, Medium, Low, and
        #   Informational.
        #   @return [String]

        # @!attribute [rw] numeric_severity
        #   The numeric value of the finding severity.
        #   @return [Float]

        # @!attribute [rw] confidence
        #   This data element is currently not used.
        #   @return [Integer]

        # @!attribute [rw] indicator_of_compromise
        #   This data element is currently not used.
        #   @return [Boolean]

        # @!attribute [rw] attributes
        #   The system-defined attributes for the finding.
        #   @return [Array<Types::Attribute>]

        # @!attribute [rw] user_attributes
        #   The user-defined attributes that are assigned to the finding.
        #   @return [Array<Types::Attribute>]

        # @!attribute [rw] created_at
        #   The time when the finding was generated.
        #   @return [Time]

        # @!attribute [rw] updated_at
        #   The time when AddAttributesToFindings is called.
        #   @return [Time]

      end

      # This data type is used as a request parameter in the ListFindings
      # action.
      # @note When making an API call, pass FindingFilter
      #   data as a hash:
      #
      #       {
      #         agent_ids: ["AgentId"],
      #         auto_scaling_groups: ["AutoScalingGroup"],
      #         rule_names: ["RuleName"],
      #         severities: ["Low"], # accepts Low, Medium, High, Informational, Undefined
      #         rules_package_arns: ["Arn"],
      #         attributes: [
      #           {
      #             key: "AttributeKey", # required
      #             value: "AttributeValue",
      #           },
      #         ],
      #         user_attributes: [
      #           {
      #             key: "AttributeKey", # required
      #             value: "AttributeValue",
      #           },
      #         ],
      #         creation_time_range: {
      #           begin_date: Time.now,
      #           end_date: Time.now,
      #         },
      #       }
      class FindingFilter < Aws::Structure.new(
        :agent_ids,
        :auto_scaling_groups,
        :rule_names,
        :severities,
        :rules_package_arns,
        :attributes,
        :user_attributes,
        :creation_time_range)

        # @!attribute [rw] agent_ids
        #   For a record to match a filter, one of the values that is specified
        #   for this data type property must be the exact match of the value of
        #   the **agentId** property of the Finding data type.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_groups
        #   For a record to match a filter, one of the values that is specified
        #   for this data type property must be the exact match of the value of
        #   the **autoScalingGroup** property of the Finding data type.
        #   @return [Array<String>]

        # @!attribute [rw] rule_names
        #   For a record to match a filter, one of the values that is specified
        #   for this data type property must be the exact match of the value of
        #   the **ruleName** property of the Finding data type.
        #   @return [Array<String>]

        # @!attribute [rw] severities
        #   For a record to match a filter, one of the values that is specified
        #   for this data type property must be the exact match of the value of
        #   the **severity** property of the Finding data type.
        #   @return [Array<String>]

        # @!attribute [rw] rules_package_arns
        #   For a record to match a filter, one of the values that is specified
        #   for this data type property must be the exact match of the value of
        #   the **rulesPackageArn** property of the Finding data type.
        #   @return [Array<String>]

        # @!attribute [rw] attributes
        #   For a record to match a filter, the list of values that are
        #   specified for this data type property must be contained in the list
        #   of values of the **attributes** property of the Finding data type.
        #   @return [Array<Types::Attribute>]

        # @!attribute [rw] user_attributes
        #   For a record to match a filter, the value that is specified for this
        #   data type property must be contained in the list of values of the
        #   **userAttributes** property of the Finding data type.
        #   @return [Array<Types::Attribute>]

        # @!attribute [rw] creation_time_range
        #   The time range during which the finding is generated.
        #   @return [Types::TimestampRange]

      end

      # @note When making an API call, pass GetTelemetryMetadataRequest
      #   data as a hash:
      #
      #       {
      #         assessment_run_arn: "Arn", # required
      #       }
      class GetTelemetryMetadataRequest < Aws::Structure.new(
        :assessment_run_arn)

        # @!attribute [rw] assessment_run_arn
        #   The ARN that specifies the assessment run that has the telemetry
        #   data that you want to obtain.
        #   @return [String]

      end

      class GetTelemetryMetadataResponse < Aws::Structure.new(
        :telemetry_metadata)

        # @!attribute [rw] telemetry_metadata
        #   Telemetry details.
        #   @return [Array<Types::TelemetryMetadata>]

      end

      # This data type is used in the Finding data type.
      class InspectorServiceAttributes < Aws::Structure.new(
        :schema_version,
        :assessment_run_arn,
        :rules_package_arn)

        # @!attribute [rw] schema_version
        #   The schema version of this data type.
        #   @return [Integer]

        # @!attribute [rw] assessment_run_arn
        #   The ARN of the assessment run during which the finding is generated.
        #   @return [String]

        # @!attribute [rw] rules_package_arn
        #   The ARN of the rules package that is used to generate the finding.
        #   @return [String]

      end

      # @note When making an API call, pass ListAssessmentRunAgentsRequest
      #   data as a hash:
      #
      #       {
      #         assessment_run_arn: "Arn", # required
      #         filter: {
      #           agent_healths: ["HEALTHY"], # required, accepts HEALTHY, UNHEALTHY
      #           agent_health_codes: ["IDLE"], # required, accepts IDLE, RUNNING, SHUTDOWN, UNHEALTHY, THROTTLED, UNKNOWN
      #         },
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListAssessmentRunAgentsRequest < Aws::Structure.new(
        :assessment_run_arn,
        :filter,
        :next_token,
        :max_results)

        # @!attribute [rw] assessment_run_arn
        #   The ARN that specifies the assessment run whose agents you want to
        #   list.
        #   @return [String]

        # @!attribute [rw] filter
        #   You can use this parameter to specify a subset of data to be
        #   included in the action\'s response.
        #
        #   For a record to match a filter, all specified filter attributes must
        #   match. When multiple values are specified for a filter attribute,
        #   any of the values can match.
        #   @return [Types::AgentFilter]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the
        #   **ListAssessmentRunAgents** action. Subsequent calls to the action
        #   fill **nextToken** in the request with the value of **NextToken**
        #   from the previous response to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   that you want in the response. The default value is 10. The maximum
        #   value is 500.
        #   @return [Integer]

      end

      class ListAssessmentRunAgentsResponse < Aws::Structure.new(
        :assessment_run_agents,
        :next_token)

        # @!attribute [rw] assessment_run_agents
        #   A list of ARNs that specifies the agents returned by the action.
        #   @return [Array<Types::AssessmentRunAgent>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListAssessmentRunsRequest
      #   data as a hash:
      #
      #       {
      #         assessment_template_arns: ["Arn"],
      #         filter: {
      #           name_pattern: "NamePattern",
      #           states: ["CREATED"], # accepts CREATED, START_DATA_COLLECTION_PENDING, START_DATA_COLLECTION_IN_PROGRESS, COLLECTING_DATA, STOP_DATA_COLLECTION_PENDING, DATA_COLLECTED, EVALUATING_RULES, FAILED, COMPLETED, COMPLETED_WITH_ERRORS
      #           duration_range: {
      #             min_seconds: 1,
      #             max_seconds: 1,
      #           },
      #           rules_package_arns: ["Arn"],
      #           start_time_range: {
      #             begin_date: Time.now,
      #             end_date: Time.now,
      #           },
      #           completion_time_range: {
      #             begin_date: Time.now,
      #             end_date: Time.now,
      #           },
      #           state_change_time_range: {
      #             begin_date: Time.now,
      #             end_date: Time.now,
      #           },
      #         },
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListAssessmentRunsRequest < Aws::Structure.new(
        :assessment_template_arns,
        :filter,
        :next_token,
        :max_results)

        # @!attribute [rw] assessment_template_arns
        #   The ARNs that specify the assessment templates whose assessment runs
        #   you want to list.
        #   @return [Array<String>]

        # @!attribute [rw] filter
        #   You can use this parameter to specify a subset of data to be
        #   included in the action\'s response.
        #
        #   For a record to match a filter, all specified filter attributes must
        #   match. When multiple values are specified for a filter attribute,
        #   any of the values can match.
        #   @return [Types::AssessmentRunFilter]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the
        #   **ListAssessmentRuns** action. Subsequent calls to the action fill
        #   **nextToken** in the request with the value of **NextToken** from
        #   the previous response to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   that you want in the response. The default value is 10. The maximum
        #   value is 500.
        #   @return [Integer]

      end

      class ListAssessmentRunsResponse < Aws::Structure.new(
        :assessment_run_arns,
        :next_token)

        # @!attribute [rw] assessment_run_arns
        #   A list of ARNs that specifies the assessment runs that are returned
        #   by the action.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListAssessmentTargetsRequest
      #   data as a hash:
      #
      #       {
      #         filter: {
      #           assessment_target_name_pattern: "NamePattern",
      #         },
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListAssessmentTargetsRequest < Aws::Structure.new(
        :filter,
        :next_token,
        :max_results)

        # @!attribute [rw] filter
        #   You can use this parameter to specify a subset of data to be
        #   included in the action\'s response.
        #
        #   For a record to match a filter, all specified filter attributes must
        #   match. When multiple values are specified for a filter attribute,
        #   any of the values can match.
        #   @return [Types::AssessmentTargetFilter]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the
        #   **ListAssessmentTargets** action. Subsequent calls to the action
        #   fill **nextToken** in the request with the value of **NextToken**
        #   from the previous response to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   you want in the response. The default value is 10. The maximum value
        #   is 500.
        #   @return [Integer]

      end

      class ListAssessmentTargetsResponse < Aws::Structure.new(
        :assessment_target_arns,
        :next_token)

        # @!attribute [rw] assessment_target_arns
        #   A list of ARNs that specifies the assessment targets that are
        #   returned by the action.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListAssessmentTemplatesRequest
      #   data as a hash:
      #
      #       {
      #         assessment_target_arns: ["Arn"],
      #         filter: {
      #           name_pattern: "NamePattern",
      #           duration_range: {
      #             min_seconds: 1,
      #             max_seconds: 1,
      #           },
      #           rules_package_arns: ["Arn"],
      #         },
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListAssessmentTemplatesRequest < Aws::Structure.new(
        :assessment_target_arns,
        :filter,
        :next_token,
        :max_results)

        # @!attribute [rw] assessment_target_arns
        #   A list of ARNs that specifies the assessment targets whose
        #   assessment templates you want to list.
        #   @return [Array<String>]

        # @!attribute [rw] filter
        #   You can use this parameter to specify a subset of data to be
        #   included in the action\'s response.
        #
        #   For a record to match a filter, all specified filter attributes must
        #   match. When multiple values are specified for a filter attribute,
        #   any of the values can match.
        #   @return [Types::AssessmentTemplateFilter]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the
        #   **ListAssessmentTemplates** action. Subsequent calls to the action
        #   fill **nextToken** in the request with the value of **NextToken**
        #   from the previous response to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   you want in the response. The default value is 10. The maximum value
        #   is 500.
        #   @return [Integer]

      end

      class ListAssessmentTemplatesResponse < Aws::Structure.new(
        :assessment_template_arns,
        :next_token)

        # @!attribute [rw] assessment_template_arns
        #   A list of ARNs that specifies the assessment templates returned by
        #   the action.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListEventSubscriptionsRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "Arn",
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListEventSubscriptionsRequest < Aws::Structure.new(
        :resource_arn,
        :next_token,
        :max_results)

        # @!attribute [rw] resource_arn
        #   The ARN of the assessment template for which you want to list the
        #   existing event subscriptions.
        #   @return [String]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the
        #   **ListEventSubscriptions** action. Subsequent calls to the action
        #   fill **nextToken** in the request with the value of **NextToken**
        #   from the previous response to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   you want in the response. The default value is 10. The maximum value
        #   is 500.
        #   @return [Integer]

      end

      class ListEventSubscriptionsResponse < Aws::Structure.new(
        :subscriptions,
        :next_token)

        # @!attribute [rw] subscriptions
        #   Details of the returned event subscriptions.
        #   @return [Array<Types::Subscription>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListFindingsRequest
      #   data as a hash:
      #
      #       {
      #         assessment_run_arns: ["Arn"],
      #         filter: {
      #           agent_ids: ["AgentId"],
      #           auto_scaling_groups: ["AutoScalingGroup"],
      #           rule_names: ["RuleName"],
      #           severities: ["Low"], # accepts Low, Medium, High, Informational, Undefined
      #           rules_package_arns: ["Arn"],
      #           attributes: [
      #             {
      #               key: "AttributeKey", # required
      #               value: "AttributeValue",
      #             },
      #           ],
      #           user_attributes: [
      #             {
      #               key: "AttributeKey", # required
      #               value: "AttributeValue",
      #             },
      #           ],
      #           creation_time_range: {
      #             begin_date: Time.now,
      #             end_date: Time.now,
      #           },
      #         },
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListFindingsRequest < Aws::Structure.new(
        :assessment_run_arns,
        :filter,
        :next_token,
        :max_results)

        # @!attribute [rw] assessment_run_arns
        #   The ARNs of the assessment runs that generate the findings that you
        #   want to list.
        #   @return [Array<String>]

        # @!attribute [rw] filter
        #   You can use this parameter to specify a subset of data to be
        #   included in the action\'s response.
        #
        #   For a record to match a filter, all specified filter attributes must
        #   match. When multiple values are specified for a filter attribute,
        #   any of the values can match.
        #   @return [Types::FindingFilter]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the **ListFindings**
        #   action. Subsequent calls to the action fill **nextToken** in the
        #   request with the value of **NextToken** from the previous response
        #   to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   you want in the response. The default value is 10. The maximum value
        #   is 500.
        #   @return [Integer]

      end

      class ListFindingsResponse < Aws::Structure.new(
        :finding_arns,
        :next_token)

        # @!attribute [rw] finding_arns
        #   A list of ARNs that specifies the findings returned by the action.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListRulesPackagesRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class ListRulesPackagesRequest < Aws::Structure.new(
        :next_token,
        :max_results)

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the
        #   **ListRulesPackages** action. Subsequent calls to the action fill
        #   **nextToken** in the request with the value of **NextToken** from
        #   the previous response to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   you want in the response. The default value is 10. The maximum value
        #   is 500.
        #   @return [Integer]

      end

      class ListRulesPackagesResponse < Aws::Structure.new(
        :rules_package_arns,
        :next_token)

        # @!attribute [rw] rules_package_arns
        #   The list of ARNs that specifies the rules packages returned by the
        #   action.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass ListTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "Arn", # required
      #       }
      class ListTagsForResourceRequest < Aws::Structure.new(
        :resource_arn)

        # @!attribute [rw] resource_arn
        #   The ARN that specifies the assessment template whose tags you want
        #   to list.
        #   @return [String]

      end

      class ListTagsForResourceResponse < Aws::Structure.new(
        :tags)

        # @!attribute [rw] tags
        #   A collection of key and value pairs.
        #   @return [Array<Types::Tag>]

      end

      # @note When making an API call, pass PreviewAgentsRequest
      #   data as a hash:
      #
      #       {
      #         preview_agents_arn: "Arn", # required
      #         next_token: "PaginationToken",
      #         max_results: 1,
      #       }
      class PreviewAgentsRequest < Aws::Structure.new(
        :preview_agents_arn,
        :next_token,
        :max_results)

        # @!attribute [rw] preview_agents_arn
        #   The ARN of the assessment target whose agents you want to preview.
        #   @return [String]

        # @!attribute [rw] next_token
        #   You can use this parameter when paginating results. Set the value of
        #   this parameter to null on your first call to the **PreviewAgents**
        #   action. Subsequent calls to the action fill **nextToken** in the
        #   request with the value of **NextToken** from the previous response
        #   to continue listing data.
        #   @return [String]

        # @!attribute [rw] max_results
        #   You can use this parameter to indicate the maximum number of items
        #   you want in the response. The default value is 10. The maximum value
        #   is 500.
        #   @return [Integer]

      end

      class PreviewAgentsResponse < Aws::Structure.new(
        :agent_previews,
        :next_token)

        # @!attribute [rw] agent_previews
        #   The resulting list of agents.
        #   @return [Array<Types::AgentPreview>]

        # @!attribute [rw] next_token
        #   When a response is generated, if there is more data to be listed,
        #   this parameter is present in the response and contains the value to
        #   use for the **nextToken** parameter in a subsequent pagination
        #   request. If there is no more data to be listed, this parameter is
        #   set to null.
        #   @return [String]

      end

      # @note When making an API call, pass RegisterCrossAccountAccessRoleRequest
      #   data as a hash:
      #
      #       {
      #         role_arn: "Arn", # required
      #       }
      class RegisterCrossAccountAccessRoleRequest < Aws::Structure.new(
        :role_arn)

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that Amazon Inspector uses to list your EC2
        #   instances during the assessment run or when you call the
        #   PreviewAgents action.
        #   @return [String]

      end

      # @note When making an API call, pass RemoveAttributesFromFindingsRequest
      #   data as a hash:
      #
      #       {
      #         finding_arns: ["Arn"], # required
      #         attribute_keys: ["AttributeKey"], # required
      #       }
      class RemoveAttributesFromFindingsRequest < Aws::Structure.new(
        :finding_arns,
        :attribute_keys)

        # @!attribute [rw] finding_arns
        #   The ARNs that specify the findings that you want to remove
        #   attributes from.
        #   @return [Array<String>]

        # @!attribute [rw] attribute_keys
        #   The array of attribute keys that you want to remove from specified
        #   findings.
        #   @return [Array<String>]

      end

      class RemoveAttributesFromFindingsResponse < Aws::Structure.new(
        :failed_items)

        # @!attribute [rw] failed_items
        #   Attributes details that cannot be described. An error code is
        #   provided for each failed item.
        #   @return [Hash<String,Types::FailedItemDetails>]

      end

      # Contains information about a resource group. The resource group
      # defines a set of tags that, when queried, identify the AWS resources
      # that make up the assessment target. This data type is used as the
      # response element in the DescribeResourceGroups action.
      class ResourceGroup < Aws::Structure.new(
        :arn,
        :tags,
        :created_at)

        # @!attribute [rw] arn
        #   The ARN of the resource group.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags (key and value pairs) of the resource group. This data type
        #   property is used in the CreateResourceGroup action.
        #   @return [Array<Types::ResourceGroupTag>]

        # @!attribute [rw] created_at
        #   The time at which resource group is created.
        #   @return [Time]

      end

      # This data type is used as one of the elements of the ResourceGroup
      # data type.
      # @note When making an API call, pass ResourceGroupTag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       }
      class ResourceGroupTag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   A tag key.
        #   @return [String]

        # @!attribute [rw] value
        #   The value assigned to a tag key.
        #   @return [String]

      end

      # Contains information about an Amazon Inspector rules package. This
      # data type is used as the response element in the DescribeRulesPackages
      # action.
      class RulesPackage < Aws::Structure.new(
        :arn,
        :name,
        :version,
        :provider,
        :description)

        # @!attribute [rw] arn
        #   The ARN of the rules package.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the rules package.
        #   @return [String]

        # @!attribute [rw] version
        #   The version ID of the rules package.
        #   @return [String]

        # @!attribute [rw] provider
        #   The provider of the rules package.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the rules package.
        #   @return [String]

      end

      # @note When making an API call, pass SetTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "Arn", # required
      #         tags: [
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue",
      #           },
      #         ],
      #       }
      class SetTagsForResourceRequest < Aws::Structure.new(
        :resource_arn,
        :tags)

        # @!attribute [rw] resource_arn
        #   The ARN of the assessment template that you want to set tags to.
        #   @return [String]

        # @!attribute [rw] tags
        #   A collection of key and value pairs that you want to set to the
        #   assessment template.
        #   @return [Array<Types::Tag>]

      end

      # @note When making an API call, pass StartAssessmentRunRequest
      #   data as a hash:
      #
      #       {
      #         assessment_template_arn: "Arn", # required
      #         assessment_run_name: "AssessmentRunName",
      #       }
      class StartAssessmentRunRequest < Aws::Structure.new(
        :assessment_template_arn,
        :assessment_run_name)

        # @!attribute [rw] assessment_template_arn
        #   The ARN of the assessment template of the assessment run that you
        #   want to start.
        #   @return [String]

        # @!attribute [rw] assessment_run_name
        #   You can specify the name for the assessment run, or you can use the
        #   auto-generated name that is based on the assessment template name.
        #   The name must be unique for the assessment template.
        #   @return [String]

      end

      class StartAssessmentRunResponse < Aws::Structure.new(
        :assessment_run_arn)

        # @!attribute [rw] assessment_run_arn
        #   The ARN of the assessment run that has been started.
        #   @return [String]

      end

      # @note When making an API call, pass StopAssessmentRunRequest
      #   data as a hash:
      #
      #       {
      #         assessment_run_arn: "Arn", # required
      #       }
      class StopAssessmentRunRequest < Aws::Structure.new(
        :assessment_run_arn)

        # @!attribute [rw] assessment_run_arn
        #   The ARN of the assessment run that you want to stop.
        #   @return [String]

      end

      # @note When making an API call, pass SubscribeToEventRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "Arn", # required
      #         event: "ASSESSMENT_RUN_STARTED", # required, accepts ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER
      #         topic_arn: "Arn", # required
      #       }
      class SubscribeToEventRequest < Aws::Structure.new(
        :resource_arn,
        :event,
        :topic_arn)

        # @!attribute [rw] resource_arn
        #   The ARN of the assessment template that is used during the event for
        #   which you want to receive SNS notifications.
        #   @return [String]

        # @!attribute [rw] event
        #   The event for which you want to receive SNS notifications.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The ARN of the SNS topic to which the SNS notifications are sent.
        #   @return [String]

      end

      # This data type is used as a response element in the
      # ListEventSubscriptions action.
      class Subscription < Aws::Structure.new(
        :resource_arn,
        :topic_arn,
        :event_subscriptions)

        # @!attribute [rw] resource_arn
        #   The ARN of the assessment template that is used during the event for
        #   which the SNS notification is sent.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The ARN of the Amazon Simple Notification Service (SNS) topic to
        #   which the SNS notifications are sent.
        #   @return [String]

        # @!attribute [rw] event_subscriptions
        #   The list of existing event subscriptions.
        #   @return [Array<Types::EventSubscription>]

      end

      # A key and value pair. This data type is used as a request parameter in
      # the SetTagsForResource action and a response element in the
      # ListTagsForResource action.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   A tag key.
        #   @return [String]

        # @!attribute [rw] value
        #   A value assigned to a tag key.
        #   @return [String]

      end

      # The metadata about the Amazon Inspector application data metrics
      # collected by the agent. This data type is used as the response element
      # in the GetTelemetryMetadata action.
      class TelemetryMetadata < Aws::Structure.new(
        :message_type,
        :count,
        :data_size)

        # @!attribute [rw] message_type
        #   A specific type of behavioral data that is collected by the agent.
        #   @return [String]

        # @!attribute [rw] count
        #   The count of messages that the agent sends to the Amazon Inspector
        #   service.
        #   @return [Integer]

        # @!attribute [rw] data_size
        #   The data size of messages that the agent sends to the Amazon
        #   Inspector service.
        #   @return [Integer]

      end

      # This data type is used in the AssessmentRunFilter data type.
      # @note When making an API call, pass TimestampRange
      #   data as a hash:
      #
      #       {
      #         begin_date: Time.now,
      #         end_date: Time.now,
      #       }
      class TimestampRange < Aws::Structure.new(
        :begin_date,
        :end_date)

        # @!attribute [rw] begin_date
        #   The minimum value of the timestamp range.
        #   @return [Time]

        # @!attribute [rw] end_date
        #   The maximum value of the timestamp range.
        #   @return [Time]

      end

      # @note When making an API call, pass UnsubscribeFromEventRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "Arn", # required
      #         event: "ASSESSMENT_RUN_STARTED", # required, accepts ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER
      #         topic_arn: "Arn", # required
      #       }
      class UnsubscribeFromEventRequest < Aws::Structure.new(
        :resource_arn,
        :event,
        :topic_arn)

        # @!attribute [rw] resource_arn
        #   The ARN of the assessment template that is used during the event for
        #   which you want to stop receiving SNS notifications.
        #   @return [String]

        # @!attribute [rw] event
        #   The event for which you want to stop receiving SNS notifications.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The ARN of the SNS topic to which SNS notifications are sent.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateAssessmentTargetRequest
      #   data as a hash:
      #
      #       {
      #         assessment_target_arn: "Arn", # required
      #         assessment_target_name: "AssessmentTargetName", # required
      #         resource_group_arn: "Arn", # required
      #       }
      class UpdateAssessmentTargetRequest < Aws::Structure.new(
        :assessment_target_arn,
        :assessment_target_name,
        :resource_group_arn)

        # @!attribute [rw] assessment_target_arn
        #   The ARN of the assessment target that you want to update.
        #   @return [String]

        # @!attribute [rw] assessment_target_name
        #   The name of the assessment target that you want to update.
        #   @return [String]

        # @!attribute [rw] resource_group_arn
        #   The ARN of the resource group that is used to specify the new
        #   resource group to associate with the assessment target.
        #   @return [String]

      end

    end
  end
end