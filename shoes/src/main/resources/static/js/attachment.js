/**
 *
 */

const attachment = document.querySelector("#attachment");

//파일 첨부시 파일명 오름차순으로 정렬, 첨부 파일 put
attachment.addEventListener("change", () => {
  const formData = new FormData();

  const fileList = Array.from(attachment.files);
  fileList.sort((a, b) => {
    return a.name.localeCompare(b.name);
  });
  fileList.forEach((file) => {
    formData.append("attachment", file);
  });

  fetch("/attachment", {
    method: "put",
    // headers: {
    //   "X-CSRF-TOKEN": csrfToken,
    // },
    body: formData,
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error("파일 업로드 실패");
      }
      return response.json();
    })
    .then((data) => {
      showAttachments(data);
    })
    .catch((error) => console.log(error));
});

function showAttachments(attachmentList) {
  let str = "";
  attachmentList.forEach((item, idx) => {
    let fileCallPath = encodeURIComponent(
      item.uploadPath + "\\thumb_" + item.uuid + "_" + item.fileName
    );
    console.log(fileCallPath);
    str +=
      '<div class="col cards" data-path="' +
      item.uploadPath +
      '" data-uuid="' +
      item.uuid +
      '" data-filename="' +
      item.fileName +
      '">';
    str += '<div class="card col" style="width: 10rem;">';
    str +=
      '<img src="/attachment?fileName=' +
      fileCallPath +
      '" class="card-img-top">';
    str += '<div class="card-body">';
    str += '<p class="card-text">' + item.fileName + "</p>";
    str += "</div>";
    str += '<div class="card-footer">';
    str +=
      '<small class="text-muted">' +
      (idx == 0 ? "대표 이미지" : "부가 이미지") +
      "</small>";
    str +=
      '<button type="button" class="btn btn-sm btn-circle btn-outline-danger" data-file="' +
      fileCallPath +
      '"data-type="file"> X </button>';
    str += "</div>";
    str += "</div>";
    str += "</div>";
  });
  document
    .querySelector(".attachmentResult")
    .insertAdjacentHTML("beforeend", str);
}

// x버튼 클릭 시 카드 삭제
// attachment.addEventListener("click", (e) => {
//   if (e.target.tagName === "BUTTON") {
//     const targetFile = e.target.dataset.file;
//     const div = e.target.closest("div").closest("div").closest("div");

//     if (confirm("정말로 파일을 삭제하시겠습니까?")) {
//       const formData = new FormData();
//       formData.append("fileName", targetFile);
//     }
//   }
// });
