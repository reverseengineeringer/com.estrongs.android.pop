.class public Lcom/estrongs/android/pop/app/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/v;->b:Z

    invoke-static {p1}, Lcom/estrongs/android/pop/app/b/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/b/v;->e:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/v;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    return v0
.end method

.method public a(Lcom/estrongs/fs/h;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/v;->b:Z

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/v;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    if-lez v0, :cond_2

    move v2, v3

    :cond_2
    move v3, v2

    :cond_3
    :goto_1
    return v3

    :cond_4
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/v;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/estrongs/android/pop/app/b/v;->d:I

    if-gtz v0, :cond_3

    move v3, v2

    goto :goto_1
.end method
