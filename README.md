# .NET Core experimental Homebrew tap

**Warning:** This is currently experimental and is not guaranteed to even compile.

## How do I install these formulae?
`brew install bo98/dotnet/<formula>`

Or `brew tap bo98/dotnet` and then `brew install <formula>`.

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

Other than that, you're on your own.

## Versioned formulae

There is currently no versioned SDKs in this tap. However, the intention is that if there was one that it would _not_ be keg-only. This would allow a single .NET CLI formula to be used and also make life much better for developers as they can switch between SDKs at ease on a per-project basis without further configuration. "It just works".
