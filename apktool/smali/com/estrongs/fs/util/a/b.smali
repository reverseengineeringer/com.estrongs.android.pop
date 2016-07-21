.class public Lcom/estrongs/fs/util/a/b;
.super Lcom/estrongs/fs/util/a/f;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/util/a/f;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I
    .locals 3

    instance-of v0, p1, Lcom/estrongs/fs/impl/b/d;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/estrongs/fs/impl/b/d;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/fs/util/a/f;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->i()I

    move-result v1

    move-object v0, p2

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->i()I

    move-result v0

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/util/a/b;->a(II)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/estrongs/fs/util/a/f;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/h;

    check-cast p2, Lcom/estrongs/fs/h;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/util/a/b;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    return v0
.end method
