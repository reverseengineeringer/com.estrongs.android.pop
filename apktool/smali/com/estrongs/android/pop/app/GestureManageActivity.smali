.class public Lcom/estrongs/android/pop/app/GestureManageActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/adapter/y;

.field private b:Lcom/estrongs/android/pop/ad;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/estrongs/android/view/a/a;

.field private e:Lcom/estrongs/android/view/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/view/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->e:Lcom/estrongs/android/view/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/view/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Lcom/estrongs/android/view/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/adapter/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Lcom/estrongs/android/ui/adapter/y;

    return-object v0
.end method

.method private d()V
    .locals 3

    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/ui/adapter/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/y;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Lcom/estrongs/android/ui/adapter/y;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Lcom/estrongs/android/ui/adapter/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0e035e

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f080330

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0e019c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setFocusable(Z)V

    new-instance v2, Lcom/estrongs/android/pop/app/cq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cq;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Lcom/estrongs/android/ui/adapter/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/y;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f08032f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/view/a/a;

    const v2, 0x7f02042c

    const v3, 0x7f08032e

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v2, Lcom/estrongs/android/pop/app/cr;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cr;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->e:Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->e:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->e:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/view/a/a;

    const v2, 0x7f020436

    const v3, 0x7f080335

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v2, Lcom/estrongs/android/pop/app/cu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cu;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->d()V

    return-void
.end method
