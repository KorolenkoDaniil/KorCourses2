var builder = WebApplication.CreateBuilder(args);

// Добавляем сервисы для работы с контроллерами
builder.Services.AddControllers();

var app = builder.Build();

// Настройка конвейера обработки запросов
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}

app.UseStaticFiles();

app.UseRouting();


app.MapControllers();  // Это важно для работы с API

app.Run();
