document.addEventListener("DOMContentLoaded", () => {
  const rows = document.querySelectorAll("table.memo.list tbody tr");
  rows.forEach((row) => {
    row.addEventListener("click", () => {
      const m_seq = row.getAttribute("data-st_num");
      window.location.href = `${rootPath}/detail?m_seq=${m_seq}`;
    });
  });
});
