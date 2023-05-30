<script>
    function processMatching() {
      // 获取用户输入的进程结果
      var processResult = document.getElementById("processResult").value;

      // 读取 av.json 文件
      var xhr = new XMLHttpRequest();
      xhr.open('GET', 'Process.json', true);
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
          // 解析 JSON 数据
          var data = JSON.parse(xhr.responseText);

          // 匹配进程并显示结果
          var matchedProcesses = [];
          for (var process in data) {
            if (processResult.indexOf(process) !== -1) {
              var processName = data[process];
              var styledProcessName = '<font color="#996600">' + processName + '</font>';
              matchedProcesses.push([process, styledProcessName]);
            }
          }

          // 更新页面结果
          var resultElement = document.getElementById("result");
          if (matchedProcesses.length > 0) {
            // 创建表格元素
            var table = document.createElement('table');
            var tbody = document.createElement('tbody');

            // 添加表头行
            var thead = document.createElement('thead');
            var headerRow = document.createElement('tr');
            var th1 = document.createElement('th');
            var th2 = document.createElement('th');
            th1.textContent = '系统进程';
            th2.textContent = '进程名称';
            headerRow.appendChild(th1);
            headerRow.appendChild(th2);
            thead.appendChild(headerRow);
            table.appendChild(thead);

            // 添加数据行
            for (var i = 0; i < matchedProcesses.length; i++) {
              var rowData = matchedProcesses[i];
              var row = document.createElement('tr');
              var cell1 = document.createElement('td');
              var cell2 = document.createElement('td');
              cell1.textContent = rowData[0];
              cell2.innerHTML = rowData[1]; // 使用 innerHTML 插入样式标签
              row.appendChild(cell1);
              row.appendChild(cell2);
              tbody.appendChild(row);
            }

            table.appendChild(tbody);
            resultElement.innerHTML = '';
            resultElement.appendChild(table);
          } else {
            resultElement.innerHTML = "暂无匹配";
          }
        }
      };
      xhr.send();
    }
  </script>