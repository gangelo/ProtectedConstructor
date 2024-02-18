### 3.0.2 2024-02-18

* Changes
 * Update gems.

### 3.0.1 2024-01-07

* Changes
 * Relax ruby version requirements Gem::Requirement.new('>= 3.0.1', '< 4.0')
 * Update gems.

### 3.0.0 2023-12-28
* Breaking changes
  * The require file for this gem is now 'protected_constructor' instead of 'ProtectedConstructor' (i.e. `require 'protected_constructor'`). Remove all references to `require 'ProtectedConstructor'` and replace with `require 'protected_constructor'`.

* changes
  * Relax ruby dependency to '~> 3.0'.
  * Update ruby gems.

### 2.1.6 2023-12-02
* changes
  * Update ruby gems.

### 2.1.5 2023-10-30
* changes
  * Update ruby gems.

### 2.1.4
* changes
  * Update ruby gems.

### 2.1.3
* changes
  * Required Ruby version is now 3.0.1.

### 2.0.3
* changes
  * Clean up ProtectedConstructor call to module_eval of unnecessary code.
  * Update gems and especially rake gem version to patch redcarpet CVE-2020-26298, yard CVE-2017-17042 and CVE-2019-1020001.
  * Fix rubocop violations.
