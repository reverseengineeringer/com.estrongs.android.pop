.class public Lcom/estrongs/android/ui/a/aa;
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

.field private d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private e:[Ljava/lang/String;

.field private f:Lcom/estrongs/android/pop/ad;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/content/SharedPreferences;

.field private j:Landroid/content/SharedPreferences$Editor;

.field private k:Lcom/estrongs/android/util/a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/a/cw;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/Handler;

.field private n:Lcom/estrongs/android/ui/theme/al;

.field private o:Lcom/estrongs/android/util/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "www.estrongs.com"

    sput-object v0, Lcom/estrongs/android/ui/a/aa;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/ui/a/aa;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->k:Lcom/estrongs/android/util/a;

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->n:Lcom/estrongs/android/ui/theme/al;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/aa;->m:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->f:Lcom/estrongs/android/pop/ad;

    const-string v0, "new_navi"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->i:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->j:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f020007

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->h:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020008

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/aa;->d()V

    new-instance v0, Lcom/estrongs/android/ui/a/ab;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/ab;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->o:Lcom/estrongs/android/util/bb;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->o:Lcom/estrongs/android/util/bb;

    invoke-static {v0}, Lcom/estrongs/android/util/ay;->a(Lcom/estrongs/android/util/bb;)V

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

    new-instance v1, Lcom/estrongs/android/ui/a/ao;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/a/ao;-><init>(Lcom/estrongs/android/ui/a/aa;Ljava/util/HashSet;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/ui/preference/q;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/aa;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/estrongs/android/ui/a/aa;->b(Landroid/content/Context;)V

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

    new-instance v1, Lcom/estrongs/android/ui/a/ck;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/ck;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/kr;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x1000101c

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/ui/a/cw;)V
    .locals 9

    new-instance v0, Lcom/estrongs/android/ui/a/a;

    const v1, 0x7f02024a

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b0456

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/a/ci;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/ci;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v2, "virtualKey"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/estrongs/android/ui/a/aa;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    new-instance v5, Lcom/estrongs/android/ui/a/a;

    iget-object v6, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iget-object v7, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    new-instance v8, Lcom/estrongs/android/ui/a/cj;

    invoke-direct {v8, p0, v0, v4}, Lcom/estrongs/android/ui/a/cj;-><init>(Lcom/estrongs/android/ui/a/aa;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;Ljava/lang/String;)V

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-boolean v2, v5, Lcom/estrongs/android/ui/a/a;->e:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/a/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/a/a;

    iput-object v4, v5, Lcom/estrongs/android/ui/a/a;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/d/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/m;->a()Z

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v3

    const v5, 0x7f020259

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bQ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/estrongs/fs/m;->E:Lcom/estrongs/fs/m;

    invoke-virtual {v3}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget-object v3, Lcom/estrongs/fs/m;->E:Lcom/estrongs/fs/m;

    invoke-virtual {v3}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    sget-object v3, Lcom/estrongs/fs/m;->D:Lcom/estrongs/fs/m;

    invoke-virtual {v3}, Lcom/estrongs/fs/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f020259

    const/4 v0, 0x0

    const-string v1, "all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "baidu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "document"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v1, "news"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f020260

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "weather"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f020261

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Z)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0116

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b01e4

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/impl/local/l;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/ui/a/aa;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/a/cl;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/a/cl;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/theme/al;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/a/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/aa;->c()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->f:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cu;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/util/ay;->a(Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cw;

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/cw;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/aa;->notifyDataSetChanged()V

    return-void
.end method

.method public static c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "recycle://"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0432

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v2, 0x7f0b0447

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v2, 0x7f0b000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v2, 0x7f0b000b

    new-instance v3, Lcom/estrongs/android/ui/a/cr;

    invoke-direct {v3, v0, p0}, Lcom/estrongs/android/ui/a/cr;-><init>(Lcom/estrongs/android/pop/ad;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/util/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->k:Lcom/estrongs/android/util/a;

    return-object v0
.end method

.method private d()V
    .locals 13

    const v12, 0x7f0b005e

    const v11, 0x7f02023b

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cu;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/ay;->a(Ljava/lang/String;ZLjava/util/List;)V

    new-instance v0, Lcom/estrongs/android/ui/a/cw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cw;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/estrongs/android/ui/a/cw;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/cw;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/android/ui/a/cw;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/cw;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->e:[Ljava/lang/String;

    aget-object v0, v0, v9

    iput-object v0, v2, Lcom/estrongs/android/ui/a/cw;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/ct;

    const v4, 0x7f020245

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0450

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/cs;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/cs;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/estrongs/android/ui/a/ct;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020244

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0050

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/cu;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/cu;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v3, "#home#"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/a/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/a/a;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.estrongs.android.SHOW_SDCARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v5, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0200e5

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/a/a;->a(I)Lcom/estrongs/android/ui/a/a;

    iget-object v3, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f02024b

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0395

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/cv;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/cv;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/a/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/a/a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/an;

    invoke-direct {p0, v11}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b001f

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ad;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ad;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/estrongs/android/ui/a/an;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

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

    iget-object v4, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/ui/a/a;

    const v6, 0x7f020252

    invoke-direct {p0, v6}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/estrongs/android/ui/a/ae;

    invoke-direct {v8, p0, v0}, Lcom/estrongs/android/ui/a/ae;-><init>(Lcom/estrongs/android/ui/a/aa;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/a/cw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cw;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/estrongs/android/ui/a/cw;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f02024c

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b005d

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/af;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/af;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "gallery://local/buckets/"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020248

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v12}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ag;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ag;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "music://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020247

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0061

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ah;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ah;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "video://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020237

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0060

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ai;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ai;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "book://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/estrongs/android/pop/z;->j:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020234

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b005f

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/aj;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/aj;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.estrongs.android.SHOW_APP_MGR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v5, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f0200dd

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/a/a;->a(I)Lcom/estrongs/android/ui/a/a;

    iget-object v3, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/a/cw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cw;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->e:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/estrongs/android/ui/a/cw;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f02023c

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0499

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ak;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ak;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "mynetwork://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/estrongs/android/pop/z;->d:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020246

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0052

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/al;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/al;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "smb://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v2, Lcom/estrongs/android/pop/z;->U:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020239

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0054

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/am;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/am;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "net://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020240

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0053

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ap;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ap;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "ftp://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/fs/impl/adb/c;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020258

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0572

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/aq;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/aq;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "adb://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v2, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020236

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0055

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/ar;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/ar;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    const-string v7, "bt://"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v2, Lcom/estrongs/android/pop/z;->ae:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f02024e

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b0312

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/as;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/as;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v2, Lcom/estrongs/android/pop/z;->D:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f02023d

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b00a7

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/at;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/at;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/android/ui/a/cw;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/cw;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->e:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/estrongs/android/ui/a/cw;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->T:Z

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0, v11}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b037f

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/au;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/au;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v0, Lcom/estrongs/android/pop/z;->B:Z

    if-nez v0, :cond_b

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/a/a;

    const v4, 0x7f020256

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b02c5

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/a/av;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/a/av;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/utils/n;->c(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v3

    if-eqz v3, :cond_e

    array-length v0, v3

    if-lez v0, :cond_e

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_e

    aget-object v4, v3, v1

    const v0, 0x7f020251

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

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
    iget-object v6, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v7, Lcom/estrongs/android/ui/a/a;

    new-instance v8, Lcom/estrongs/android/ui/a/aw;

    invoke-direct {v8, p0, v4}, Lcom/estrongs/android/ui/a/aw;-><init>(Lcom/estrongs/android/ui/a/aa;Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-direct {v7, v5, v0, v8}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_e
    new-instance v0, Lcom/estrongs/android/ui/a/a;

    const v1, 0x7f02023a

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0b0136

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/ui/a/ax;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/a/ax;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.estrongs.android.SHOW_DISK_USAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/a/a;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/a;->a(I)Lcom/estrongs/android/ui/a/a;

    iget-object v1, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "tw"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "cn"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_f
    const-string v0, ""

    :goto_2
    new-instance v1, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020249

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v12}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b02ae

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/estrongs/android/ui/a/ay;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/a/ay;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v1, v3, v0, v4}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.estrongs.android.SHOW_MUSIC_PLAYER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/app/TransitActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/a/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/ui/a/a;

    const v0, 0x7f0200e3

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/a/a;->a(I)Lcom/estrongs/android/ui/a/a;

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->Z:Z

    if-nez v0, :cond_10

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/a;

    const v3, 0x7f020243

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0058

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/ba;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/ba;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ag:Z

    if-nez v0, :cond_11

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/bf;

    const v3, 0x7f02024d

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0432

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/be;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/be;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/bf;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/ui/a/bf;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bd;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bd;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bb;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/view/View$OnClickListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v0, :cond_12

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/bh;

    const v3, 0x7f020235

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0467

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v10}, Lcom/estrongs/android/ui/a/bh;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/ui/a/bh;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bg;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bg;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-boolean v0, Lcom/estrongs/android/pop/z;->C:Z

    if-nez v0, :cond_13

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/bo;

    const v3, 0x7f020250

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b01e6

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/bn;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/bn;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/bo;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/ui/a/bo;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bi;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bi;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-boolean v0, Lcom/estrongs/android/pop/z;->R:Z

    if-nez v0, :cond_14

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/bs;

    const v3, 0x7f020241

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0404

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/a/br;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/a/br;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/estrongs/android/ui/a/bs;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/ui/a/bs;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bq;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bq;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/bu;

    const v3, 0x7f020242

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b01e7

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v10}, Lcom/estrongs/android/ui/a/bu;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/ui/a/bu;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bt;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bt;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/bw;

    const v3, 0x7f020257

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0406

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/a/aa;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v10}, Lcom/estrongs/android/ui/a/bw;-><init>(Lcom/estrongs/android/ui/a/aa;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/ui/a/bw;->a(Z)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/bv;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/bv;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/a;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_15
    const-string v0, " "

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/estrongs/android/ui/a/aa;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/estrongs/android/ui/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cw;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/estrongs/android/ui/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cw;

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cw;

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    iget-object v0, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->m:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/a/cc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/cc;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/cw;

    iget-object v1, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const v1, 0x7f020252

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bu(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const v1, 0x7f02023e

    :cond_4
    iget-object v0, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/a/aa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/ui/a/az;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/ui/a/az;-><init>(Lcom/estrongs/android/ui/a/aa;Ljava/lang/String;)V

    invoke-direct {v2, v1, p2, v3, p1}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->m:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/a/bp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/bp;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->i:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/a/aa;->a(II)Lcom/estrongs/android/ui/a/a;

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

    if-eqz p4, :cond_14

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    :cond_1
    const/4 p4, 0x0

    move-object v0, p4

    :goto_0
    if-nez v0, :cond_2

    if-nez p1, :cond_3

    const v0, 0x7f030089

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    move-object v6, v0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/a/aa;->a(II)Lcom/estrongs/android/ui/a/a;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    return-object v6

    :cond_3
    const v0, 0x7f030092

    goto :goto_1

    :cond_4
    if-nez p1, :cond_8

    const v0, 0x7f0a0295

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v0, 0x7f0a0296

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v4, Lcom/estrongs/android/ui/a/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0294

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, v4, Lcom/estrongs/android/ui/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/a/bx;

    invoke-direct {v0, p0, v4, p1, p2}, Lcom/estrongs/android/ui/a/bx;-><init>(Lcom/estrongs/android/ui/a/aa;Lcom/estrongs/android/ui/a/a;II)V

    if-nez p2, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f030089

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v0, v4, Lcom/estrongs/android/ui/a/a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/estrongs/android/ui/a/cd;

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/estrongs/android/ui/a/cd;-><init>(Lcom/estrongs/android/ui/a/aa;IILcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    iget-object v1, v4, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f030089

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    const v0, 0x7f0a00cd

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/aa;->n:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const v0, 0x7f0a003d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, v4, Lcom/estrongs/android/ui/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0038

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/SimpleSwitchButton;

    iget-boolean v1, v4, Lcom/estrongs/android/ui/a/a;->f:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setChecked(Z)V

    iget-object v1, v4, Lcom/estrongs/android/ui/a/a;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_6
    const v0, 0x7f0a02a6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02a7

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/aa;->f:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "#home_page#"

    :goto_7
    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/ad;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#home_page#"

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "#home#"

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_9
    const/4 v5, 0x1

    :goto_8
    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/a/bz;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/ui/a/bz;-><init>(Lcom/estrongs/android/ui/a/aa;Lcom/estrongs/android/ui/a/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    :cond_b
    new-instance v0, Lcom/estrongs/android/ui/a/ca;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/a/ca;-><init>(Lcom/estrongs/android/ui/a/aa;IILcom/estrongs/android/ui/a/a;Z)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f030089

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    iget-object v1, v4, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setVisibility(I)V

    goto/16 :goto_6

    :cond_e
    const-string v2, "#home#"

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    goto :goto_8

    :cond_10
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_11
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_a

    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f030089

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_13
    new-instance v0, Lcom/estrongs/android/ui/a/cg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/cg;-><init>(Lcom/estrongs/android/ui/a/aa;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_14
    move-object v0, p4

    goto/16 :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/aa;->a(I)Lcom/estrongs/android/ui/a/cw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/aa;->a(I)Lcom/estrongs/android/ui/a/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/aa;->a(I)Lcom/estrongs/android/ui/a/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cw;->b:Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/aa;->a(I)Lcom/estrongs/android/ui/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f020006

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/aa;->a(I)Lcom/estrongs/android/ui/a/cw;

    move-result-object v1

    const v0, 0x7f0a00cd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/estrongs/android/ui/a/cw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a00e1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/a/aa;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Lcom/estrongs/android/ui/a/ch;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/a/ch;-><init>(Lcom/estrongs/android/ui/a/aa;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/a/aa;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->j:Landroid/content/SharedPreferences$Editor;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->j:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->j:Landroid/content/SharedPreferences$Editor;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aa;->j:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
