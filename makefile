src=./content
docs=./build/docs
code=./build/code
 # force=t|nil
force=t

all: publish

publish:
	emacs -Q  --batch --eval="(progn (load-file \"build-site.el\") (publish-project \"${src}\" \"${docs}\" \"${code}\" ${force}))"


clean-build:
		\rm -rf build/*
