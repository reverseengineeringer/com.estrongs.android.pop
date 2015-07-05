.class public Lcom/estrongs/io/archive/sevenzip/r;
.super Lcom/estrongs/io/archive/h;


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/io/archive/sevenzip/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/estrongs/io/archive/sevenzip/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SevenZipInArchive"

    sput-object v0, Lcom/estrongs/io/archive/sevenzip/r;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/io/archive/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->c:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/io/archive/sevenzip/s;

    invoke-direct {v2, p0}, Lcom/estrongs/io/archive/sevenzip/s;-><init>(Lcom/estrongs/io/archive/sevenzip/r;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/estrongs/io/archive/sevenzip/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/c;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->g:Z

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/io/archive/sevenzip/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->j:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/io/a/b;)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->b()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->c()V

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->b()I

    move-result v4

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->c()I

    move-result v1

    add-int/2addr v1, v4

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->c:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/io/archive/sevenzip/t;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/io/archive/sevenzip/t;-><init>(Lcom/estrongs/io/archive/sevenzip/r;Lcom/estrongs/io/a/b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/io/archive/sevenzip/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->c()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/sevenzip/r;->a(Ljava/util/List;Lcom/estrongs/io/a/b;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/io/a/b;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->a:J

    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/r;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    :cond_3
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->c()V

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->b()I

    move-result v4

    invoke-virtual {v1}, Lcom/estrongs/io/archive/g;->c()I

    move-result v1

    add-int/2addr v1, v4

    invoke-interface {p2, v0, v2, v3, v1}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->c:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/io/archive/sevenzip/v;

    invoke-direct {v3, p0, p2}, Lcom/estrongs/io/archive/sevenzip/v;-><init>(Lcom/estrongs/io/archive/sevenzip/r;Lcom/estrongs/io/a/b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/io/archive/sevenzip/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/estrongs/io/archive/sevenzip/c;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/r;->c()V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/c;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/r;->c:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/io/archive/sevenzip/u;

    invoke-direct {v3, p0}, Lcom/estrongs/io/archive/sevenzip/u;-><init>(Lcom/estrongs/io/archive/sevenzip/r;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/io/archive/sevenzip/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/sevenzip/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->h:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->h:Ljava/util/List;

    return-void
.end method

.method public d(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 3

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/sevenzip/r;->a(Ljava/util/List;Lcom/estrongs/io/a/b;)V

    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/io/archive/h;->d()V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/c;->a()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->l:Lcom/estrongs/io/archive/sevenzip/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/sevenzip/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/r;->k:Ljava/lang/String;

    return-void
.end method

.method protected i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/r;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/estrongs/io/archive/sevenzip/w;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/io/archive/sevenzip/w;-><init>(Lcom/estrongs/io/archive/sevenzip/r;Ljava/util/Iterator;)V

    return-object v1
.end method
