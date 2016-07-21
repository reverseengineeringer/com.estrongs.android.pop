.class public Lcom/dianxinos/library/notify/f/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Ljava/io/File;

.field private static final c:Ljava/io/File;

.field private static final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/f/a;->c:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/f/a;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/dianxinos/library/notify/f/a;->b:Ljava/io/File;

    const-string v2, "/.estrongs/dianxin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/f/a;->a:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/dianxinos/library/notify/f/a;->a:Ljava/io/File;

    invoke-static {}, Lcom/dianxinos/library/notify/j/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/notify/f/a;->d:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, ".cache"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/dianxinos/library/notify/f/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/f/a;->c:Ljava/io/File;

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/dianxinos/library/notify/j/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/f/a;->d:Ljava/io/File;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(ZLjava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, ".cache"

    invoke-static {v0, p1, p0}, Lcom/dianxinos/library/notify/f/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static b(ZLjava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "download"

    invoke-static {v0, p1, p0}, Lcom/dianxinos/library/notify/f/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
