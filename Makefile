.PHONY: runner upgrade

runner:
	@echo "Running build-runner..."
	@fvm dart run build_runner build -d

upgrade:
	@echo "Upgrading project..."
	@fvm flutter clean
	@fvm flutter pub get
	@fvm flutter pub upgrade
	@fvm flutter pub upgrade --major-versions
