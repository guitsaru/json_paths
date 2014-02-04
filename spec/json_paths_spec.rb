require 'spec_helper'

describe JsonPaths do
  let(:json) do
    <<-EOF
    {
      "a": [
        {
          "b": 1,
          "c": 2
        },
        {
          "d": 3,
          "e": {
            "f": "g"
          }
        }
      ]
    }
    EOF
  end

  subject { JsonPaths.new(json) }

  specify { expect(subject.paths).to include("$.a[0].b") }
  specify { expect(subject.paths).to include("$.a[0].c") }
  specify { expect(subject.paths).to include("$.a[1].d") }
  specify { expect(subject.paths).to include("$.a[1].e.f") }
end
