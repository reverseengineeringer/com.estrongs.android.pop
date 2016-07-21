.class public Lcom/estrongs/android/ui/navigation/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/theme/at;

.field private d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

.field private e:Lcom/estrongs/android/ui/view/NaviListView;

.field private f:Lcom/estrongs/android/ui/e/km;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/r;->a:Landroid/view/View;

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/r;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    invoke-static {p0}, Lcom/estrongs/android/ui/navigation/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/estrongs/android/pop/esclasses/p;->a:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 9

    const v8, 0x7f0d000d

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->a:Landroid/view/View;

    const v2, 0x7f0e0128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/view/NaviListView;->setDividerHeight(I)V

    iput-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->e:Lcom/estrongs/android/ui/view/NaviListView;

    new-instance v2, Lcom/estrongs/android/ui/navigation/s;

    invoke-direct {v2, p0, v1, v0}, Lcom/estrongs/android/ui/navigation/s;-><init>(Lcom/estrongs/android/ui/navigation/r;Lcom/estrongs/android/ui/view/NaviListView;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    new-instance v4, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iget-object v5, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/estrongs/android/ui/navigation/r;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030109

    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/NaviListView;->addHeaderView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/r;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/view/NaviListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/view/NaviListView;->setItemsCanFocus(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->a:Landroid/view/View;

    const v4, 0x7f0e04ff

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/theme/at;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d()Landroid/content/SharedPreferences;

    move-result-object v4

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/estrongs/android/ui/navigation/r;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->getGroupCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/estrongs/android/ui/navigation/r;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->getGroupCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/NaviListView;->expandGroup(I)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/NaviListView;->expandGroup(I)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/estrongs/android/ui/navigation/w;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v7}, Lcom/estrongs/android/ui/navigation/w;-><init>(Lcom/estrongs/android/ui/navigation/r;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/km;->a()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/e/km;->b(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/e/km;->c(I)V

    :cond_4
    new-instance v1, Lcom/estrongs/android/view/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    const v3, 0x7f020415

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    const v4, 0x7f080083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    new-instance v2, Lcom/estrongs/android/ui/navigation/x;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/navigation/x;-><init>(Lcom/estrongs/android/ui/navigation/r;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/e/km;->a(Lcom/estrongs/android/view/a/a;)V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->P:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/android/view/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    const v3, 0x7f02045b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    const v4, 0x7f0803e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    new-instance v2, Lcom/estrongs/android/ui/navigation/y;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/navigation/y;-><init>(Lcom/estrongs/android/ui/navigation/r;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/e/km;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_5
    new-instance v1, Lcom/estrongs/android/view/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    const v3, 0x7f02044b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    const v4, 0x7f080381

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/r;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    new-instance v2, Lcom/estrongs/android/ui/navigation/aa;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/navigation/aa;-><init>(Lcom/estrongs/android/ui/navigation/r;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->f:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/km;->a(Lcom/estrongs/android/view/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/navigation/q;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/navigation/q;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->e:Lcom/estrongs/android/ui/view/NaviListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->a:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/r;->e:Lcom/estrongs/android/ui/view/NaviListView;

    goto :goto_0
.end method
