# 환경 설정
- Oracle Database 19c Docker Image를 Mac M1 or M2의 ARM아키텍처에서 도커라이징하려면 Colima 설치 및 실행을 선행해야한다.
  - colima 설치
      ```
      # Homebrew
      brew install colima
      ```
  - colima 실행
      ```
      colima start -m 4 -a x86_64
      ```
  
  
# 도커라이징
- docker 컨테이너 실행
    ```
    docker compose up -d
    ```
