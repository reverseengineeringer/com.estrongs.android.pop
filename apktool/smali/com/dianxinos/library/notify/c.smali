.class public Lcom/dianxinos/library/notify/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/library/notify/c;->a:Landroid/content/Context;

    sput-object v0, Lcom/dianxinos/library/notify/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/dianxinos/library/notify/c;->c:Ljava/lang/String;

    sput-object v0, Lcom/dianxinos/library/notify/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;
    .locals 1

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dianxinos/library/notify/h/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/dianxinos/library/notify/j/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dianxinos/library/notify/data/j;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".apk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".jar"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, v1, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1, p1}, Lcom/dianxinos/library/notify/f/a;->b(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v1}, Lcom/dianxinos/library/notify/data/i;->e()Z

    move-result v1

    goto :goto_1
.end method

.method public static a(Lcom/dianxinos/library/notify/g;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/g;->b:Z

    sput-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/g;->b:Z

    sput-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->d:Ljava/lang/String;

    sput-object v0, Lcom/dianxinos/library/dxbase/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->c:Ljava/lang/String;

    sput-object v0, Lcom/dianxinos/library/notify/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->e:Ljava/lang/String;

    sput-object v0, Lcom/dianxinos/library/notify/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->f:Ljava/lang/String;

    sput-object v0, Lcom/dianxinos/library/notify/c;->d:Ljava/lang/String;

    sget-object v0, Lcom/dianxinos/library/notify/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/library/notify/c/g;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/dianxinos/library/notify/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/library/notify/network/m;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/dianxinos/library/notify/c;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->a()Lcom/dianxinos/library/notify/dispatcher/b;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/dianxinos/library/notify/b/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "others"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/c;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dianxinos/library/notify/h/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/c;->d:Ljava/lang/String;

    return-object v0
.end method
