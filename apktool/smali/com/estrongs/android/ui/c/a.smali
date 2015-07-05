.class public Lcom/estrongs/android/ui/c/a;
.super Lcom/estrongs/android/view/aw;


# static fields
.field private static al:Landroid/view/View;


# instance fields
.field private a:Lcom/estrongs/android/ui/c/b/f;

.field private ai:Lcom/estrongs/android/ui/c/b/b;

.field private aj:Lcom/estrongs/android/util/bb;

.field private ak:Z

.field b:Landroid/view/ViewGroup;

.field private c:Lcom/estrongs/android/ui/c/b/l;

.field private d:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->ak:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/ui/c/b/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ai:Lcom/estrongs/android/ui/c/b/b;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/estrongs/android/pop/ad;->P(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Lcom/estrongs/android/ui/c/e;

    invoke-direct {v3, p0, p1, p3, v1}, Lcom/estrongs/android/ui/c/e;-><init>(Lcom/estrongs/android/ui/c/a;Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a024b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f020008

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f020007

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/c/a;->ak:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/ui/c/b/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->a:Lcom/estrongs/android/ui/c/b/f;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/view/cb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->H:Lcom/estrongs/android/view/cb;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/view/cb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->H:Lcom/estrongs/android/view/cb;

    return-object v0
.end method

.method public static m()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030074

    return v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    return-void
.end method

.method public a_()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->a_()V

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->w:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/n;

    const-string v1, "#home_page#"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->w:Lcom/estrongs/fs/h;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->w:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->a:Lcom/estrongs/android/ui/c/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/f;->l()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Lcom/estrongs/android/ui/c/b/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/l;->l()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ai:Lcom/estrongs/android/ui/c/b/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ai:Lcom/estrongs/android/ui/c/b/b;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/b;->l()V

    :cond_2
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "#home_page#"

    return-object v0
.end method

.method protected i()V
    .locals 5

    const/4 v1, 0x0

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/view/ViewGroup;

    sget-object v0, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/c/b/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    check-cast v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v1, v0, v3}, Lcom/estrongs/android/ui/c/b/f;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    iput-object v2, p0, Lcom/estrongs/android/ui/c/a;->a:Lcom/estrongs/android/ui/c/b/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/c/b/f;->a(Z)V

    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/c/b/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    check-cast v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v1, v0, v3}, Lcom/estrongs/android/ui/c/b/l;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    iput-object v2, p0, Lcom/estrongs/android/ui/c/a;->c:Lcom/estrongs/android/ui/c/b/l;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/c/b/l;->a(Z)V

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    check-cast v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v1, v0, v3}, Lcom/estrongs/android/ui/c/b/u;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    iput-object v2, p0, Lcom/estrongs/android/ui/c/a;->d:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->d:Lcom/estrongs/android/ui/c/b/u;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/c/b/u;->a(Z)V

    const v1, 0x7f0a024f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/c/a;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/estrongs/android/ui/c/b/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    check-cast v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v4, v2, v1, v3}, Lcom/estrongs/android/ui/c/b/b;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    iput-object v4, p0, Lcom/estrongs/android/ui/c/a;->ai:Lcom/estrongs/android/ui/c/b/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->ai:Lcom/estrongs/android/ui/c/b/b;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/c/b/b;->a(Z)V

    new-instance v2, Lcom/estrongs/android/ui/c/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/c/b;-><init>(Lcom/estrongs/android/ui/c/a;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/c/a;->aj:Lcom/estrongs/android/util/bb;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->aj:Lcom/estrongs/android/util/bb;

    invoke-static {v2}, Lcom/estrongs/android/util/ay;->a(Lcom/estrongs/android/util/bb;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/b/f;->a()V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->c:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/b/l;->a()V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->d:Lcom/estrongs/android/ui/c/b/u;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/b/u;->a()V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->ai:Lcom/estrongs/android/ui/c/b/b;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/b/b;->a()V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    const v3, 0x7f0b049b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tookkit_block"

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/ui/c/a;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    const v2, 0x7f0b02c6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "collection_block"

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/c/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/d;-><init>(Lcom/estrongs/android/ui/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030075

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/ui/c/a;->al:Landroid/view/View;

    move v3, v1

    goto/16 :goto_0
.end method

.method protected n()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v0, Lcom/estrongs/android/widget/c;

    invoke-direct {v0}, Lcom/estrongs/android/widget/c;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Lcom/estrongs/android/widget/c;

    return-void
.end method
