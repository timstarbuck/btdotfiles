eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
# Add .NET Core SDK tools
export PATH="$PATH:/Users/statim3/.dotnet/tools"
export DOTNET_ROLL_FORWARD=LatestMajor