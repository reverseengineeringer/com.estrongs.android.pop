.class public Lcom/estrongs/io/archive/rar/a;
.super Lcom/estrongs/io/archive/i;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field h:Lde/innosystec/unrar/a;

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RarInArchive"

    sput-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/io/archive/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    iput-boolean v1, p0, Lcom/estrongs/io/archive/rar/a;->i:Z

    sget-object v0, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/rar/a;->i:Z

    invoke-static {}, Lcom/estrongs/android/util/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/i;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/g;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-virtual {v1}, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/rar/a;->c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    :try_end_0
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/i;->f(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_1
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {p1}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lde/innosystec/unrar/a;->a(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lde/innosystec/unrar/a;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/io/archive/rar/a;->c:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/io/archive/rar/d;

    invoke-direct {v3, p0}, Lcom/estrongs/io/archive/rar/d;-><init>(Lcom/estrongs/io/archive/rar/a;)V

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/estrongs/io/archive/rar/a;->i:Z

    invoke-direct/range {v0 .. v5}, Lde/innosystec/unrar/a;-><init>(Ljava/io/File;Ljava/lang/String;Lde/innosystec/unrar/c;Lde/innosystec/unrar/d;Z)V

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;
    :try_end_0
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/io/a/b;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Lcom/estrongs/io/archive/h;

    invoke-direct {v3}, Lcom/estrongs/io/archive/h;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->b()V

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lde/innosystec/unrar/e;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->i()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v3, v0}, Lcom/estrongs/io/archive/h;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v2, "Extraction is done."

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :goto_3
    throw v0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/innosystec/unrar/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->b()V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    :try_start_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v3, v0}, Lcom/estrongs/io/archive/h;->a(Ljava/io/File;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/innosystec/unrar/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V

    iput-object v4, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->b()V

    :cond_b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/estrongs/io/archive/h;->a()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/estrongs/io/archive/h;->b()I

    move-result v1

    invoke-virtual {v3}, Lcom/estrongs/io/archive/h;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p1, v0, v4, v5, v1}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->i()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->h()V

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/a;->a(Lcom/estrongs/io/a/b;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    new-instance v2, Lcom/estrongs/io/archive/rar/b;

    invoke-direct {v2, p0, p1, p1, v3}, Lcom/estrongs/io/archive/rar/b;-><init>(Lcom/estrongs/io/archive/rar/a;Lcom/estrongs/io/a/d;Lcom/estrongs/io/a/b;Lcom/estrongs/io/archive/h;)V

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/a;->a(Lde/innosystec/unrar/d;)V

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    :try_start_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/io/archive/rar/a;->a(Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/rar/a;->a(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lcom/estrongs/io/archive/rar/a;->j:Ljava/lang/String;

    const-string v1, "Extraction is done."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {p0}, Lcom/estrongs/io/archive/rar/a;->c()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    .locals 1
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

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->h()V

    invoke-super {p0, p1, p2}, Lcom/estrongs/io/archive/i;->a(Ljava/util/List;Lcom/estrongs/io/a/b;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/rar/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    return-void
.end method

.method public d(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 2

    check-cast p1, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;

    invoke-virtual {p1}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;->getArchiveEntry()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0, p2}, Lde/innosystec/unrar/a;->a(Lcom/estrongs/io/a/b;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    new-instance v1, Lcom/estrongs/io/archive/rar/e;

    invoke-direct {v1, p2}, Lcom/estrongs/io/archive/rar/e;-><init>(Lcom/estrongs/io/a/d;)V

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/a;->a(Lde/innosystec/unrar/d;)V

    invoke-direct {p0, p1, p2}, Lcom/estrongs/io/archive/rar/a;->a(Lcom/estrongs/io/archive/rar/RarArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method protected i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->d()V

    new-instance v0, Lcom/estrongs/io/archive/rar/c;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/rar/c;-><init>(Lcom/estrongs/io/archive/rar/a;)V

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/rar/a;->h:Lde/innosystec/unrar/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->p()Z

    move-result v0

    goto :goto_0
.end method
