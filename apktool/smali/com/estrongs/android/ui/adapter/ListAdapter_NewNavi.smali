.class public Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;
.super Landroid/widget/BaseExpandableListAdapter;


# static fields
.field public static a:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field private g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private h:[Ljava/lang/String;

.field private i:Lcom/estrongs/android/pop/ad;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/content/SharedPreferences;

.field private l:Landroid/content/SharedPreferences$Editor;

.field private m:Lcom/estrongs/android/j/c;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/adapter/dm;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/os/Handler;

.field private q:Lcom/estrongs/android/ui/theme/at;

.field private r:Lcom/estrongs/android/util/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "www.estrongs.com"

    sput-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    iput v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->m:Lcom/estrongs/android/j/c;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->i:Lcom/estrongs/android/pop/ad;

    const-string v0, "new_navi"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->k:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->l:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0201f8

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->j:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g()V

    new-instance v0, Lcom/estrongs/android/ui/adapter/ac;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/ac;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->r:Lcom/estrongs/android/util/bf;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->r:Lcom/estrongs/android/util/bf;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->a(Lcom/estrongs/android/util/bf;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "enable_recycle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "show_associate_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "gesture_setting_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "hidden_file"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "show_pcs_res"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/ui/adapter/ao;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/adapter/ao;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Ljava/util/HashSet;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/ui/preference/q;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/adapter/az;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/az;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;->HIDELIST:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;

    invoke-static {p0, v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/adapter/cw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/cw;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/lc;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x101c

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/ui/adapter/dm;)V
    .locals 9

    new-instance v0, Lcom/estrongs/android/ui/adapter/a;

    const v1, 0x7f0203c4

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f080068

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/adapter/cu;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/adapter/cu;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v2, "virtualKey"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    new-instance v5, Lcom/estrongs/android/ui/adapter/a;

    iget-object v6, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iget-object v7, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    new-instance v8, Lcom/estrongs/android/ui/adapter/cv;

    invoke-direct {v8, p0, v0, v4}, Lcom/estrongs/android/ui/adapter/cv;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;Ljava/lang/String;)V

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-boolean v2, v5, Lcom/estrongs/android/ui/adapter/a;->e:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/adapter/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/adapter/a;

    iput-object v4, v5, Lcom/estrongs/android/ui/adapter/a;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/i;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/h/f;->c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->a()Z

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    const v5, 0x7f0203d4

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/estrongs/fs/w;->D:Lcom/estrongs/fs/w;

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget-object v3, Lcom/estrongs/fs/w;->D:Lcom/estrongs/fs/w;

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    sget-object v3, Lcom/estrongs/fs/w;->C:Lcom/estrongs/fs/w;

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0203d4

    const/4 v0, 0x0

    const-string v1, "all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "baidu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203d6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203d5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "document"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203d7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203b9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203da

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203d8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v1, "news"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203d9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203db

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "weather"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203dc

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "india"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0203c7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/utils/n;->b(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/RecommendListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a([Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->setDialogStyle(Z)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0805fa

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f080686

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/impl/local/m;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/adapter/cx;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/adapter/cx;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/theme/at;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e()V

    return-void
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    return-object v0
.end method

.method public static c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    const-string v0, "recycle://"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    return-void
.end method

.method private d(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Favorite:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/utils/dd;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/util/bc;->a(Ljava/lang/String;ZLjava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/dm;

    iget-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/dm;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->j()V

    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/adapter/dg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/dg;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f0801a6

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f0203b0

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/dk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/dk;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->BootCharging:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->k()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->i:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method private g()V
    .locals 10

    const v9, 0x7f0801a0

    const/4 v1, 0x0

    const/4 v8, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/dm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v2, 0x7f080381

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d:I

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v2, 0x7f02044b

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Setting:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/utils/dd;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/bc;->a(Ljava/lang/String;ZLjava/util/List;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/dm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/dm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v2, 0x7f020418

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/dm;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Favorite:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/estrongs/android/ui/adapter/dm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/dm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    iput v0, v2, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v0, 0x7f020420

    iput v0, v2, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/aj;

    const v4, 0x7f0803a9

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/adapter/ai;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/ai;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, p0, v8, v4, v5}, Lcom/estrongs/android/ui/adapter/aj;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0803a8

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/ui/adapter/ak;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/adapter/ak;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v0, v8, v3, v4}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v3, "#home#"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/adapter/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/adapter/a;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.estrongs.android.SHOW_SDCARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v5, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/adapter/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0201ef

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/adapter/a;->a(I)Lcom/estrongs/android/ui/adapter/a;

    iget-object v3, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0803a2

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/adapter/al;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/al;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, v8, v4, v5}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/adapter/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/adapter/a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/an;

    const v4, 0x7f08007f

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/adapter/am;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/am;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, p0, v8, v4, v5}, Lcom/estrongs/android/ui/adapter/an;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/ui/adapter/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/ui/adapter/ap;

    invoke-direct {v7, p0, v0}, Lcom/estrongs/android/ui/adapter/ap;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Ljava/lang/String;)V

    invoke-direct {v5, v8, v6, v7, v0}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->LocalSdcard:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/dm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v2, 0x7f02041f

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203c6

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0801a2

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/aq;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/aq;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "pic://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203c2

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/ar;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/ar;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "music://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203c1

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f08019f

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/as;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/as;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "video://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203af

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f08019a

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/at;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/at;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "book://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/estrongs/android/pop/z;->j:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0203ac

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f080199

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/adapter/au;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/au;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.estrongs.android.SHOW_APP_MGR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v5, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/adapter/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0201e7

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/adapter/a;->a(I)Lcom/estrongs/android/ui/adapter/a;

    iget-object v3, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Library:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/dm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v2, 0x7f02040c

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203b6

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f08042d

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/av;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/av;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "mynetwork://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/estrongs/android/pop/z;->d:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203c0

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0803aa

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/aw;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/aw;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "smb://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v2, Lcom/estrongs/android/pop/z;->U:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203b3

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0803a0

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/ax;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/ax;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "net://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203ba

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0803a4

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/ay;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/ay;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "ftp://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/fs/impl/adb/c;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203d3

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f08039e

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/bb;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/bb;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "adb://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v2, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203ae

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0803a1

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/bc;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/bc;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v7, "bt://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v2, Lcom/estrongs/android/pop/z;->ae:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203c9

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0802ee

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/bd;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/bd;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v2, Lcom/estrongs/android/pop/z;->D:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203b7

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f08012f

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/be;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/be;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v2, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Device:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/estrongs/android/ui/adapter/dm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/dm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    iput v0, v2, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v0, 0x7f02045d

    iput v0, v2, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->T:Z

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203b5

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080112

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/bf;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/bf;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v0, Lcom/estrongs/android/pop/z;->B:Z

    if-nez v0, :cond_b

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/adapter/a;

    const v4, 0x7f0203d1

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0802ef

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/adapter/bg;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/bg;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/utils/n;->c(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v3

    if-eqz v3, :cond_e

    array-length v0, v3

    if-lez v0, :cond_e

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_e

    aget-object v4, v3, v1

    const v0, 0x7f0203cc

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v3, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->B:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    aget-object v0, v3, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->c:Ljava/lang/String;

    :cond_d
    iget-object v6, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v7, Lcom/estrongs/android/ui/adapter/a;

    new-instance v8, Lcom/estrongs/android/ui/adapter/bh;

    invoke-direct {v8, p0, v4}, Lcom/estrongs/android/ui/adapter/bh;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-direct {v7, v5, v0, v8}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_e
    new-instance v0, Lcom/estrongs/android/ui/adapter/a;

    const v1, 0x7f0203b4

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f080285

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/ui/adapter/bi;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/adapter/bi;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.estrongs.android.SHOW_DISK_USAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/adapter/a;

    const v1, 0x7f0201e9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/a;->a(I)Lcom/estrongs/android/ui/adapter/a;

    iget-object v1, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "tw"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "cn"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_f
    const-string v0, ""

    :goto_2
    new-instance v1, Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0203c3

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v9}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0806d1

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/estrongs/android/ui/adapter/bj;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/adapter/bj;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v1, v3, v0, v4}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.estrongs.android.SHOW_MUSIC_PLAYER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/adapter/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/adapter/a;

    const v0, 0x7f0201ed

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/adapter/a;->a(I)Lcom/estrongs/android/ui/adapter/a;

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->Z:Z

    if-nez v0, :cond_10

    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0203bd

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0803a6

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/adapter/bk;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/bk;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v0, v2, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/a;

    const v3, 0x7f0203b2

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f080355

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/adapter/bm;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/bm;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Toolkit:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ag:Z

    if-nez v0, :cond_11

    new-instance v0, Lcom/estrongs/android/ui/adapter/bn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/bn;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f080602

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f02040b

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/bo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/bo;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/estrongs/android/ui/adapter/bp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/bp;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->RecycleBin:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v0, :cond_12

    new-instance v0, Lcom/estrongs/android/ui/adapter/br;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/br;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f08065c

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f02044e

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/bs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/bs;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->AppAssociate:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    sget-boolean v0, Lcom/estrongs/android/pop/z;->C:Z

    if-nez v0, :cond_13

    new-instance v0, Lcom/estrongs/android/ui/adapter/bt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/bt;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f08055c

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f020441

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/bu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/bu;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->RootExplorer:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    sget-boolean v0, Lcom/estrongs/android/pop/z;->R:Z

    if-nez v0, :cond_14

    new-instance v0, Lcom/estrongs/android/ui/adapter/bz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/bz;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f08033b

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f02041a

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/ca;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/ca;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Gesture:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-instance v0, Lcom/estrongs/android/ui/adapter/cc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/cc;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f080544

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f02041b

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/cd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/cd;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Hidden:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/ui/adapter/ce;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/ce;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v1, 0x7f0802ba

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    const v1, 0x7f02045c

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    new-instance v1, Lcom/estrongs/android/ui/adapter/cf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/cf;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Thumbnail:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b()V

    return-void

    :cond_15
    const-string v0, " "

    goto/16 :goto_2
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/j/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->m:Lcom/estrongs/android/j/c;

    return-object v0
.end method

.method private i()Lcom/estrongs/android/ui/d/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/ui/d/i;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->i()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f030064

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/dd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/dd;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0e019c

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0e0175

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0e0077

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v5, 0x7f0e0207

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0801a5

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801a6

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801a4

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0e0258

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/adapter/de;

    invoke-direct {v2, p0, v4, v0}, Lcom/estrongs/android/ui/adapter/de;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Landroid/app/Dialog;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/df;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/df;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801a6

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0801ee

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f08008c

    new-instance v2, Lcom/estrongs/android/ui/adapter/di;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/di;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080229

    new-instance v2, Lcom/estrongs/android/ui/adapter/dh;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/dh;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/adapter/dj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/dj;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(II)Lcom/estrongs/android/ui/adapter/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/dm;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/estrongs/android/ui/adapter/dm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/dm;

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->RealTimeMonitor:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    const-string v1, "lock_realtimemonitor"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/adapter/dl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/dl;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v2, 0x7f0802b7

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d:I

    iput v0, v1, Lcom/estrongs/android/ui/adapter/dm;->d:I

    :goto_1
    const v0, 0x7f0203f6

    iput v0, v1, Lcom/estrongs/android/ui/adapter/dm;->e:I

    const-string v0, "lock_realtimemonitor"

    iput-object v0, v1, Lcom/estrongs/android/ui/adapter/dm;->f:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/adapter/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/ae;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->RealTimeMonitor:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v0, v1, Lcom/estrongs/android/ui/adapter/dm;->d:I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->LocalSdcard:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/dm;

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->p:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/adapter/cq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/cq;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->LocalSdcard:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/dm;

    iget-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    const v1, 0x7f0203cd

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const v1, 0x7f0203b8

    :cond_5
    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/adapter/a;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/adapter/bl;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/ui/adapter/bl;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Ljava/lang/String;)V

    invoke-direct {v2, v1, p2, v3, p1}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->p:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/adapter/cb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/cb;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->NoMedia:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    const-string v1, "lock_realtimemonitor"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v1

    const-string v2, "lock_nomedia"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/adapter/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/ag;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const v2, 0x7f0802b5

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/estrongs/android/k/d;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    :goto_1
    const v1, 0x7f02042d

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->e:I

    const-string v1, "lock_nomedia"

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/dm;->f:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/ui/adapter/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/ah;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dm;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->n:Ljava/util/Map;

    sget-object v1, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->NoMedia:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v1, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    goto :goto_1
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(II)Lcom/estrongs/android/ui/adapter/a;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const-string v0, "TAG"

    const-string v1, "getChildView"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Favorite:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v1

    if-eqz p4, :cond_16

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    if-eq v0, v1, :cond_16

    if-ne p1, v1, :cond_16

    :cond_1
    const/4 p4, 0x0

    move-object v0, p4

    :goto_0
    if-nez v0, :cond_2

    if-ne p1, v1, :cond_3

    const v0, 0x7f0300fb

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020247

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    move-object v6, v0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(II)Lcom/estrongs/android/ui/adapter/a;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    return-object v6

    :cond_3
    const v0, 0x7f030107

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_a

    const v0, 0x7f0e0472

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0473

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v1, v4, Lcom/estrongs/android/ui/adapter/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0471

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, v4, Lcom/estrongs/android/ui/adapter/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/cg;

    invoke-direct {v0, p0, v4, p1, p2}, Lcom/estrongs/android/ui/adapter/cg;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Lcom/estrongs/android/ui/adapter/a;II)V

    if-nez p2, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0300fb

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v0, v4, Lcom/estrongs/android/ui/adapter/a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/estrongs/android/ui/adapter/cl;

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/estrongs/android/ui/adapter/cl;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;IILcom/estrongs/android/ui/adapter/a;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, v4, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0300fb

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_4

    :cond_a
    const v0, 0x7f0e0259

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0076

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e019c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v1, v4, Lcom/estrongs/android/ui/adapter/a;->f:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v1, v4, Lcom/estrongs/android/ui/adapter/a;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_7
    const v0, 0x7f0e0495

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020206

    const v3, 0x7f0d0063

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e0496

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->i:Lcom/estrongs/android/pop/ad;

    const-string v3, "#home_page#"

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/ad;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#home_page#"

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "#home#"

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_b
    const/4 v5, 0x1

    :goto_8
    if-eqz v5, :cond_12

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/ci;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/ui/adapter/ci;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Lcom/estrongs/android/ui/adapter/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->LocalSdcard:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    if-eq p1, v0, :cond_d

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Library:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    if-eq p1, v0, :cond_d

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Device:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    if-eq p1, v0, :cond_d

    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Toolkit:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    if-ne p1, v0, :cond_14

    :cond_d
    new-instance v0, Lcom/estrongs/android/ui/adapter/cj;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/adapter/cj;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;IILcom/estrongs/android/ui/adapter/a;Z)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0300fb

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_f
    iget-object v1, v4, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_10
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    goto/16 :goto_7

    :cond_11
    const/4 v5, 0x0

    goto :goto_8

    :cond_12
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_13
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_a

    :cond_14
    sget-object v0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Toolkit:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0300fb

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_15
    new-instance v0, Lcom/estrongs/android/ui/adapter/co;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/co;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_16
    move-object v0, p4

    goto/16 :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(I)Lcom/estrongs/android/ui/adapter/dm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(I)Lcom/estrongs/android/ui/adapter/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(I)Lcom/estrongs/android/ui/adapter/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/dm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(I)Lcom/estrongs/android/ui/adapter/dm;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v6, 0x7f02004f

    const/4 v5, 0x1

    const/4 v8, 0x0

    const v7, 0x7f070047

    const/4 v1, 0x0

    const-string v0, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isExpanded is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(I)Lcom/estrongs/android/ui/adapter/dm;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v0, v4, Lcom/estrongs/android/ui/adapter/dm;->d:I

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300da

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p3, v5}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f0e0402

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, v4, Lcom/estrongs/android/ui/adapter/dm;->e:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0259

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v2, v4, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0260

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0e0403

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v4, Lcom/estrongs/android/ui/adapter/dm;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v4, Lcom/estrongs/android/ui/adapter/dm;->f:Ljava/lang/String;

    new-instance v4, Lcom/estrongs/android/ui/adapter/cp;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/adapter/cp;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    const-string v5, "leftNavi"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/pop/app/unlock/s;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v0

    :goto_2
    invoke-virtual {p3, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p3

    :cond_2
    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/cr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/adapter/cr;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/estrongs/android/ui/adapter/dm;->d:I

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->e:I

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300da

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p3, v5}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f0e0402

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    iget v5, v4, Lcom/estrongs/android/ui/adapter/dm;->e:I

    const v6, 0x7f0d0057

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    const v0, 0x7f0e0259

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz v4, :cond_7

    iget-object v3, v4, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0260

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_8

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_8
    new-instance v0, Lcom/estrongs/android/ui/adapter/cs;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/adapter/cs;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v0

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v2

    iget v3, v4, Lcom/estrongs/android/ui/adapter/dm;->e:I

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_b
    move v0, v1

    goto/16 :goto_2

    :cond_c
    if-eqz v4, :cond_11

    iget v0, v4, Lcom/estrongs/android/ui/adapter/dm;->d:I

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030108

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    invoke-virtual {p3, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(I)I

    move-result v0

    move v2, v0

    :goto_6
    const v0, 0x7f0e0076

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v5, v4, Lcom/estrongs/android/ui/adapter/dm;->e:I

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0259

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->a()Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u200f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    const v0, 0x7f0e019c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/dm;->a()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v4, v4, Lcom/estrongs/android/ui/adapter/dm;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/ct;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/adapter/ct;-><init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v2

    move v2, v3

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_e
    move v2, v1

    goto/16 :goto_6

    :cond_f
    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->q:Lcom/estrongs/android/ui/theme/at;

    const v6, 0x7f0d0008

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_10
    iget-object v5, v4, Lcom/estrongs/android/ui/adapter/dm;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_11
    move v0, v1

    move v2, v1

    goto/16 :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->l:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->l:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->l:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->l:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
