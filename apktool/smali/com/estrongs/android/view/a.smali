.class public Lcom/estrongs/android/view/a;
.super Lcom/estrongs/android/view/aw;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/estrongs/android/view/a;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/a;->c:Landroid/widget/Button;

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/a;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/a;->c:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/b;-><init>(Lcom/estrongs/android/view/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/view/a;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/a;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    return-object v0
.end method

.method private p()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.baidu.appsearch"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    const v1, 0x100143a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030029

    return v0
.end method

.method protected a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/aj;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/estrongs/fs/b/aj;->i:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/a;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b0540

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/a;->A:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    const v4, 0x7f0b0541

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/estrongs/android/view/a;->A:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "com.baidu.appsearch"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/view/a;->p()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->b()Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    const/4 v1, 0x7

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/a;->B()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/a;->a(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aa(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ad(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->i()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    const v2, 0x7f0b054c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    const v2, 0x7f0b054d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0533

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    new-instance v1, Lcom/estrongs/android/view/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/c;-><init>(Lcom/estrongs/android/view/a;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->a(Lcom/handmark/pulltorefresh/library/k;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/a;->B()I

    move-result v1

    if-eq v1, v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->i()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_1
.end method

.method protected d_()Lcom/estrongs/android/widget/HeaderGridView;
    .locals 2

    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iput-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/estrongs/android/view/a;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->j()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/HeaderGridView;

    return-object v0
.end method
