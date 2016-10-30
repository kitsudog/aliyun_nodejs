FROM felixhoo/docker-centos6-aliyun
MAINTAINER Dave Luo <kitsudo163@163.com>
RUN yum install -y \
        npm
# RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

RUN alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
