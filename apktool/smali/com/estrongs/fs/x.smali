.class public Lcom/estrongs/fs/x;
.super Lcom/estrongs/fs/a;


# instance fields
.field protected displayName:Ljava/lang/String;

.field private mOriginalLastModified:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/w;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;)V

    iput-object p3, p0, Lcom/estrongs/fs/x;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/w;)V

    iput-object p4, p0, Lcom/estrongs/fs/x;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doGetFileType()Lcom/estrongs/fs/w;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    return-object v0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/x;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/x;->displayName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/x;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getOriginalLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/x;->mOriginalLastModified:J

    return-wide v0
.end method

.method public final getRealLastModified()J
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/fs/x;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/x;->displayName:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalLastModified(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/fs/x;->mOriginalLastModified:J

    return-void
.end method

.method public setTotalSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/fs/x;->size:J

    return-void
.end method
