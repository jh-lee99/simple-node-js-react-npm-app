#!/usr/bin/env sh

echo '다음 "npm" 명령어는 (실행될 경우) "cross-env" 의존성을'
echo '로컬 "node_modules" 디렉토리에 설치합니다. 이 디렉토리는 최종적으로'
echo 'Jenkins 홈 디렉토리에 저장됩니다. 다음 문서에 설명된 대로'
echo 'https://docs.npmjs.com/cli/install, "--save-dev" 플래그는'
echo '"cross-env" 의존성이 "devDependencies"로 설치되도록 합니다. 이 튜토리얼의'
echo '목적상 이 플래그는 중요하지 않습니다. 하지만'
echo '이 의존성을 설치할 때는 일반적으로 이 플래그를 사용합니다.'
echo '"devDependencies"에 대한 포괄적인 설명은 다음을 참조하세요.'
echo 'https://stackoverflow.com/questions/18875674/whats-the-difference-between-dependencies-devdependencies-and-peerdependencies.'
set -x
# npm install --save-dev cross-env # --save-dev 플래그로 cross-env 의존성 설치 (주석 처리됨)
set +x

echo '다음 "npm" 명령어는 간단한 Node.js/React 애플리케이션이'
echo '만족스럽게 렌더링되는지 테스트합니다. 이 명령어는 실제로 테스트'
echo '러너인 Jest(https://facebook.github.io/jest/)를 호출합니다.'
set -x
npm test # 애플리케이션 테스트 실행
