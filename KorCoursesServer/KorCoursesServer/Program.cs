var builder = WebApplication.CreateBuilder(args);

// ��������� ������� ��� ������ � �������������
builder.Services.AddControllers();

var app = builder.Build();

// ��������� ��������� ��������� ��������
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}

app.UseStaticFiles();

app.UseRouting();


app.MapControllers();  // ��� ����� ��� ������ � API

app.Run();
