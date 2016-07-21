.class public Lcom/estrongs/android/pop/app/HideListActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field private c:[Lcom/estrongs/android/pop/utils/aj;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/estrongs/android/pop/utils/aj;

.field private f:Z

.field private g:Lcom/estrongs/android/pop/app/cz;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Lcom/estrongs/android/pop/utils/aj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->f:Z

    new-instance v0, Lcom/estrongs/android/pop/app/cw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cw;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/app/cx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cx;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/app/cz;)Lcom/estrongs/android/pop/app/cz;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Lcom/estrongs/android/pop/app/cz;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/utils/aj;)Lcom/estrongs/android/pop/utils/aj;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Lcom/estrongs/android/pop/utils/aj;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->f:Z

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;[Lcom/estrongs/android/pop/utils/aj;)[Lcom/estrongs/android/pop/utils/aj;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/aj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/app/cz;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Lcom/estrongs/android/pop/app/cz;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/utils/aj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Lcom/estrongs/android/pop/utils/aj;

    return-object v0
.end method

.method private d()V
    .locals 3

    const v0, 0x7f0e03f9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:Landroid/widget/ListView;

    const v0, 0x7f0e035e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080347

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->f()[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/cz;

    const v1, 0x7f0300de

    iget-object v2, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:[Lcom/estrongs/android/pop/utils/aj;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/estrongs/android/pop/app/cz;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;Landroid/content/Context;I[Lcom/estrongs/android/pop/utils/aj;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Lcom/estrongs/android/pop/app/cz;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Lcom/estrongs/android/pop/app/cz;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02043f

    const v2, 0x7f080348

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/cy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cy;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0803a6

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->setTitle(I)V

    const v0, 0x7f0300cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/HideListActivity;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/HideListActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
