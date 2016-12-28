# openstack_cli
Docker image containing openstack_cli tools

###Use
You need open.rc file for your openstack project. It be downloaded from Horizon 
~~~
Compute->Access & Security->API Access->Download OpenStack RC File v3
~~~
or directly from 
~~~
https://<YOUR_OPENSTACK_WEB_DOMAIN_NAME>/horizon/project/access_and_security/
~~~

Commands to run container:
~~~
$ OSTACKRC=/home/mtd/
$ docker run --rm -it -v $OSTACKRC:/root/rc.sh:z mamut3d/openstack_cli bash -c "cd; . rc.sh; bash"
~~~
