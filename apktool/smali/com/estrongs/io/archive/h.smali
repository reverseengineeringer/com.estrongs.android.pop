.class public Lcom/estrongs/io/archive/h;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:I

.field c:I

.field private d:Lcom/estrongs/io/a/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    iput v2, p0, Lcom/estrongs/io/archive/h;->b:I

    iput v2, p0, Lcom/estrongs/io/archive/h;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/io/a/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    iput v2, p0, Lcom/estrongs/io/archive/h;->b:I

    iput v2, p0, Lcom/estrongs/io/archive/h;->c:I

    iput-object p1, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/a/d;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    return-wide v0
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/io/archive/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/h;->c:I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/estrongs/io/archive/h;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/io/archive/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/h;->b:I

    iget-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/io/archive/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/h;->b:I

    iget-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/estrongs/io/archive/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/h;->c:I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    sget-object v2, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/io/archive/h;->a(Ljava/io/File;)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/estrongs/io/archive/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/io/archive/h;->b:I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->e(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_6

    iget-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    goto/16 :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/estrongs/io/archive/h;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/io/archive/h;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/io/archive/h;->c:I

    return v0
.end method
