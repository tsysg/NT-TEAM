local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "CẬP NHẬT MỚI!",
    SubTitle = "Hệ thống thông báo",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 260),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local MainTab = Window:AddTab({ Title = "Thông Báo", Icon = "bell" })

MainTab:AddParagraph({
    Title = "📢 Script Đã Có Bản Cập Nhật Mới!",
    Content = "Phiên bản bạn đang dùng đã cũ. Vui lòng tham gia máy chủ Discord bên dưới để lấy bản script mới nhất và sử dụng các tính năng mới."
})

MainTab:AddButton({
    Title = "Sao Chép Link Discord",
    Description = "Nhấn để copy link vào bộ nhớ tạm",
    Callback = function()
        if setclipboard then
            setclipboard("https://discord.gg/7SgcVKVHc")
            Fluent:Notify({
                Title = "Thành công!",
                Content = "Đã sao chép link Discord vào khay nhớ tạm.",
                Duration = 4
            })
        else
            Fluent:Notify({
                Title = "Lỗi",
                Content = "Executive của bạn không hỗ trợ setclipboard.",
                Duration = 4
            })
        end
    end
})

Fluent:Notify({
    Title = "Cảnh Báo Cập Nhật",
    Content = "Đã có phiên bản mới! Hãy check trong menu.",
    Duration = 8
})
