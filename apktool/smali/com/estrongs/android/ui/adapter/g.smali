.class public Lcom/estrongs/android/ui/adapter/g;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/adapter/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->g:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/adapter/g;->i:I

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/g;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->d:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/estrongs/android/ui/adapter/g;->g:Ljava/util/Map;

    iput-object p4, p0, Lcom/estrongs/android/ui/adapter/g;->f:Ljava/util/Map;

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/g;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/adapter/i;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->N()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v4, Lcom/estrongs/android/ui/adapter/i;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/adapter/i;-><init>(Lcom/estrongs/android/ui/adapter/g;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    const/4 v2, 0x1

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    :cond_0
    iget-object v5, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/i;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->a()Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    iput-object v2, v4, Lcom/estrongs/android/ui/adapter/i;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iput-object v2, v4, Lcom/estrongs/android/ui/adapter/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/estrongs/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/android/ui/adapter/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/estrongs/android/ui/adapter/j;

    invoke-direct {v0, p0, v8}, Lcom/estrongs/android/ui/adapter/j;-><init>(Lcom/estrongs/android/ui/adapter/g;Lcom/estrongs/android/ui/adapter/h;)V

    const v1, 0x7f080268

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/g;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/estrongs/android/ui/adapter/j;

    invoke-direct {v3, p0, v8}, Lcom/estrongs/android/ui/adapter/j;-><init>(Lcom/estrongs/android/ui/adapter/g;Lcom/estrongs/android/ui/adapter/h;)V

    const v0, 0x7f0806d0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/g;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/ui/adapter/j;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v3, Lcom/estrongs/android/ui/adapter/j;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/g;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->N()Ljava/util/ArrayList;

    move-result-object v5

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v6, Lcom/estrongs/android/ui/adapter/i;

    invoke-direct {v6, p0}, Lcom/estrongs/android/ui/adapter/i;-><init>(Lcom/estrongs/android/ui/adapter/g;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/estrongs/android/ui/adapter/i;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->g:Ljava/util/Map;

    iget-object v7, v6, Lcom/estrongs/android/ui/adapter/i;->c:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/estrongs/android/ui/adapter/i;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->f:Ljava/util/Map;

    iget-object v7, v6, Lcom/estrongs/android/ui/adapter/i;->c:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/estrongs/android/ui/adapter/i;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, v6, Lcom/estrongs/android/ui/adapter/i;->c:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/estrongs/android/ui/adapter/j;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/adapter/j;

    invoke-direct {v0, p0, v8}, Lcom/estrongs/android/ui/adapter/j;-><init>(Lcom/estrongs/android/ui/adapter/g;Lcom/estrongs/android/ui/adapter/h;)V

    const v1, 0x7f080167

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/g;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/ui/adapter/j;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/dd;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/estrongs/android/util/bc;->a(Ljava/lang/String;ZLjava/util/List;)V

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/j;->b:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/estrongs/android/ui/adapter/g;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/g;->i:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v2, "#home_page#"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v2, "#home#"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/z;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v2, "/"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/estrongs/android/ui/adapter/g;->i:I

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "pic://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "music://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "video://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "book://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "app://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "mynetwork://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "smb://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v0, Lcom/estrongs/android/pop/z;->U:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "net://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "ftp://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "bt://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ae:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "remote://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v0, Lcom/estrongs/android/pop/z;->T:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "download://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "recycle://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/adapter/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "app://"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->h:Ljava/util/List;

    const-string v1, "mynetwork://"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(II)Lcom/estrongs/android/ui/adapter/i;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/g;->a(I)Lcom/estrongs/android/ui/adapter/j;

    move-result-object v0

    :try_start_0
    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/j;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/estrongs/android/ui/adapter/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/j;

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/g;->b()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/adapter/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/g;->a(II)Lcom/estrongs/android/ui/adapter/i;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    const v2, 0x7f020324

    invoke-virtual {p4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p4, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/g;->a(II)Lcom/estrongs/android/ui/adapter/i;

    move-result-object v1

    const v0, 0x7f0e0455

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0e0456

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0458

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    const v2, 0x7f02039f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/estrongs/android/ui/adapter/h;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/adapter/h;-><init>(Lcom/estrongs/android/ui/adapter/g;Lcom/estrongs/android/ui/adapter/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/g;->a(I)Lcom/estrongs/android/ui/adapter/j;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/j;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/g;->a(I)Lcom/estrongs/android/ui/adapter/j;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/g;->a(I)Lcom/estrongs/android/ui/adapter/j;

    move-result-object v1

    const v0, 0x7f0e0259

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f0d0105

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0260

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
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
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/g;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
