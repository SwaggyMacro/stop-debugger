@echo off
rem https://blog.csdn.net/weixin_37569048/article/details/80846602
rem ע�⣺������Ҫ����ԱȨ�ޣ���������ʧ�ܣ���
rem ���ã�����֤��ca.crt���뵱ǰ�����

rem ����ʱwindows�ᵯ������� ȱ�㣩����ʾ�û��Ƿ����θø�֤�飬��Ҫ����ԱȨ��
rem win10 ��certmgr.exe������win 7û�� certmgr.exe
rem certmgr.exe /c /add C:\ca.crt /s root

rem ����֤�鵽������֤��䷢��,֤��·�������ʵ���������
certutil -addstore root ./ca/ca.crt

pause