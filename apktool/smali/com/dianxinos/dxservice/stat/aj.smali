.class Lcom/dianxinos/dxservice/stat/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dianxinos/dxservice/stat/af;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/stat/af;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/aj;->c:Lcom/dianxinos/dxservice/stat/af;

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/aj;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/dianxinos/dxservice/stat/aj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/aj;->a:Landroid/content/SharedPreferences;

    const-string v1, "m"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/aj;->c:Lcom/dianxinos/dxservice/stat/af;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/aj;->c:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v2}, Lcom/dianxinos/dxservice/stat/af;->a(Lcom/dianxinos/dxservice/stat/af;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dianxinos/DXStatService/a/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dianxinos/dxservice/stat/af;->a(Lcom/dianxinos/dxservice/stat/af;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/aj;->c:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v2, v0, v1}, Lcom/dianxinos/dxservice/stat/af;->b(Lcom/dianxinos/dxservice/stat/af;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/aj;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mn"

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/aj;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "m"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.HwInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved carrier info for Phone: carrier["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/aj;->c:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/af;->a(Lcom/dianxinos/dxservice/stat/af;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/h;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/a/h;->c()V

    :cond_1
    return-void
.end method
