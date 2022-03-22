# Photos. 11 조
- Ocean
- Rosa


# 📌 Convention

### Swift 스타일

👉  [참고문서](https://gist.github.com/godrm/d07ae33973bf71c5324058406dfe42dd)

### commit

👉 [참고 문서](https://sujinlee.me/professional-github/)

제목의 처음은 동사 원형으로 시작하고 첫 글자는 소문자로 작성. 내용은 한글로 작성
"fixed", "added", "changed" 등 과거 시제가 아닌 "fix", "add", "change"로 명령어로 시작한다. 
총 글자 수는 50자 이내며 마지막에 마침표(.)를 붙이지 않는다.

이슈에 커밋 자동 등록 하기위해 이슈 번호를 제목 뒤에 기재한다.

- `feat`: 새로운 기능을 추가할 경우
- `fix`: 버그를 고친 경우
- `docs`: 문서 수정한 경우
- `style`: 코드 포맷 변경, 세미 콜론 누락, 코드 수정이 없는 경우
- `refactor`: 프로덕션 코드 리팩터링
- `test`: 테스트 추가, 테스트 리팩터링 (프로덕션 코드 변경 없음)
- `chore`: 빌드 테스크 업데이트, 패키지 매니저 설정할 경우 (프로덕션 코드 변경 없음)

예)

```
키워드: 작업에 대한 제목 (#이슈번호)

예)
feat: CollectionView 구현 (#1)
```

### issue 스타일

- 이슈 제목의 머릿말은 **대문자**로 한다.
    - [키워드] 작업에 대한 제목
    - 예) `[FEAT] CollectionView 생성`
- 내용
    
    ```
    ## 💡 Issue
    [FEAT] CollectionView 구현
    
    ## 📝 todo
    [ ] 작업1
    [ ] 작업2
    [ ] 작업3
    ```

### git flow

👉 [참고 문서](https://uxgjs.tistory.com/183)

<img width="760" alt="team 11: git flow" src="https://user-images.githubusercontent.com/12508578/159415663-a24ce6b2-0e4f-4c6a-8cdb-a973fa866db7.png">


- `main`
    - 최신 버전이 반영된 기준이 되는 브랜치
- `develop`
    - 개발 브랜치. 개발자들은 이 브랜치를 기준으로 작업
- `feature-xx`
    - 단위 기능 개발 브랜치.
    - `develop` 을 기준으로 개발
    - `xx` 는 issue 의 고유번호가 된다.
- `step-xx`
    - 모든 기능이 완성된 후에 `develop` 에 모인 완성된 기능을 `step-xx` 브랜치에 합친다.
    - 일반적인 git flow 에서 **release** 기능을 하는 브랜치
    - `xx` 는 미션의 각 step 번호가 된다.
    - **tag** 달아보기: 예)`step1.0`, `step2.0`

### 작업 시간

- 짝 코딩 시간:
    - 3시-5시(2시간)
- 그 외의 시간
    - 각 기능 브랜치 따서 만들어서 각자 개발
    - 간단한 질문
    - 시간이 길게 드는 문제는 정리 후, 짝 코딩시간에 같이 해보면서 해결
