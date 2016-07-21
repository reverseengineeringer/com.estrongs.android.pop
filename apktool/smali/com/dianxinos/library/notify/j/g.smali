.class public Lcom/dianxinos/library/notify/j/g;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/j/g;->a:Landroid/content/Context;

    sput-object v1, Lcom/dianxinos/library/notify/j/g;->b:Ljava/lang/String;

    sput-object v1, Lcom/dianxinos/library/notify/j/g;->c:Ljava/lang/String;

    sput-object v1, Lcom/dianxinos/library/notify/j/g;->d:Ljava/lang/String;

    sput-object v1, Lcom/dianxinos/library/notify/j/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/j/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/j/g;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/j/g;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dianxinos/library/notify/j/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/j/g;->d:Ljava/lang/String;

    sget-object v0, Lcom/dianxinos/library/notify/j/g;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/dianxinos/library/notify/j/g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/j/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/j/g;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/j/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "notify"

    return-object v0
.end method
