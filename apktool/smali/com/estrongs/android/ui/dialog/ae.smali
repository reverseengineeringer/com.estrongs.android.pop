.class public Lcom/estrongs/android/ui/dialog/ae;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/estrongs/android/ui/dialog/am;

.field c:Landroid/content/pm/PackageManager;

.field d:Landroid/content/Context;

.field e:Landroid/widget/CheckBox;

.field f:Lcom/estrongs/fs/h;

.field private g:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->c:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ae;->f:Lcom/estrongs/fs/h;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/ae;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b046c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/af;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/ui/dialog/af;-><init>(Lcom/estrongs/android/ui/dialog/ae;Landroid/content/Context;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ae;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ae;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ak;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ak;-><init>(Lcom/estrongs/android/ui/dialog/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03000b

    return v0
.end method

.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/ui/dialog/am;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/am;-><init>(Lcom/estrongs/android/ui/dialog/ae;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->b:Lcom/estrongs/android/ui/dialog/am;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ae;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0065

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const v1, 0x7f0a0066

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ae;->b:Lcom/estrongs/android/ui/dialog/am;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0a0064

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ai;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ai;-><init>(Lcom/estrongs/android/ui/dialog/ae;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/dialog/ae;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/ui/dialog/aj;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/aj;-><init>(Lcom/estrongs/android/ui/dialog/ae;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method protected a(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->aF()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080013

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const v0, 0x7f080014

    goto :goto_2
.end method
