.class public Lcom/estrongs/android/ui/controller/h;
.super Lcom/estrongs/android/ui/controller/a;


# instance fields
.field private A:Landroid/view/MenuItem;

.field private B:Landroid/support/v7/widget/SearchView;

.field private C:Ljava/lang/String;

.field private D:Landroid/view/MenuItem;

.field private E:Landroid/widget/ProgressBar;

.field private F:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field private G:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/estrongs/android/ui/e/m;

.field private J:Landroid/view/Menu;

.field private K:Lcom/estrongs/android/ui/e/jq;

.field private L:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

.field private N:Z

.field private O:Lcom/estrongs/android/ui/e/il;

.field private P:Lcom/estrongs/android/ui/controller/bm;

.field private Q:Lcom/estrongs/android/ui/fastscroller/d;

.field private R:Landroid/widget/RelativeLayout;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Lcom/estrongs/android/ui/e/ka;

.field private X:Z

.field private Y:Landroid/support/v7/view/ActionMode;

.field private Z:Z

.field private aa:Landroid/support/v7/view/ActionMode$Callback;

.field public o:Lcom/estrongs/android/ui/view/ck;

.field public p:Lcom/estrongs/android/ui/e/ch;

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:[Ljava/lang/String;

.field private x:Landroid/support/v7/app/ActionBar;

.field private y:Landroid/support/v7/widget/Toolbar;

.field private z:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput v2, p0, Lcom/estrongs/android/ui/controller/h;->q:I

    iput v5, p0, Lcom/estrongs/android/ui/controller/h;->r:I

    iput v6, p0, Lcom/estrongs/android/ui/controller/h;->s:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/controller/h;->t:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/ui/controller/h;->u:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/ui/controller/h;->v:I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "scan"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v2

    const-string v1, "analyse"

    aput-object v1, v0, v5

    const-string v1, "remote_settings"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "clear_recycle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "extract"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "refresh"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->w:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->z:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->H:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->L:Ljava/util/Hashtable;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/controller/h;->N:Z

    new-instance v0, Lcom/estrongs/android/ui/e/il;

    invoke-direct {v0}, Lcom/estrongs/android/ui/e/il;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->O:Lcom/estrongs/android/ui/e/il;

    iput-object v4, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    iput-object v4, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/controller/h;->Z:Z

    new-instance v0, Lcom/estrongs/android/ui/controller/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/i;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->aa:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method private A()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e01d5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f02026d

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/h;->D()V

    return-void
.end method

.method private B()V
    .locals 2

    :try_start_0
    const-class v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, "mMenuView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/controller/h;->a(Landroid/support/v7/widget/ActionMenuView;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private C()V
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, v3}, Landroid/view/SubMenu;->removeGroup(I)V

    invoke-interface {v0, v6}, Landroid/view/SubMenu;->removeGroup(I)V

    invoke-interface {v0, v7}, Landroid/view/SubMenu;->removeGroup(I)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    const/16 v1, 0x7d0

    const v2, 0x7f08072f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f02046e

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/estrongs/android/ui/controller/ae;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/ae;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xbb8

    const v2, 0x7f080633

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f02041d

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/estrongs/android/ui/controller/af;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/af;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xbb9

    const v2, 0x7f080630

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f02042a

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/estrongs/android/ui/controller/ag;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/ag;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xbba

    const v2, 0x7f080634

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f020463

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/estrongs/android/ui/controller/ah;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/ah;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xbbb

    const v2, 0x7f08062e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0203f8

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/estrongs/android/ui/controller/p;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/p;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xbbc

    const v2, 0x7f08062f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f02040d

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/estrongs/android/ui/controller/q;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/controller/q;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xfa0

    const v2, 0x7f08062b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v1, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f020446

    invoke-static {v2, v0, v3}, Lcom/estrongs/android/util/bl;->a(Landroid/app/Activity;Landroid/view/MenuItem;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    new-instance v2, Lcom/estrongs/android/ui/controller/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/r;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private D()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsNarrowMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->x:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f03011a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    new-instance v0, Lcom/estrongs/android/ui/controller/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/controller/u;-><init>(Lcom/estrongs/android/ui/controller/h;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->n:Lcom/estrongs/android/ui/d/a;

    return-void
.end method

.method private E()Lcom/estrongs/android/ui/fastscroller/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Q:Lcom/estrongs/android/ui/fastscroller/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/controller/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/w;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Q:Lcom/estrongs/android/ui/fastscroller/d;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Q:Lcom/estrongs/android/ui/fastscroller/d;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->U:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->U:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->T:Landroid/widget/ImageView;

    return-object p1
.end method

.method private a(Landroid/support/v7/widget/SearchView;)Landroid/widget/TextView;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-eqz v5, :cond_2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    return-object v1

    :cond_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->S:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Lcom/estrongs/android/ui/e/ka;)Lcom/estrongs/android/ui/e/ka;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->W:Lcom/estrongs/android/ui/e/ka;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->C:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 3

    const-class v0, Landroid/support/v7/widget/ActionMenuView;

    :try_start_0
    const-string v1, "mPresenter"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/d;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/d;->getCallback()Landroid/support/v7/view/menu/y;

    move-result-object v1

    instance-of v2, v1, Lcom/estrongs/android/ui/controller/ai;

    if-nez v2, :cond_0

    new-instance v2, Lcom/estrongs/android/ui/controller/ai;

    invoke-direct {v2, p0, v1, v0}, Lcom/estrongs/android/ui/controller/ai;-><init>(Lcom/estrongs/android/ui/controller/h;Landroid/support/v7/view/menu/y;Landroid/support/v7/view/menu/x;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/d;->setCallback(Landroid/support/v7/view/menu/y;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/view/a/a;Z)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->f:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v0

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->i()Z

    move-result v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setIsRamAnimView(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setEnabled(Z)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->P:Lcom/estrongs/android/ui/controller/bm;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->e:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0, p1, v1, p2}, Lcom/estrongs/android/ui/controller/bm;->a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/theme/at;Z)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0}, Landroid/support/v4/view/cn;->f(Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0, v6}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0, v6}, Landroid/support/v4/view/cn;->h(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0, v6}, Landroid/support/v4/view/cn;->i(Landroid/view/View;F)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v1, Lcom/estrongs/android/ui/controller/t;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/controller/t;-><init>(Lcom/estrongs/android/ui/controller/h;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/h;->e:Lcom/estrongs/android/ui/theme/at;

    const v5, 0x7f0d00be

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v4

    aput v4, v3, v7

    invoke-direct {v2, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->e:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f0d0139

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/h;->e:Lcom/estrongs/android/ui/theme/at;

    const v5, 0x7f0d00bc

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v4

    aput v4, v3, v7

    invoke-direct {v2, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->f:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/h;->e:Lcom/estrongs/android/ui/theme/at;

    const v5, 0x7f0d00bc

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v2, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f02001a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0d0139

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/util/bl;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v1, Lcom/estrongs/android/ui/controller/s;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/controller/s;-><init>(Lcom/estrongs/android/ui/controller/h;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/controller/h;->X:Z

    return p1
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, p1, v1

    invoke-static {p0, v4}, Lcom/estrongs/android/ui/controller/h;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->V:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/controller/h;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->V:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/controller/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->S:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(Landroid/view/Menu;)V
    .locals 3

    const v0, 0x7f0e06c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    const v1, 0x7f0800a6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/ax;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->B:Landroid/support/v7/widget/SearchView;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->B:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/controller/h;->a(Landroid/support/v7/widget/SearchView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    new-instance v1, Lcom/estrongs/android/ui/controller/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/aa;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/MenuItem;Landroid/support/v4/view/bd;)Landroid/view/MenuItem;

    new-instance v0, Lcom/estrongs/android/ui/controller/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/ad;-><init>(Lcom/estrongs/android/ui/controller/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->F:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/h;->C()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->T:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/estrongs/android/ui/c/e;

    if-eqz v1, :cond_2

    const-string v0, "externalstorage://"

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->C:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/controller/h;)Lcom/estrongs/android/ui/e/ka;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->W:Lcom/estrongs/android/ui/e/ka;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->F:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->B:Landroid/support/v7/widget/SearchView;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/controller/h;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/controller/h;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/controller/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/controller/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/h;->N:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/controller/h;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const v7, 0x7f030129

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/h;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/h;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/h;->c()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae()Lcom/estrongs/android/ui/navigation/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setTabletSideBar(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->e:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/h;->A()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e01ed

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->E:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e03ea

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v0, Lcom/estrongs/android/ui/controller/bm;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/controller/bm;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->P:Lcom/estrongs/android/ui/controller/bm;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/estrongs/android/ui/e/ch;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v2, p0, Lcom/estrongs/android/ui/controller/h;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/e/ch;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->l()Lcom/estrongs/android/ui/view/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->n()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ae()Lcom/estrongs/android/ui/navigation/m;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public a(IIF)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a()Z

    move-result v2

    if-nez v2, :cond_1

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/h;->z()Lcom/estrongs/android/ui/d/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/estrongs/android/ui/d/h;->d()Ljava/util/ArrayList;

    move-result-object v2

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/h;->z()Lcom/estrongs/android/ui/d/i;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/estrongs/android/ui/d/h;->d()Ljava/util/ArrayList;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v7, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v8, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v8, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(I)Lcom/estrongs/android/view/cr;

    move-result-object v8

    invoke-virtual {v6}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/cr;Lcom/estrongs/android/ui/d/h;Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v7, v3, v5

    aget-object v8, v3, v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Lcom/estrongs/android/ui/d/h;->a(Ljava/util/ArrayList;)V

    :cond_4
    iget-object v6, p0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    move v0, v4

    :goto_3
    invoke-virtual {v6, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsScreenSwitching(Z)V

    cmpl-float v0, p3, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v2, v3, p3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Ljava/util/List;Ljava/util/List;F)V

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v3, v2, p3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Ljava/util/List;Ljava/util/List;F)V

    goto :goto_1

    :cond_7
    move-object v2, v3

    goto :goto_2
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->W:Lcom/estrongs/android/ui/e/ka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->W:Lcom/estrongs/android/ui/e/ka;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ka;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->W:Lcom/estrongs/android/ui/e/ka;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ka;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->j()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cq;->j()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/controller/a;->a(Landroid/content/res/Configuration;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/h;->Z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/estrongs/android/ui/c/e;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/estrongs/android/view/er;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/cr;->a(Z)V

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    new-instance v1, Lcom/estrongs/android/ui/controller/z;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/controller/z;-><init>(Lcom/estrongs/android/ui/controller/h;Lcom/estrongs/android/view/cr;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/controller/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/controller/a;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/controller/a;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "edit_mode"

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/estrongs/android/ui/e/ch;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :goto_0
    iput v0, p0, Lcom/estrongs/android/ui/controller/h;->j:I

    iput p2, p0, Lcom/estrongs/android/ui/controller/h;->k:I

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->invalidate()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/controller/v;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/controller/v;-><init>(Lcom/estrongs/android/ui/controller/h;Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/h;->B()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0e06be

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f020425

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0802ad

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/h;->c(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/e/m;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/m;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/e/m;->a(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->K:Lcom/estrongs/android/ui/e/jq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/jq;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/jq;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->K:Lcom/estrongs/android/ui/e/jq;

    :cond_1
    return v3
.end method

.method public a(Landroid/view/Menu;Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/SubMenu;->removeGroup(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-interface {p1, v10}, Landroid/view/Menu;->removeGroup(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->L:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/d/a;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/ax;->d(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v5

    :goto_1
    invoke-interface {v6, v11, v5}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    invoke-interface {v6, v12, v0}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/c/e;

    const/4 v1, 0x4

    if-nez v0, :cond_e

    move v0, v5

    :goto_2
    invoke-interface {v6, v1, v0}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    :cond_1
    invoke-interface {v6, v5, v3}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    invoke-interface {v6, v10, v3}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    :cond_2
    :goto_3
    return v3

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/a;->e()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->f:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->O:Lcom/estrongs/android/ui/e/il;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/e/il;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/m;->b()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4, v0}, Lcom/estrongs/android/ui/controller/h;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iput-boolean v5, p0, Lcom/estrongs/android/ui/controller/h;->N:Z

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_5

    new-array v0, v5, [Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    move-object v1, v0

    :cond_5
    array-length v0, v1

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->c()Ljava/util/Map;

    move-result-object v0

    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->f:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->be()Z

    move-result v2

    :goto_4
    iget-object v7, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    aget-object v1, v1, v3

    invoke-virtual {v7, v4, v1}, Lcom/estrongs/android/ui/e/m;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/view/a/a;Z)V

    move-object v0, v1

    :goto_5
    array-length v1, v0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    const-string v4, "message_box"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/ui/e/m;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/a;->e()V

    :goto_6
    array-length v1, v0

    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v1

    move v2, v3

    move-object v0, v4

    :goto_7
    if-ge v2, v8, :cond_7

    aget-object v9, v1, v2

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v4, v0, v9}, Lcom/estrongs/android/ui/e/m;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_7

    :cond_7
    invoke-direct {p0, v7}, Lcom/estrongs/android/ui/controller/h;->a(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    iput-boolean v3, p0, Lcom/estrongs/android/ui/controller/h;->N:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setVisibility(I)V

    move-object v0, v4

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    const-string v4, "search"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/ui/e/m;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/d/a;->a(Z)V

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/d/a;->a(Z)V

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/m;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/h;->X:Z

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_8
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->D:Landroid/view/MenuItem;

    new-instance v2, Lcom/estrongs/android/ui/controller/x;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/controller/x;-><init>(Lcom/estrongs/android/ui/controller/h;Ljava/util/List;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_8

    :cond_d
    move v0, v3

    goto/16 :goto_1

    :cond_e
    move v0, v3

    goto/16 :goto_2

    :cond_f
    invoke-interface {v6, v11, v3}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    invoke-interface {v6, v12, v3}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    const/4 v0, 0x4

    invoke-interface {v6, v0, v3}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    invoke-interface {v6, v5, v5}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    invoke-interface {v6, v10, v5}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    goto/16 :goto_3

    :cond_10
    move v2, v3

    goto/16 :goto_4
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->z:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->L:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/controller/h;->a(ILandroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v2, 0x102002c

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "paste_mode"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/e/a;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/e/a;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    :cond_1
    :goto_0
    const-string v0, "paste_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "paste_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/controller/h;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/ax;->c(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/controller/h;->a(Landroid/view/Menu;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03012d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/ui/controller/h;->a(Landroid/view/Menu;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/ch;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->b(Landroid/view/Menu;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030159

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->c(Z)V

    return-void
.end method

.method public g(I)V
    .locals 3

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/ch;->f(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/e/m;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/m;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/e/m;->a(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/m;->a(I)V

    goto :goto_0
.end method

.method public h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->b(Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/h;->Z:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/h;->Z:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/estrongs/android/ui/controller/h;->Z:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/h;->l()V

    goto :goto_0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bw(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->by(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->aa:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    invoke-static {v1}, Landroid/support/v4/view/ax;->b(Landroid/view/MenuItem;)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->f(Z)V

    goto :goto_0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->b(Z)V

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->E:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->E:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->E:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->E:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->A:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/ax;->d(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public s()V
    .locals 3

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ch;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->j()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->S()Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/h;->E()Lcom/estrongs/android/ui/fastscroller/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->setHandleViewDisplayListener(Lcom/estrongs/android/ui/fastscroller/d;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/controller/bl;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->setIsShowAdressBar(Z)V

    :cond_1
    return-void
.end method

.method public t()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ck;->a(Z)V

    :cond_0
    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/estrongs/android/ui/controller/h;->Z:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->b(Landroid/view/Menu;)Z

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public u()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "normal_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/h;->b(Landroid/view/Menu;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public v()Z
    .locals 4

    const v3, 0x7f0e06be

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ck;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/view/Menu;->performIdentifierAction(II)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->J:Landroid/view/Menu;

    invoke-interface {v0, v3, v1}, Landroid/view/Menu;->performIdentifierAction(II)Z

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->o:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/h;->Y:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->p:Lcom/estrongs/android/ui/e/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ch;->k()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->I:Lcom/estrongs/android/ui/e/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/e/m;->a(ZZ)V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/h;->M:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->c()V

    return-void
.end method
