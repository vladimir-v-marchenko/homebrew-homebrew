class SonarCompletion < Formula
  desc "Bash completion for Sonar"
  homepage "https://github.com/vladimir-v-marchenko/sonarqube-bash-completion"
  url "https://github.com/vladimir-v-marchenko/sonarqube-bash-completion/archive/1.1.zip"
  sha256 "ba5541cff1e2831d4b84ac7c5e00d454afe1291b8205ebde693f4e4d5a51b6bd"
  license "Apache-2.0"
  head "https://github.com/vladimir-v-marchenko/sonarqube-bash-completion.git"

  bottle :unneeded

  # Does not have any license
  # disable!

  def install
    bash_completion.install "etc/bash_completion.d/sonar"
  end

  test do
    assert_match "-F _sonar",
      shell_output("source #{bash_completion}/sonar && complete -p sonar")
  end
end
