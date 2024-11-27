var builder = WebApplication.CreateBuilder(args);

// ��������� CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder =>
    {
        builder.AllowAnyOrigin() // ��������� ������� � ������ ������
               .AllowAnyMethod() // ��������� ����� HTTP-������
               .AllowAnyHeader(); // ��������� ����� ���������
    });
});

builder.Services.AddControllers();
builder.Services.AddRazorPages();

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

// ���������� CORS
app.UseCors("AllowAll");

app.UseAuthorization();

app.MapRazorPages();
app.MapControllers();

app.Run();
