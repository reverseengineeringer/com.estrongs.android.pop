.class public Lcom/estrongs/android/a/b/f;
.super Lcom/estrongs/fs/impl/b/d;


# instance fields
.field a:Lcom/estrongs/fs/impl/b/h;

.field private final c:J

.field private final d:[Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/estrongs/fs/impl/b/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/b/d;JJ[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/impl/b/d;",
            "JJ[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/c/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/d;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/d;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/d;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/d;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/estrongs/fs/impl/b/d;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/b/f;->a:Lcom/estrongs/fs/impl/b/h;

    iput-wide p2, p0, Lcom/estrongs/android/a/b/f;->size:J

    iput-wide p4, p0, Lcom/estrongs/android/a/b/f;->c:J

    iput-object p6, p0, Lcom/estrongs/android/a/b/f;->d:[Ljava/lang/String;

    iput-object p7, p0, Lcom/estrongs/android/a/b/f;->e:Ljava/util/List;

    iput-object p8, p0, Lcom/estrongs/android/a/b/f;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/impl/b/h;)Lcom/estrongs/fs/impl/b/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/b/d;->a(Lcom/estrongs/fs/impl/b/h;)Lcom/estrongs/fs/impl/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/b/d;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/b/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/b/d;->a(Z)V

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/f;->c:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/b/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->d:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->f()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->i()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->j()Z

    move-result v0

    return v0
.end method

.method public k()Lcom/estrongs/fs/impl/b/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->k()Lcom/estrongs/fs/impl/b/h;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/estrongs/fs/impl/b/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    return-object v0
.end method

.method public o()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/b/f;->g:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->length()J

    move-result-wide v0

    return-wide v0
.end method
