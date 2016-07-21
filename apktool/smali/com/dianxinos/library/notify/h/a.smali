.class public Lcom/dianxinos/library/notify/h/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/b/b/b;

.field private static b:Lcom/dianxinos/library/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notify_items"

    invoke-static {}, Lcom/dianxinos/library/notify/data/k;->b()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dianxinos/library/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;[C)Lcom/dianxinos/library/b/b/b;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/a;->a:Lcom/dianxinos/library/b/b/b;

    sget-object v0, Lcom/dianxinos/library/notify/h/a;->a:Lcom/dianxinos/library/b/b/b;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/b/b/b;->a(Ljava/lang/String;)Lcom/dianxinos/library/b/b/a;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/a;->b:Lcom/dianxinos/library/b/b/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dianxinos/library/notify/download/DownloadInfo;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/dianxinos/library/notify/h/a;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v1, p0, v0}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/dianxinos/library/notify/download/DownloadInfo;->fromString(Ljava/lang/String;)Lcom/dianxinos/library/notify/download/DownloadInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/h/a;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v0}, Lcom/dianxinos/library/b/b/a;->a()V

    return-void
.end method

.method public static a(Lcom/dianxinos/library/notify/download/DownloadInfo;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/download/DownloadInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dianxinos/library/notify/h/a;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v2, v0, v1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
