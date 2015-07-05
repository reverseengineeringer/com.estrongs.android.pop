.class public Lcom/estrongs/android/ui/navigation/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/theme/al;

.field private d:Lcom/estrongs/android/ui/a/aa;

.field private e:Lcom/estrongs/android/ui/view/NaviListView;

.field private f:Lcom/estrongs/android/ui/e/jk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/s;->a:Landroid/view/View;

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/s;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    invoke-static {p0}, Lcom/estrongs/android/ui/navigation/s;->a(Landroid/content/Context;)Z

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

    sget-boolean v0, Lcom/estrongs/android/pop/esclasses/k;->a:Z

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

    const/4 v8, -0x1

    const v7, 0x7f08001c

    const/4 v6, 0x1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->a:Landroid/view/View;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/s;->a:Landroid/view/View;

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/view/NaviListView;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/navigation/s;->e:Lcom/estrongs/android/ui/view/NaviListView;

    new-instance v2, Lcom/estrongs/android/ui/navigation/t;

    invoke-direct {v2, p0, v1, v0}, Lcom/estrongs/android/ui/navigation/t;-><init>(Lcom/estrongs/android/ui/navigation/s;Lcom/estrongs/android/ui/view/NaviListView;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    new-instance v3, Lcom/estrongs/android/ui/a/aa;

    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/estrongs/android/ui/a/aa;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->d:Lcom/estrongs/android/ui/a/aa;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/s;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/view/NaviListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/s;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/aa;->b()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/s;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/aa;->getGroupCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/NaviListView;->expandGroup(I)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/s;->a:Landroid/view/View;

    const v2, 0x7f0a02b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/navigation/x;

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v6}, Lcom/estrongs/android/ui/navigation/x;-><init>(Lcom/estrongs/android/ui/navigation/s;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/estrongs/android/ui/navigation/s;->f:Lcom/estrongs/android/ui/e/jk;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/s;->f:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0202fe

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v2, Lcom/estrongs/android/view/a/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f0202b2

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    new-instance v3, Lcom/estrongs/android/ui/navigation/y;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/navigation/y;-><init>(Lcom/estrongs/android/ui/navigation/s;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->f:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    sget-boolean v2, Lcom/estrongs/android/pop/z;->P:Z

    if-nez v2, :cond_3

    new-instance v2, Lcom/estrongs/android/view/a/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f0202e7

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    const v5, 0x7f0b0329

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    new-instance v3, Lcom/estrongs/android/ui/navigation/z;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/navigation/z;-><init>(Lcom/estrongs/android/ui/navigation/s;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->f:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_3
    new-instance v2, Lcom/estrongs/android/view/a/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f0202d9

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    const v5, 0x7f0b006f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/navigation/s;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    new-instance v3, Lcom/estrongs/android/ui/navigation/ab;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/navigation/ab;-><init>(Lcom/estrongs/android/ui/navigation/s;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->f:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->f:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/navigation/r;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/navigation/r;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/estrongs/android/ui/a/aa;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->d:Lcom/estrongs/android/ui/a/aa;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->e:Lcom/estrongs/android/ui/view/NaviListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->a:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/s;->e:Lcom/estrongs/android/ui/view/NaviListView;

    goto :goto_0
.end method
