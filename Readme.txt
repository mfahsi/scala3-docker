

docker build -f scala3-npm-aws-build -t winova/scala3-sbt-node-aws:0.2 .

docker scala3-npm-aws-build push winova/scala3-sbt-node-aws:0.2



docker build -f scala3-npm-aws-build --build-arg SCALA_VERSION=3.1.1 --build-arg SBT_VERSION=1.9.6 -t winova/scala3-sbt-node-aws:0.2 .
