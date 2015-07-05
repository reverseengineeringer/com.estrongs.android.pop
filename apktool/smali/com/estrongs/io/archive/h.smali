.class public abstract Lcom/estrongs/io/archive/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/estrongs/io/model/ArchiveEntryFile;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation
.end field

.field protected f:[B

.field protected g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->i:Ljava/util/List;

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    iput-object v3, p0, Lcom/estrongs/io/archive/h;->f:[B

    iput-boolean v2, p0, Lcom/estrongs/io/archive/h;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/io/archive/h;->j:Z

    iput-object p1, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/h;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->i:Ljava/util/List;

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    iput-object v3, p0, Lcom/estrongs/io/archive/h;->f:[B

    iput-boolean v2, p0, Lcom/estrongs/io/archive/h;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/io/archive/h;->j:Z

    iput-object p1, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "/"

    move-object v1, v0

    :goto_1
    const-string v0, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    const-string v1, "/"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/h;->c(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    const-string v2, "/"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/h;->c(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->attachChild(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const-string v0, "/.."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :goto_1
    const-string v0, "/../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/../"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    const-string p0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_5

    const-string p0, ""

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private l()Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 6

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->i()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->j:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening archive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    const-string v1, "/"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v4, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public a(Lcom/estrongs/io/a/b;)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Lcom/estrongs/io/archive/g;

    invoke-direct {v1}, Lcom/estrongs/io/archive/g;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->b()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->g()V

    throw v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->i()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->g()V

    return-void

    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/io/archive/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;Z)Z

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/estrongs/io/archive/h;->a(Ljava/lang/String;Lcom/estrongs/io/a/b;)V

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p2, v1, v2, v3}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/h;->d(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/h;->a(Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v2, v0, Lcom/estrongs/android/pop/app/compress/ae;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/estrongs/android/pop/app/compress/ae;

    iget v2, v0, Lcom/estrongs/android/pop/app/compress/ae;->e:I

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->g(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lcom/estrongs/android/pop/app/compress/ae;->e:I

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ae;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ae;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ae;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ae;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/io/a/b;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/l;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit16 v1, v1, 0x1ff

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->d()[I

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->d()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->d()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->b:I

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->d()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->c:I

    :cond_0
    invoke-static {p1, v0}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/local/q;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    .locals 9
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

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v0, 0x80000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->f:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/io/archive/h;->a:J

    new-instance v3, Lcom/estrongs/io/archive/g;

    invoke-direct {v3}, Lcom/estrongs/io/archive/g;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/estrongs/io/archive/h;->l()Lcom/estrongs/io/model/ArchiveEntryFile;

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lcom/estrongs/io/archive/g;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move v2, v1

    :goto_2
    iput-object v8, p0, Lcom/estrongs/io/archive/h;->f:[B

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V

    :cond_4
    throw v0

    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/estrongs/io/archive/g;->b()I

    move-result v1

    invoke-virtual {v3}, Lcom/estrongs/io/archive/g;->c()I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {p2, v0, v6, v7, v1}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iput-object v8, p0, Lcom/estrongs/io/archive/h;->f:[B

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V

    :cond_7
    return-void

    :cond_8
    :try_start_5
    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public abstract a()Z
.end method

.method public final b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0
.end method

.method protected b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 4

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/io/archive/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract b()V
.end method

.method protected c(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 1

    new-instance v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-direct {v0, p1}, Lcom/estrongs/io/model/ArchiveEntryFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/h;->b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/d;->g(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/estrongs/io/archive/h;->a(Ljava/lang/String;Lcom/estrongs/io/a/b;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/estrongs/io/archive/h;->a(Ljava/lang/String;Lcom/estrongs/io/a/b;)V

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path_create_error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILENAME_CONFLICT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/io/archive/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->e(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path_create_error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path_create_error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/io/archive/h;->a(Ljava/lang/String;Lcom/estrongs/io/a/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/io/archive/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getSize()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1
.end method

.method public abstract c()V
.end method

.method public d(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/h;->c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/estrongs/io/archive/h;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    iget-object v4, p0, Lcom/estrongs/io/archive/h;->f:[B

    if-nez v4, :cond_1

    const/high16 v4, 0x80000

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/estrongs/io/archive/h;->f:[B

    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    array-length v5, v5

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/io/archive/h;->f:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/estrongs/io/archive/h;->f:[B

    array-length v6, v6

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/io/archive/h;->f:[B

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    :cond_2
    invoke-static {v3}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0

    :cond_4
    :try_start_3
    iget-wide v6, p0, Lcom/estrongs/io/archive/h;->a:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/estrongs/io/archive/h;->a:J

    iget-wide v6, p0, Lcom/estrongs/io/archive/h;->a:J

    invoke-interface {p2, v6, v7}, Lcom/estrongs/io/a/b;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/h;->j:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->j:Z

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final h()Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/h;->j:Z

    invoke-direct {p0}, Lcom/estrongs/io/archive/h;->l()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/h;->f()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->d:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/estrongs/io/archive/a;->a(Ljava/lang/String;Lcom/estrongs/io/archive/h;)V

    goto :goto_0
.end method

.method protected abstract i()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/io/archive/h;->g:Z

    return v0
.end method
