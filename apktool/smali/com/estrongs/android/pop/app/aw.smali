.class final Lcom/estrongs/android/pop/app/aw;
.super Lcom/estrongs/android/ui/dialog/ix;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/fs/b/ap;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Lcom/estrongs/fs/b/ap;Landroid/app/Activity;)V
    .locals 0

    iput-object p4, p0, Lcom/estrongs/android/pop/app/aw;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/aw;->b:Lcom/estrongs/fs/b/ap;

    iput-object p6, p0, Lcom/estrongs/android/pop/app/aw;->c:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aw;->c:Landroid/app/Activity;

    const v1, 0x7f0b018b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/aw;->b:Lcom/estrongs/fs/b/ap;

    iget-object v4, v4, Lcom/estrongs/fs/b/ap;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v4, v4, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_b

    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "\u7cfb\u7edf\u9519\u8bef"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "\u8d44\u6e90\u672a\u627e\u5230"

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "\u4e0b\u8f7d\u8d85\u65f6"

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    const-string v0, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u591f"

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const-string v0, "\u4efb\u52a1\u5df2\u53d6\u6d88"

    goto :goto_0

    :cond_5
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const v1, 0x8cad

    if-ne v0, v1, :cond_6

    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u592a\u591a\uff0c\u6dfb\u52a0\u5931\u8d25"

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const v1, 0x8cb4

    if-ne v0, v1, :cond_7

    const-string v0, "\u65e0\u6548\u7684\u4e0b\u8f7d\u6e90"

    goto :goto_0

    :cond_7
    iget v0, p1, Lcom/estrongs/a/p;->a:I

    const v1, 0x8ca1

    if-ne v0, v1, :cond_8

    const-string v0, "\u9519\u8bef\u7684\u53c2\u6570"

    goto :goto_0

    :cond_8
    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/estrongs/a/q;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aw;->a:Ljava/lang/String;

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/a/a;)V
    .locals 2

    instance-of v0, p1, Lcom/estrongs/fs/b/ap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/b/ap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/fs/b/ap;->b:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/a/a;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aw;->c:Landroid/app/Activity;

    const v1, 0x7f0b04c9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/aw;->b:Lcom/estrongs/fs/b/ap;

    iget-object v4, v4, Lcom/estrongs/fs/b/ap;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v4, v4, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aw;->b:Lcom/estrongs/fs/b/ap;

    iget-object v0, v0, Lcom/estrongs/fs/b/ap;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/pcs/a;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aw;->d()V

    return-void
.end method
