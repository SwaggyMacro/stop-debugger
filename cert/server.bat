@rem ����server/server - SSL֤��
@rem ע�⣬������CA֤�飬�����뵽�����εĸ�֤��䷢������
@rem ע�⣬��Ҫ����conf��ʹ֤���SubjectAltName / alternate_names
@rem ����֤�齫����Chrome����

mkdir server

call openssl genrsa -out server/server.key 4096

call openssl req -new -sha256 -extensions req_ext -out server/server.csr -key server/server.key -config conf/server.conf -subj="/CN=localhost"

call openssl x509 -req -days 3650 -extensions req_ext -in server/server.csr -signkey server/server.key -out server/server.crt -CA ca/ca.crt -CAkey ca/ca.key -CAserial server/server.srl -CAcreateserial -extfile conf/server.conf