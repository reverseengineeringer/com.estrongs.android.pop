.class public Lcom/estrongs/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[Lcom/estrongs/a/b/q;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/h;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/estrongs/a/b/c;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/estrongs/a/b/q;

    iput-object v0, p0, Lcom/estrongs/a/b/c;->b:[Lcom/estrongs/a/b/q;

    iget-object v0, p0, Lcom/estrongs/a/b/c;->b:[Lcom/estrongs/a/b/q;

    new-instance v1, Lcom/estrongs/a/b/q;

    invoke-direct {v1, p1}, Lcom/estrongs/a/b/q;-><init>(Lcom/estrongs/fs/h;)V

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/a/b/c;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/estrongs/a/b/q;

    iput-object v1, p0, Lcom/estrongs/a/b/c;->b:[Lcom/estrongs/a/b/q;

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/a/b/c;->b:[Lcom/estrongs/a/b/q;

    new-instance v3, Lcom/estrongs/a/b/q;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-direct {v3, v0}, Lcom/estrongs/a/b/q;-><init>(Lcom/estrongs/fs/h;)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 2

    :goto_0
    iget v0, p0, Lcom/estrongs/a/b/c;->a:I

    iget-object v1, p0, Lcom/estrongs/a/b/c;->b:[Lcom/estrongs/a/b/q;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/a/b/c;->b:[Lcom/estrongs/a/b/q;

    iget v1, p0, Lcom/estrongs/a/b/c;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/a/b/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/a/b/c;->a:I

    goto :goto_0
.end method
