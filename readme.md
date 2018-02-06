<p align="center">
    <img src="3rd/icon.png">
    <h3 align="center">PandoraBox | ˽����Ϣ���ݹ���</h3>
    <p align="center">
         ���ڷǶԳƼ���(RSA)��˽����Ϣ���ݹ��ߣ������ɱ��ؿͻ��˽��м��ܡ����ܲ���������ͨ��������д��䣬ȷ����Ϣ�İ�ȫ�ԣ�
         <br>
         <a href="https://github.com/gy-games/pandorabox"><strong>-- Browse Website --</strong></a>
         <br>
         <br>
         <a href="https://github.com/gy-games/pandorabox/releases">
             <img src="https://img.shields.io/github/release/gy-games/pandorabox.svg" >
         </a>
         <a href="https://github.com/gy-games/pandorabox/blob/master/LICENSE">
             <img src="https://img.shields.io/hexpm/l/plug.svg" >
         </a>
    </p>    
</p>

# ϵͳ���� #
PandoraBox ��Server��Client��������ɣ�Serverʹ��Java SpringBoot��д�����ݴ洢ΪMysql����ӭҳ��ʹ��iview��д��Clientʹ��C#��д�����ݴ洢Ϊsqlite��Clientʹ��inno setup���Ϊ��װ������Ϊ�˷�����ٵ���Ϣ���ͣ�Server�����ݽṹ����Ҫά��һ���û���֤��ϵ���û���֯�ṹ��ĿǰPandoraBox���ɷ����ı���Ϣ��

# ���˼· #

![arch.png](3rd/arch.png "")

- PandoraBox Client���س�ʼ��ʱ����RSA��Կ��˽Կ����Կ�ϴ���PandoraBox Server��˽Կͨ�����õı����������DES����
- �û�����˽����Ϣʱ��PandoraBox Client��PandoraBox Server�����ȡ�����߹�Կ��������Ϣʹ�ô˹�Կ���м��ܺ���������
- �û�����˽����Ϣʱ��PandoraBox Client��PandoraBox Server�����ȡ���ģ�ͨ��������������Լ���RSA˽Կ����ͨ����˽Կ�������ĵĽ��ܹ���


# ��ι���������PandoraBox #


## PandoraBox Client

### STEP 1 �� ����PandoraBox Client�����Server�˵�ַ ##

��Client���̣�����Client�����App.config�� <add key="host" value="http://pandorabox.gyyx.cn"></add> �еġ�pandora.gyyx.cn��Ϊ�Լ������Server��ַ�����¹���Client����,Client�˱���ʱע��ѡ��Release��ʹ��InnoSetup���ʱ����ȡRelease���ļ��б�

### STEP 2 ��  ʹ��./Client/Setup/build_setup.iss ���´����װ��

InnoSetup���Ϊ��װ��ʱ����װ��������.\server\src\main\resources\static\software�ڣ���Web���أ�ʹ��InnoSetup�����ɺ��ٽ���Server�˵Ĵ��������Ϊ����WEB��ҳʱ�ɽ��пͻ��˵�����

## PandoraBox Server

### STEP 1 �� ��ʼ�����ݿⲢ��ʼ����Ա��֯�ṹ ###

��Ϊ�˷�����ٵ���Ϣ���ͣ�Server�����ݽṹ����Ҫά��һ���û���֤��ϵ���û���֯�ṹ����֯�ṹ����ͨ�����ַ�ʽ��ʼ����1��ֱ��������ݿ⣬2��ʵ��Pandora Server�˵�Ԥ���ӿ�

#### ����1��ֱ��������ݿ� ####

Pandora�����ݿ�ṹ�ǳ��򵥣�ֻ�����ű�,�û�����ֱ�ӽ����ݵ��벿�ű����û����ɡ��û�������ʹ��MD5���ܣ�Ҳ�����գ�

![pdm.png](3rd/pdm.png "")

#### ����2��ʵ��PandoraBox Server�˵�Ԥ������ ####

�� **cn.gyyx.pandora.thirdparty** ��Ԥ���˼���������
- Boolean thridAuth(String username,String passwd) �������ӿ��û���֤ �������ڴ�ʵ�ֻ�������OA����֤ϵͳ����֤�����û�������������ʱ�������ô˷�������Ȩ����֤
- void saveUserList() ����Ա���б� �� ���ڴ�ʵ��д���û���ķ���
- void saveDeptList(String pdid) ���沿���б����ڴ�ʵ��д����֯�ṹ�б�ķ���
- void updateOffwork() ����Ա��״̬ �����ڴ�ʵ�ָ����û�״̬����

Ŀǰ��ʱ�����õ�ÿ��2��ִ��һ�Σ��ɸ�������޸�run����ע��

### STEP 2 ���������

ע����ǰһ��Ҫ�ȱ���Client���������ҳ���޷�����Client��װ������������ַΪ.\server\src\main\resources\static\software\PandoraBox.exe�����������Jar�� java -jar ��������

# ���ʹ��PandoraBox�շ���Ϣ #

## STEP 1 �� ��ʼ��������Կ ##

![step1.png](3rd/step1.png "")

## STEP 2 �� ���ʺ� ##

![step2.png](3rd/step2.png "")

## STEP 3 �� �շ���Ϣ ##

![step3.png](3rd/step3.png "")


# �������� #

- ˽����Ϣ���ͺ��û�������ȡһ�Σ���ȡ��Ὣ���Ĵ��뱾�أ�ÿ�ε��ʱ����
- ����Ҫ�ض���web��ҳ�����ݣ����Ա༭.\server\fe���̺� npm run build ��ע��ɾ��.\server\src\main\resources\static��ǰ�����ݣ�