IMAGE := "silverwind/golang-node-python"
ARCHS := "linux/amd64"

all:
	@docker buildx rm builder &>/dev/null || true
	@docker buildx create --name builder --use &>/dev/null || true
	docker buildx build --push --pull --platform $(ARCHS) -t $(IMAGE):latest .
	@docker buildx rm builder &>/dev/null || true
