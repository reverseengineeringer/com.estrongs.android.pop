.class public Lcom/estrongs/android/ui/c/b/b;
.super Lcom/estrongs/android/ui/c/b/a;


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/ui/c/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/c/b/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    const v1, 0x7f020261

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "isSearchEngine"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "isSearchEngine"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "Home_NetSearch"

    const-string v0, "Home_NetSearch_UV"

    :goto_1
    invoke-static {v1, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v0}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b045a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "Home_News"

    const-string v0, "Home_News_UV"

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0459

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Home_Weather"

    const-string v0, "Home_Weather_UV"

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/b;->a(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/ui/c/b/b;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ay;->c(Ljava/io/File;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ay;->c(Ljava/io/File;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/b;->c(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    return-void
.end method

.method private c(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 9

    const v6, 0x7f0b0456

    const v8, 0x7f0b0013

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "virtualKey"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    new-array v0, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v5, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    :goto_1
    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v5}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b02ca

    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    const/4 v5, -0x1

    new-instance v6, Lcom/estrongs/android/ui/c/b/e;

    invoke-direct {v6, p0, v1, v4, p1}, Lcom/estrongs/android/ui/c/b/e;-><init>(Lcom/estrongs/android/ui/c/b/b;ZLjava/lang/String;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    invoke-virtual {v2, v0, v5, v6}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b001b

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/b;->b(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 0

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "collection_block"

    return-object v0
.end method

.method protected g()Ljava/util/List;
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

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->k:Ljava/util/List;

    return-object v0
.end method

.method protected h()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->j:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cu;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/b;->j:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/util/ay;->a(Ljava/lang/String;ZLjava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->k:Ljava/util/List;

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/b;->k:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/estrongs/android/ui/c/a/b;

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/c/a/b;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/c/a/b;->a(Ljava/lang/String;)V

    const-string v4, "virtualKey"

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v2}, Lcom/estrongs/android/ui/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/c/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/ui/c/b/c;

    invoke-direct {v2, p0, v4, v0}, Lcom/estrongs/android/ui/c/b/c;-><init>(Lcom/estrongs/android/ui/c/b/b;Ljava/lang/String;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/c/a/b;->a(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/estrongs/android/ui/c/b/d;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/c/b/d;-><init>(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/c/a/b;->a(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/b;->e:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    const v5, 0x7f020259

    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v5, v2}, Lcom/estrongs/android/util/ay;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/b;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/b;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected i()I
    .locals 1

    const v0, 0x7f030017

    return v0
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected k()I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->g:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/b;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/b;->h()V

    invoke-super {p0}, Lcom/estrongs/android/ui/c/b/a;->l()V

    return-void
.end method
