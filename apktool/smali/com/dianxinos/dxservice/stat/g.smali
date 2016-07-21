.class Lcom/dianxinos/dxservice/stat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/e;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/stat/e;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/g;->a:Lcom/dianxinos/dxservice/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.AppInfoService"

    const-string v1, "Enter in ReportAppInfoJob!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/g;->a:Lcom/dianxinos/dxservice/stat/e;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/e;->a(Lcom/dianxinos/dxservice/stat/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.AppInfoService"

    const-string v2, "ReportAppInfoJob has exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
