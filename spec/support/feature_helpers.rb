module FeatureHelpers
 def expect_url_includes(url)
    expect(current_url).to include url
  end
end
