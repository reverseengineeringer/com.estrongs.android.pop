.class public Lcom/estrongs/fs/impl/h/d;
.super Lcom/estrongs/fs/impl/media/e;


# static fields
.field private static a:Lcom/estrongs/fs/impl/h/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/impl/media/e;-><init>()V

    return-void
.end method

.method public static b()Lcom/estrongs/fs/impl/h/d;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/h/d;->a:Lcom/estrongs/fs/impl/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/h/d;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/h/d;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/h/d;->a:Lcom/estrongs/fs/impl/h/d;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/h/d;->a:Lcom/estrongs/fs/impl/h/d;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/h/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/h/a;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/estrongs/android/util/bg;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    if-lez v0, :cond_1

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
