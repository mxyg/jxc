var test = [
    "111607011016061",
    "11161010102116",
    "*+E1782608510281l*",
    "0106939488379060111411111014090062050",
    "0106940309841352"
]

function scanDeCode(code) {
    var result = { 'barCode': '', 'proDate': '', 'serial': '', 'inspector': '', 'deadline': ''}; 
    // 检验员
    var inspector = $("#inspector").length ? $("#inspector").val() : "";
    // 期限
    var deadline = $("#deadline").length ? $("#deadline").val() : "";
    // 长度
    var codeLen = code.length;
    var deadlineLen = deadline.length;
    var inspectorLen = inspector.length;
   
    if (inspectorLen == 0 && deadlineLen == 0) {
        // 没有设置检测员和期限，默认全为主码
        if (codeLen >= 27) {
            // 长条形码,默认规则
            result["barCode"] = code.substr(0, 16);
            result["proDate"] = code.substr(18, 6);
            result["serial"] = code.substr(26);
            result["inspector"] = code.substr(16, 2);
            result["deadline"] = code.substr(24, 2);

        } else {
            result['barCode'] = code;
        }
    } else {
        if (codeLen >= 27) {
            // 长条形码
            // 获取主码 
            barCode = code.substr(0, 16);
            // 获取日期
            endCode = code.substr(16);
            proDate = endCode.substr(inspectorLen, 6);
            // 获取批号
            endCode = endCode.substr(inspectorLen+6);
            serial = endCode.substr(deadlineLen);
            result["barCode"] = barCode;
            result["proDate"] = proDate;
            result["serial"] = serial;
        } else {
            // 短条形码:日期批号
            // 获取日期
            proDate = code.substr(inspectorLen, 6);
            // 获取批号 
            endCode = code.substr(inspectorLen+6);
            serial = endCode.substr(deadlineLen);
            result["proDate"] = proDate;
            result["serial"] = serial;
        }
        result["inspector"] = inspector;
        result["deadline"] = deadline;
    }
    console.log(result);
    return result;
}

// 新增商品，扫码方法
function scanGoodsCode(code) {
    var r = scanDeCode(code);
    if (r["barCode"] && $("#barCode").length) {
        $("#barCode").val(r["barCode"]);
    } 
    if (r["proDate"] && $("#proDate").length) {
        $("#proDate").val(r["proDate"]);
    } 
    if (r["serial"] && $("#serial").length) {
        $("#serial").val(r["serial"]);
    } 
    var i = $("#inspector");
    var d = $("#deadline");

    if (i.val() == "" && d.val() == "") {
        i.val(r["inspector"]);
        d.val(r["deadline"]);
    }
}

// 新增商品，扫码框监听
if ($("#manage-form").length) {
    var s = $("#scanCode");
    s.bind('input propertychange', function () {
        code = s.val();
        scanGoodsCode(code);
    })

}
