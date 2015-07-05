.class public Lcom/estrongs/android/ui/dialog/y;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/content/pm/PackageManager;

.field protected c:Z

.field d:Lcom/estrongs/android/ui/dialog/ab;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/y;->c:Z

    const v0, 0x7f0b053d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/y;->setTitle(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/y;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/y;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/y;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/y;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/y;->c()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/y;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/y;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/y;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/y;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/y;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/y;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/ad;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ab;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/dialog/ab;-><init>(Lcom/estrongs/android/ui/dialog/y;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/y;->d:Lcom/estrongs/android/ui/dialog/ab;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/y;->d:Lcom/estrongs/android/ui/dialog/ab;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private c()V
    .locals 2

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/dialog/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/z;-><init>(Lcom/estrongs/android/ui/dialog/y;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030006

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/y;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/y;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/y;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/y;->c:Z

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/y;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/y;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/y;->c()V

    :cond_0
    return-void
.end method
