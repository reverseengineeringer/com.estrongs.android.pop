.class public Lcom/estrongs/android/pop/app/b/i;
.super Lcom/estrongs/fs/a;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/android/pop/app/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iput-wide p5, p0, Lcom/estrongs/android/pop/app/b/i;->lastModified:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/fs/a;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/i;->absolutePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/i;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/i;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/estrongs/android/pop/app/b/i;->size:J

    iput-object p5, p0, Lcom/estrongs/android/pop/app/b/i;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/i;->setFileType(Lcom/estrongs/fs/w;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/i;->setFileType(Lcom/estrongs/fs/w;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/app/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iput-wide p6, p0, Lcom/estrongs/android/pop/app/b/i;->lastModified:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/i;->b:Ljava/lang/String;

    return-void
.end method
