# openstack_cli
Docker image containing openstack_cli tools

Dockerhub repo: https://hub.docker.com/r/mamut3d/openstack_cli/

###Use
You need open.rc file for your openstack project. It be downloaded from Horizon 
~~~
Compute->Access & Security->API Access->Download OpenStack RC File v3
~~~
or directly from 
~~~
https://<YOUR_OPENSTACK_WEB_DOMAIN_NAME>/horizon/project/access_and_security/openrc/
~~~

Commands to run container:
~~~
$ OSTACKRC=<ADD_PATH_TO_openrc.sh>
$ docker run --rm -it -v $OSTACKRC:/root/rc.sh:z mamut3d/openstack_cli bash -c "cd; . rc.sh; bash"
Please enter your OpenStack Password:

~~~
After you type your password you can use openstack cli. To test it, list all your instances with the following command:
~~~
root@c6ca42486c5h:~# openstack server list
+--------------------------------------+--------+--------+------------------+-------------------+
| ID                                   | Name   | Status | Networks         | Image Name        |
+--------------------------------------+--------+--------+------------------+-------------------+
| 3e775915-035c-4258-a975-a32ab595ea91 | MyVM   | ACTIVE | Priv1=10.0.5.113 | debian8-x64.qcow2 |
+--------------------------------------+--------+--------+------------------+-------------------+
~~~

