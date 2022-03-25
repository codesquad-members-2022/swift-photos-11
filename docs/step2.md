# Step02. 사진 앨범 접근

## 요구사항

- [x] UINavigationController를 Embed시키고, 타이틀을 'Photos'로 지정한다.
- [x] PHAsset 프레임워크를 사용해서 사진보관함에 있는 사진 이미지를 Cell에 표시한다.
- [x] CollectionView Cell 크기를 100 x 100 로 변경한다.
- [x] Cell을 처리하기 위한 커스텀 클래스를 만들어서 지정한다.
- [x] Cell을 가득 채우도록 UIImageView를 추가한다.
- [ ] PHCachingImageManager 클래스를 활용해서 썸네일 이미지를 100 x 100 크기로 생성해서 Cell에 표시한다.
- [ ] PHPhotoLibrary 클래스에 사진보관함이 변경되는지 여부를 옵저버로 등록한다.

## 작업 내용

1. UINavigationController embed
2. Photos - PHImageManager 를 사용해 썸네일 이미지 가져오기
3. 앨범 접근 권한 설정
4. 컬렉션 뷰에서 사용할 커스텀 셀인 AlbumCell 생성
5. 앨범에서 가져온 이미지를 컬렉션 뷰의 셀에 적용

## 실행 이미지

![실행 이미지](https://user-images.githubusercontent.com/12508578/160072601-12ab135e-531a-4145-85d0-85a93d82feb3.png)
