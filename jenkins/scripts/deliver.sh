#!/usr/bin/env sh

echo '다음 "npm" 명령어는 Node.js/React 애플리케이션을 로컬 "build" 디렉토리(즉, "/var/jenkins_home/workspace/simple-node-js-react-app" 디렉토리 내)에 프로덕션용으로 빌드합니다.'
echo '이 명령어는 React를 프로덕션 모드로 올바르게 번들링하고 최상의 성능을 위해 빌드를 최적화합니다.'
set -x
npm run build
set +x

echo '다음 "npm" 명령어는 Node.js/React 애플리케이션을 개발 모드로 실행하고 웹 브라우징을 통해 애플리케이션에 접근할 수 있도록 합니다.'
echo '"npm start" 명령어 뒤에는 앰퍼샌드(&)가 붙어 명령어가 백그라운드 프로세스(즉, 비동기적으로)로 실행됩니다.'
echo '그렇지 않으면 이 명령어는 CI/CD 애플리케이션의 실행 중인 빌드를 무기한으로 중지시킬 수 있습니다.'
echo '"npm start" 다음에는 이전에 실행된 프로세스(즉, "npm start")의 프로세스 ID(PID) 값을 검색하여'
echo '이 값을 ".pidfile" 파일에 쓰는 다른 명령어가 따릅니다.'
set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo '이제...'
echo 'http://localhost:3000을 방문하여 실행 중인 Node.js/React 애플리케이션을 확인하세요.'
echo '(이것이 Jenkinsfile로 초기 파이프라인을 생성할 때 "args ''-p 3000:3000''" 매개변수를 지정한 이유입니다.)'
