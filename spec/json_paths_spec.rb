require 'spec_helper'

describe JsonPaths do
  let(:json) do
    <<-EOF
    {
      "a": {
        "b": {
          "c": 1
        },
        "d": 2,
        "e": [
          {"f": 3},
          {"g": 4}
        ]
      }
    }
    EOF
  end

  subject { JsonPaths.new(json) }

  specify { expect(subject.paths).to include("$.a.b.c") }
  specify { expect(subject.paths).to include("$.a.d") }
  specify { expect(subject.paths).to include("$.a.e[0].f") }
  specify { expect(subject.paths).to include("$.a.e[1].g") }
end
