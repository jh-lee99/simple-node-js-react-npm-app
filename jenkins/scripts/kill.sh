#!/usr/bin/env sh

echo '다음 명령어는 PID를 사용하여 "npm start" 프로세스를 종료합니다.'
echo '(".pidfile"에 기록된), 이 모든 작업은 "deliver.sh"가 실행될 때 수행되었습니다.'
set -x
kill $(cat .pidfile)
