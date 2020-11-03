@rem ����ļ���������CA֤��

@rem �������ļ���
mkdir ca

@rem ��������CA RSA˽Կ
call openssl genrsa -out ca/ca.key 4096

@rem ��ca֤��ǩ�����󣬵õ�ca.csr
call openssl req -new -sha256 -out ca/ca.csr -key ca/ca.key -config conf/ca.conf --subj="/CN=kajweb"

@rem ��ǩ����֤��
call openssl x509 -req -days 3650 -in ca/ca.csr -out ca/ca.crt -signkey ca/ca.key -extfile conf/ca.conf