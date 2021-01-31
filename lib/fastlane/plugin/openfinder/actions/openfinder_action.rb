require 'fastlane/action'
require_relative '../helper/openfinder_helper'

module Fastlane
  module Actions
    class OpenfinderAction < Action
      def self.run(params)

        path = params[:path]
        system("open #{path}") if path

      end

      def self.description
        "this a tool open os x finder"
      end

      def self.authors
        ["majianjie"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "this is a tool to open osx finder"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
              key: :path,
              description: "传入一个 open 打开的路径",
              optional: true,
              type: String
          )
        ]
      end

      def self.is_supported?(platform)

        true
      end

    end
  end
end
