FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHVuaWZpZWRwdXNoLWFwYgpkZXNjcmlwdGlvbjogQWVyb0dlYXIg\
VW5pZmllZFB1c2ggU2VydmVyCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOiAK\
ICAtIG1vYmlsZS1zZXJ2aWNlCiAgLSBtb2JpbGUtY2xpZW50LWVuYWJsZWQKbWV0YWRhdGE6CiAg\
ZGlzcGxheU5hbWU6IFB1c2ggTm90aWZpY2F0aW9ucwogIGxvbmdEZXNjcmlwdGlvbjogIkFuIEFQ\
QiBkZXBsb3lpbmcgdGhlIEFlcm9HZWFyIFVuaWZpZWRQdXNoIFNlcnZlciB3aXRoIHBlcnNpc3Rl\
bnQgc3RvcmFnZSBhbmQgYXV0aGVudGljYXRpb24gdGhyb3VnaCBPcGVuc2hpZnQiCiAgaW1hZ2VV\
cmw6ICJodHRwczovL3Bicy50d2ltZy5jb20vcHJvZmlsZV9pbWFnZXMvMTc5NDQ0MDAwNS9hZXJv\
Z2Vhcl9pY29uLTFfNDAweDQwMC5wbmciCiAgZG9jdW1lbnRhdGlvblVybDogImh0dHBzOi8vZG9j\
cy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL3VuaWZpZWRwdXNoLmh0bWwiCiAgcHJvdmlkZXJE\
aXNwbGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCiAgZGVwZW5kZW5jaWVzOgogICAgLSAiZG9ja2Vy\
LmlvL2Flcm9nZWFyL3VuaWZpZWRwdXNoLXdpbGRmbHktcGxhaW46Mi4xLjAiCiAgICAtICJkb2Nr\
ZXIuaW8vY2VudG9zL3Bvc3RncmVzcWwtOTYtY2VudG9zNzo5LjYiCiAgICAtICJkb2NrZXIuaW8v\
YWVyb2dlYXIvdXBzLWNvbmZpZy1vcGVyYXRvcjptYXN0ZXIiCiAgICAtICJkb2NrZXIuaW8vb3Bl\
bnNoaWZ0L29hdXRoLXByb3h5OnYxLjEuMCIKICBzZGstZG9jcy1hbmRyb2lkOiAiaHR0cHM6Ly9k\
b2NzLmFlcm9nZWFyLm9yZy9leHRlcm5hbC9hcGIvcHVzaC9hbmRyb2lkLmh0bWwiCiAgc2RrLWRv\
Y3MtY29yZG92YTogImh0dHBzOi8vZG9jcy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL3B1c2gv\
Y29yZG92YS5odG1sIgogIHNkay1kb2NzLWlvczogImh0dHBzOi8vZG9jcy5hZXJvZ2Vhci5vcmcv\
ZXh0ZXJuYWwvYXBiL3B1c2gvaW9zLmh0bWwiCiAgc2RrLWRvY3MteGFtYXJpbjogImh0dHBzOi8v\
ZG9jcy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL3B1c2gveGFtYXJpbi5odG1sIgogIHNlcnZp\
Y2VOYW1lOiB1cHMKICBiaW5kaW5nc0xpbWl0OiAyCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAog\
ICAgZGVzY3JpcHRpb246IFBlcnNpc3RlbnQgZGVwbG95bWVudCBvZiBVUFMKICAgIGZyZWU6IFRy\
dWUKICAgIG1ldGFkYXRhOgogICAgICBtb2JpbGVjbGllbnRfYmluZF9wYXJhbWV0ZXJzX2RhdGE6\
CiAgICAgICAgLSAneyJuYW1lIjogIkNMSUVOVF9JRCIsICJ2YWx1ZSI6ICJtZXRhZGF0YS5uYW1l\
IiwgInR5cGUiOiAicGF0aCJ9JwogICAgcGFyYW1ldGVyczogW10KICAgIGJpbmRfcGFyYW1ldGVy\
czoKICAgIC0gbmFtZTogQ0xJRU5UX0lECiAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIHRpdGxl\
OiBNb2JpbGUgQ2xpZW50IElECiAgICAgIHR5cGU6IHN0cmluZwogICAgLSBuYW1lOiBDTElFTlRf\
VFlQRQogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICB0aXRsZTogTW9iaWxlIENsaWVudCBUeXBl\
CiAgICAgIHR5cGU6IGVudW0KICAgICAgZGVmYXVsdDogIkFuZHJvaWQiCiAgICAgIGVudW06IFsi\
QW5kcm9pZCIsICJJT1MiXQogICAgLSBuYW1lOiBnb29nbGVrZXkKICAgICAgdGl0bGU6IFlvdXIg\
U2VydmVyIEtleSBmb3IgRmlyZWJhc2UgQ2xvdWQgTWVzc2FnaW5nCiAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICBkaXNwbGF5X2dyb3VwOiBBbmRyb2lkCiAgICAtIG5hbWU6IHByb2plY3ROdW1iZXIK\
ICAgICAgdGl0bGU6IFlvdXIgU2VuZGVyIElELCBuZWVkZWQgdG8gY29ubmVjdGluZyB0byBGQ00K\
ICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRpc3BsYXlfZ3JvdXA6IEFuZHJvaWQKICAgIC0gbmFt\
ZTogY2VydAogICAgICB0aXRsZTogaU9TIC5wMTIgZmlsZSAoZW5jb2RlIGNvbnRlbnRzIGluIGJh\
c2U2NCBiZWZvcmUgcGFzdGluZykKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRpc3BsYXlfdHlw\
ZTogdGV4dGFyZWEKICAgICAgZGlzcGxheV9ncm91cDogaU9TCiAgICAtIG5hbWU6IHBhc3NwaHJh\
c2UKICAgICAgdGl0bGU6IFRoZSBwYXNzcGhyYXNlCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBk\
aXNwbGF5X3R5cGU6IHBhc3N3b3JkCiAgICAgIGRpc3BsYXlfZ3JvdXA6IGlPUwogICAgLSBuYW1l\
OiBpb3NJc1Byb2R1Y3Rpb24KICAgICAgdGl0bGU6IElzIHRoaXMgYSBwcm9kdWN0aW9uIGNlcnRp\
ZmljYXRlPwogICAgICBkZWZhdWx0OiBmYWxzZQogICAgICB0eXBlOiBib29sZWFuCiAgICAgIGRp\
c3BsYXlfdHlwZTogY2hlY2tib3gKICAgICAgZGlzcGxheV9ncm91cDogaU9TCg=="


COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN chmod -R g=u /opt/{ansible,apb}
USER apb