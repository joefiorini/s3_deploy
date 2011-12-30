require "s3_deploy/version"

module S3Deploy
  def self.deploy(options={})
    to = options.delete(:to)
    from = options.delete(:from)
    `s3cmd sync --delete-removed  #{from}/ #{to}`
  end
end
