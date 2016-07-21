.class Lcom/estrongs/android/pop/app/compress/bw;
.super Lcom/estrongs/io/a/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bw;->a:Lcom/estrongs/android/pop/app/compress/bv;

    invoke-direct {p0}, Lcom/estrongs/io/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bw;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bs;->c(Lcom/estrongs/android/pop/app/compress/bs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bw;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/compress/bs;->a:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bw;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bs;->a(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bw;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/bs;->b(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/io/model/ArchiveEntryFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/io/archive/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
