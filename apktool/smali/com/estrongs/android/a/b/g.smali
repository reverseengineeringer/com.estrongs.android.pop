.class public Lcom/estrongs/android/a/b/g;
.super Lcom/estrongs/fs/x;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private final d:I

.field private final e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/a/b/i;)V
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->e_()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/a/b/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/b/h;-><init>(Lcom/estrongs/android/a/b/g;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b/g;->g:Ljava/util/Comparator;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->b()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/a/b/g;->a:I

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->c()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/a/b/g;->b:I

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/a/b/g;->c:J

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b/g;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->e()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/a/b/g;->d:I

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/i;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/a/b/g;->e:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/b/g;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/b/g;->b:I

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/a/b/g;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/estrongs/android/a/b/g;->g:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/estrongs/android/a/b/g;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public exists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final length()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/g;->c:J

    return-wide v0
.end method
