.PHONY: upgrade

upgrade:
	@echo "Upgrading project..."
	@fvm flutter clean
	@fvm flutter pub get
	@fvm flutter pub upgrade
	@fvm flutter pub upgrade --major-versions
