.class public Lcom/estrongs/android/pop/app/a/a/b;
.super Lcom/estrongs/android/pop/app/a/a/c;


# instance fields
.field private d:I

.field private e:I

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/a/a/c;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 4

    const/4 v1, -0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:I

    add-int/lit8 p1, v0, -0x1

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    rem-int v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/pop/app/a/a/b;->e:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/a/b;->c()V

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/a/a/b;->a(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/a/b;->c()V

    return-void
.end method

.method protected b()V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->b:I

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/pop/app/a/a/b;->b:I

    if-ne v0, v2, :cond_2

    iput v1, p0, Lcom/estrongs/android/pop/app/a/a/b;->d:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->e:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->b:I

    iput v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->e:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:I

    if-ge v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->e:I

    return-void
.end method

.method public d()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:I

    rem-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/a/a/b;->a(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/a/b;->c()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a/a/b;->b()V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/a/a/b;->a(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->d:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/a/b;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_1
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
