.class public Lcom/estrongs/android/a/b/k;
.super Lcom/estrongs/android/a/b/q;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/a/b/q;-><init>(J)V

    iput-object p1, p0, Lcom/estrongs/android/a/b/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/a/b/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/a/b/k;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/a/b/k;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/estrongs/android/a/b/q;-><init>(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/b/k;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/a/b/k;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/a/b/k;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/estrongs/android/a/b/k;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/k;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final b()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->e:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/k;->e_()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b/k;->e:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->e:Ljava/io/File;

    return-object v0
.end method

.method public final e_()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/a/b/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/b/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/k;->d:J

    return-wide v0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/b/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/k;->d:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/k;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
