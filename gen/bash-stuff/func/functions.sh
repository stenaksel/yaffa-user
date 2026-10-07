# shellcheck shell=bash
# BASH-STUFF functions — edit this file directly, then run: bafs reload

# @description Create a directory and immediately cd into it
# @param dir string Directory path to create and enter

function mkcd() {
  mkdir -p "$1" && cd "$1"
}

# @description Print a greeting message
# @param names string One or more names to greet

function greet_person() {  # example function for alias "greet"
  local joined
  joined="$(printf '%s, ' "$@")"
  joined="${joined%, }"
  echo "Hello${joined:+, $joined}!"
}

# @description Detect the Kotlin version configured by the Gradle or Maven project in a directory
# @param dir string Directory to search (defaults to the current directory)

function kotlin_project_version() {
  local dir="${1:-.}" file version

  for file in "$dir/build.gradle.kts" "$dir/build.gradle"; do
    [[ -f "$file" ]] || continue
    # Kotlin DSL: kotlin("jvm") version "X"  /  Groovy DSL: id 'org.jetbrains.kotlin.jvm' version 'X'
    version="$(grep -oE "(kotlin\(|id[( ])[\"'][^\"']*[\"']\)?[[:space:]]+version[[:space:]]+[\"'][^\"']+[\"']" "$file" \
      | grep -oE "[\"'][^\"']+[\"']\$" | tr -d "\"'" | head -n1)"
    if [[ -z "$version" ]]; then
      # No literal version in the plugins block — the version may instead
      # come from a version catalog (gradle/libs.versions.toml).
      local catalog="$dir/gradle/libs.versions.toml"
      [[ -f "$catalog" ]] && version="$(grep -E '^[[:space:]]*kotlin[[:space:]]*=' "$catalog" \
        | head -n1 | sed -E 's/^[^=]+=[[:space:]]*"([^"]+)".*/\1/')"
    fi
    if [[ -n "$version" ]]; then
      echo "Kotlin $version (Gradle: $file)"
      return 0
    fi
    echo "Gradle project found in '$dir' but no Kotlin version detected" >&2
    return 1
  done

  if [[ -f "$dir/pom.xml" ]]; then
    # Prefer a <kotlin.version> property — the conventional way kotlin-maven-plugin's
    # own <version> is usually set — before falling back to a literal plugin version.
    version="$(grep -oE '<kotlin\.version>[^<]+</kotlin\.version>' "$dir/pom.xml" | sed -E 's/<[^>]+>//g' | head -n1)"
    if [[ -z "$version" ]]; then
      version="$(grep -A1 '<artifactId>kotlin-maven-plugin</artifactId>' "$dir/pom.xml" \
        | grep -oE '<version>[^<]+</version>' | sed -E 's/<[^>]+>//g' | head -n1)"
    fi
    if [[ -n "$version" ]]; then
      echo "Kotlin $version (Maven: $dir/pom.xml)"
      return 0
    fi

    # Not found locally — it may be inherited from a parent POM not present
    # in this directory. Fall back to the effective POM (same command as the
    # 'mep' alias), which has parent inheritance already merged/interpolated.
    if command -v mvn &>/dev/null; then
      local effective_pom
      effective_pom="$(mvn -f "$dir/pom.xml" help:effective-pom 2>/dev/null)"
      version="$(grep -oE '<kotlin\.version>[^<]+</kotlin\.version>' <<<"$effective_pom" | sed -E 's/<[^>]+>//g' | head -n1)"
      if [[ -z "$version" ]]; then
        version="$(grep -A1 '<artifactId>kotlin-maven-plugin</artifactId>' <<<"$effective_pom" \
          | grep -oE '<version>[^<]+</version>' | sed -E 's/<[^>]+>//g' | head -n1)"
      fi
      if [[ -n "$version" ]]; then
        echo "Kotlin $version (Maven effective-pom, inherited: $dir/pom.xml)"
        return 0
      fi
    fi

    echo "Maven project found in '$dir' but no Kotlin version detected" >&2
    return 1
  fi

  echo "No Gradle or Maven project found in '$dir'" >&2
  return 1
}

# @description Regenerate gen/bash-stuff/ and gen/ps1-stuff/ with YAFFA-K (the Kotlin generator); run from the YAFFA root
# @param options string Extra YAFFA-K options, passed on inside Gradle's --args (e.g. --help)

function yaffa_k() {
  # Gradle only hands the app what's inside --args="...", so extra options
  # must go in there — appended after the command they'd reach Gradle itself.
  ./YAFFA-K/gradlew -p YAFFA-K -q run --args="generate $*"
}
