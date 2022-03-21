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
