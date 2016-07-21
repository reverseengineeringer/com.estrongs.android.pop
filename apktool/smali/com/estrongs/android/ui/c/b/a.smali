.class public Lcom/estrongs/android/ui/c/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/estrongs/android/ui/c/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/estrongs/android/ui/c/b/f;

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private m:J

.field private final n:J

.field private o:Lcom/estrongs/android/ui/c/a/b;

.field private p:Landroid/os/Handler;

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/c/a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->e:Lcom/estrongs/android/ui/c/b/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/lang/Object;

    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/estrongs/android/ui/c/b/a;->n:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->p:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/a;->c:Lcom/estrongs/android/ui/c/a;

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/b/a;->l:J

    return-wide p1
.end method

.method private a(IIZ)Landroid/widget/LinearLayout;
    .locals 6

    const v5, 0x7f07004e

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v3, p3}, Lcom/estrongs/android/ui/c/b/a;->a(IZZ)Landroid/widget/LinearLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v3, p3}, Lcom/estrongs/android/ui/c/b/a;->a(IZZ)Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v2, v2}, Lcom/estrongs/android/ui/c/b/a;->a(IZZ)Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IZZ)Landroid/widget/LinearLayout;
    .locals 10

    const v9, 0x7f070080

    const v8, 0x7f070047

    const/4 v1, -0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v3

    :goto_0
    if-ge v2, p1, :cond_4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->t()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v6, p1, -0x1

    if-ne v2, v6, :cond_0

    if-eqz p3, :cond_2

    const v0, 0x7f030058

    :cond_0
    :goto_2
    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_4
    return-object v4
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/f;)Lcom/estrongs/android/ui/c/b/f;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/a;->e:Lcom/estrongs/android/ui/c/b/f;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/i;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/c/b/i;)V
    .locals 6

    iget-object v0, p1, Lcom/estrongs/android/ui/c/b/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p1, Lcom/estrongs/android/ui/c/b/i;->b:J

    iget-wide v4, p1, Lcom/estrongs/android/ui/c/b/i;->c:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/c/a/d;->b(JJ)V

    iget-wide v2, p1, Lcom/estrongs/android/ui/c/b/i;->b:J

    iget-wide v4, p1, Lcom/estrongs/android/ui/c/b/i;->c:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/c/a/d;->a(JJ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v1, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->k()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/estrongs/android/ui/c/a/d;->b(JJ)V

    new-instance v0, Lcom/estrongs/android/ui/c/b/b;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/c/b/b;-><init>(Lcom/estrongs/android/ui/c/b/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/b/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/b/a;->m:J

    return-wide p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/b/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/c/b/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private e()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/b/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->e:Lcom/estrongs/android/ui/c/b/f;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->u()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->o:Lcom/estrongs/android/ui/c/a/b;

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/c/a/a;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->j()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/c/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->w()V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/c/b/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/c/a/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/b;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->o:Lcom/estrongs/android/ui/c/a/b;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->o:Lcom/estrongs/android/ui/c/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private k()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->l()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->m()V

    return-void
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/ui/c/b/a;->a(IIZ)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_2
    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method private m()V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->s()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_0

    const/4 v4, 0x2

    add-int/lit8 v1, v3, 0x1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v4, v1, v2}, Lcom/estrongs/android/ui/c/b/a;->a(IZZ)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_3
    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3
.end method

.method private n()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->g:Ljava/util/List;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/c/a/a;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/c/a/a;->a(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private o()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v1, v5, Landroid/widget/TextView;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->h:Ljava/util/List;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/c/a/a;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/c/a/a;->a(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/c/b/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/c;-><init>(Lcom/estrongs/android/ui/c/b/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/c/b/h;)V

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->e:Lcom/estrongs/android/ui/c/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/c/b/f;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/c/b/f;-><init>(Lcom/estrongs/android/ui/c/b/a;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->e:Lcom/estrongs/android/ui/c/b/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->e:Lcom/estrongs/android/ui/c/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/f;->start()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/c/b/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/b/d;-><init>(Lcom/estrongs/android/ui/c/b/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/d;->start()V

    return-void
.end method

.method private s()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private t()I
    .locals 1

    const v0, 0x7f03005a

    return v0
.end method

.method private u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    return-object v0
.end method

.method private v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->p:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/c/b/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/e;-><init>(Lcom/estrongs/android/ui/c/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/ui/c/b/a;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->i()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->k()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->n()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->o()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->q()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->r()V

    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->f()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->p()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/a;->q:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/a;->q:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->r()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
