.PHONY: run-journald run-time

run-journald:
	podman run --rm -it \
	  -v $$(pwd):/runner:z \
	  quay.io/ansible/event-driven-ansible-ee:latest \
	  ansible-rulebook \
	    --rulebook /runner/rules/httpd_monitor.yml \
	    --inventory /runner/inventory.yml \
	    --verbose

run-time:
	podman run --rm -it \
	  -v $$(pwd):/runner:z \
	  quay.io/ansible/event-driven-ansible-ee:latest \
	  ansible-rulebook \
	    --rulebook /runner/rules/check_httpd.yml \
	    --inventory /runner/inventory.yml \
	    --verbose

