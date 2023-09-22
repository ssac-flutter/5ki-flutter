import { useState } from "react";

function ImageSearchApp() {
  async function search() {
    const query = document.getElementById("query").value;

    // 이미지 검색
    const response = await fetch(
      `https://pixabay.com/api/?key=37903563-6461cb0081fd824b159c4d78b&q=${query}&image_type=photo&pretty=true`
    );
    const jsonData = await response.json();
    console.log(jsonData["hits"]);

    // 업데이트
    setImages(jsonData["hits"]);
  }

  const [images, setImages] = useState([
    {
      imageUrl:
        "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202309/15/ca01b6e3-7804-42a8-aebd-96369ca23f47.jpg",
    },
    {
      imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Kwon_Eunbi_in_July_2021.png/250px-Kwon_Eunbi_in_July_2021.png",
    },
    {
      imageUrl:
        "https://img.gqkorea.co.kr/gq/2023/08/style_64d2facbbec4d-1018x1400.jpg",
    },
  ]);

  return (
    <div>
      <input id="query"></input>
      <button onClick={search}>검색</button>
      <ul>
        {images.map((image) => (
          <img
            key={image.previewURL}
            width="100"
            height="100"
            src={image.previewURL}
            alt="사진임"
          />
        ))}
      </ul>
    </div>
  );
}

export default ImageSearchApp;
