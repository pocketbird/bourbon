require "spec_helper"

describe "font-stacks" do
  before(:all) do
    ParserSupport.parse_file("addons/font-stacks")
  end

  context "stacks used in variable" do
    it "output stacks" do
      georgia = '"Georgia", "Cambria", "Times New Roman", "Times", serif'
      helvetica = '"Helvetica Neue", "Helvetica", "Roboto", ' +
                  '"Arial", sans-serif'
      lucida_grande = '"Lucida Grande", "Tahoma", "Verdana", ' +
                      '"Arial", sans-serif'
      monospace = '"Bitstream Vera Sans Mono", "Consolas", "Courier", monospace'
      verdana = '"Verdana", "Geneva", sans-serif'

      expect(".georgia").to have_rule("font-family: #{georgia}")
      expect(".helvetica").to have_rule("font-family: #{helvetica}")
      expect(".lucida-grande").to have_rule("font-family: #{lucida_grande}")
      expect(".monospace").to have_rule("font-family: #{monospace}")
      expect(".verdana").to have_rule("font-family: #{verdana}")
    end
  end
end
