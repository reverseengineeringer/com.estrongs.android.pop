.class public Lcom/estrongs/fs/impl/a/c;
.super Lcom/estrongs/fs/impl/media/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/impl/media/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/a/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/a/a;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.apk"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
