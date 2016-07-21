.class public Lcom/estrongs/android/a/b/l;
.super Lcom/estrongs/android/a/b/q;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/a/b/l;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/a/b/q;-><init>(J)V

    iput-object p1, p0, Lcom/estrongs/android/a/b/l;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 4

    new-instance v0, Lcom/estrongs/fs/x;

    iget-object v1, p0, Lcom/estrongs/android/a/b/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/estrongs/android/a/b/l;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/x;->setOriginalLastModified(J)V

    return-object v0
.end method

.method public final e_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/l;->i()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/a/b/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
