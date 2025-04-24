# Email Server Setup / 이메일 서버 설정

This repository contains the configuration and setup for a local email server using Apache James.
이 저장소는 Apache James를 사용한 로컬 이메일 서버의 설정과 구성을 포함하고 있습니다.

## Prerequisites / 필수 조건

- Java 8 or higher / Java 8 이상
- Apache James server installed / Apache James 서버 설치
- Basic knowledge of email protocols (SMTP, IMAP) / 이메일 프로토콜(SMTP, IMAP) 기본 지식

## Installation / 설치

1. Download and install Apache James server from the official website / 공식 웹사이트에서 Apache James 서버를 다운로드하고 설치
2. Configure the server settings in `conf/` directory / `conf/` 디렉토리에서 서버 설정 구성
3. Start the James server using the provided startup script / 제공된 시작 스크립트를 사용하여 James 서버 시작

## Configuration / 설정

The server comes pre-configured with the following settings:
서버는 다음과 같은 설정으로 미리 구성되어 있습니다:

- SMTP port: 25
- IMAP port: 143
- POP3 port: 110
- Web Admin port: 8080

## Usage / 사용 방법

### Adding Users / 사용자 추가

To add a new user to the email server, use the following command:
이메일 서버에 새 사용자를 추가하려면 다음 명령어를 사용하세요:

```bash
./james-cli.sh adduser <email> <password>
```

Example / 예시:
```bash
./james-cli.sh adduser aaa@email.com aaabbb123!
```

### Managing Email Accounts / 이메일 계정 관리

- Use any standard email client (Thunderbird, Outlook, etc.) to connect to the server
  표준 이메일 클라이언트(Thunderbird, Outlook 등)를 사용하여 서버에 연결
- Configure your email client with the following settings:
  이메일 클라이언트를 다음과 같이 설정하세요:
  - SMTP server: localhost
  - SMTP port: 25
  - IMAP server: localhost
  - IMAP port: 143

## Troubleshooting / 문제 해결

If you encounter any issues:
문제가 발생한 경우:

1. Check the server logs in the `logs/` directory
   `logs/` 디렉토리에서 서버 로그를 확인하세요
2. Verify that all required ports are available and not blocked
   필요한 모든 포트가 사용 가능하고 차단되지 않았는지 확인하세요
3. Ensure the James server is running properly
   James 서버가 제대로 실행되고 있는지 확인하세요

## Security Notes / 보안 참고사항

- Change default passwords immediately after installation
  설치 후 즉시 기본 비밀번호를 변경하세요
- Configure SSL/TLS for secure connections
  보안 연결을 위해 SSL/TLS를 구성하세요
- Regularly update the server software
  서버 소프트웨어를 정기적으로 업데이트하세요
- Monitor server logs for suspicious activities
  의심스러운 활동에 대해 서버 로그를 모니터링하세요