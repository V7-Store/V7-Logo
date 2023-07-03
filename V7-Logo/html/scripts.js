$(() => {
  window.addEventListener("message", function (event) {
    if (event.data.action == "open") {
      $(".div_img").append(`
      <img id="img_1" class="img_1" src="${event.data.img}"></img>
      `);
    }});
});