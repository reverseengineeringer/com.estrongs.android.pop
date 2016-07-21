.class public Lcom/estrongs/android/ui/adapter/s;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/adapter/x;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private final f:I

.field private g:Landroid/content/pm/PackageManager;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/adapter/s;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->h:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/s;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->g:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/s;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/s;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->g:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/estrongs/android/ui/adapter/x;

    invoke-direct {v0, p0, v7}, Lcom/estrongs/android/ui/adapter/x;-><init>(Lcom/estrongs/android/ui/adapter/s;Lcom/estrongs/android/ui/adapter/t;)V

    const v2, 0x7f08048f

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/s;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/x;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/android/ui/adapter/x;

    invoke-direct {v2, p0, v7}, Lcom/estrongs/android/ui/adapter/x;-><init>(Lcom/estrongs/android/ui/adapter/s;Lcom/estrongs/android/ui/adapter/t;)V

    const v0, 0x7f08032c

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/s;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/x;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "back"

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v4, "refresh"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "close_current"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "exit"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "show_navi"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "open_settings"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    new-instance v4, Lcom/estrongs/android/ui/adapter/w;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/adapter/w;-><init>(Lcom/estrongs/android/ui/adapter/s;)V

    aget-object v5, v3, v0

    iput-object v5, v4, Lcom/estrongs/android/ui/adapter/w;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    aget-object v6, v3, v0

    invoke-static {v5, v6}, Lcom/estrongs/android/ui/guesture/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/ui/adapter/w;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/estrongs/android/ui/adapter/x;

    invoke-direct {v3, p0, v7}, Lcom/estrongs/android/ui/adapter/x;-><init>(Lcom/estrongs/android/ui/adapter/s;Lcom/estrongs/android/ui/adapter/t;)V

    const v0, 0x7f0806d0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/s;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/ui/adapter/x;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v3, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "open_window#home_page#"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "open_window#home#"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "open_lib_pic"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "open_lib_music"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "open_lib_video"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "open_lib_text"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "open_windowmynetwork://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->d:Z

    if-nez v0, :cond_1

    const-string v0, "open_windowsmb://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->U:Z

    if-nez v0, :cond_2

    const-string v0, "open_windownet://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "open_windowftp://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "open_windowbt://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v0, Lcom/estrongs/android/pop/z;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "open_windowapp://user"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v0, Lcom/estrongs/android/pop/z;->T:Z

    if-nez v0, :cond_5

    const-string v0, "open_windowdownload://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v0, Lcom/estrongs/android/pop/z;->B:Z

    if-nez v0, :cond_6

    const-string v0, "open_windowtask_manager"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "open_windowdu://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ae:Z

    if-nez v0, :cond_7

    const-string v0, "open_windowremote://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v0, Lcom/estrongs/android/pop/z;->D:Z

    if-nez v0, :cond_8

    const-string v0, "open_windownet_manager"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v0, Lcom/estrongs/android/pop/z;->af:Z

    if-nez v0, :cond_9

    const-string v0, "open_windowclipboard"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-boolean v0, Lcom/estrongs/android/pop/z;->Z:Z

    if-nez v0, :cond_a

    const-string v0, "open_windowhide_list"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v0, Lcom/estrongs/android/pop/z;->C:Z

    if-nez v0, :cond_b

    const-string v0, "open_windowroot_explorer"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ag:Z

    if-nez v0, :cond_c

    const-string v0, "open_windowrecycle://"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    new-instance v5, Lcom/estrongs/android/ui/adapter/w;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/adapter/w;-><init>(Lcom/estrongs/android/ui/adapter/s;)V

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/ui/adapter/w;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    iget-object v6, v5, Lcom/estrongs/android/ui/adapter/w;->c:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/estrongs/android/ui/guesture/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/ui/adapter/w;->b:Ljava/lang/String;

    iget-object v0, v3, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/adapter/x;

    invoke-direct {v0, p0, v7}, Lcom/estrongs/android/ui/adapter/x;-><init>(Lcom/estrongs/android/ui/adapter/s;Lcom/estrongs/android/ui/adapter/t;)V

    const v2, 0x7f08032b

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/adapter/s;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/x;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/adapter/v;

    invoke-direct {v0, p0, v7}, Lcom/estrongs/android/ui/adapter/v;-><init>(Lcom/estrongs/android/ui/adapter/s;Lcom/estrongs/android/ui/adapter/t;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/adapter/s;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/adapter/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/estrongs/android/ui/adapter/w;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/s;->a(I)Lcom/estrongs/android/ui/adapter/x;

    move-result-object v0

    :try_start_0
    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/w;
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

.method public a(I)Lcom/estrongs/android/ui/adapter/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/x;

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/s;->a(II)Lcom/estrongs/android/ui/adapter/w;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x8

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v3, 0x0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    const v0, 0x7f020324

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p4, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/adapter/s;->a(II)Lcom/estrongs/android/ui/adapter/w;

    move-result-object v1

    const v0, 0x7f0e0455

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/w;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0e0456

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0457

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, v1, Lcom/estrongs/android/ui/adapter/w;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->h:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/adapter/t;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/adapter/t;-><init>(Lcom/estrongs/android/ui/adapter/s;Lcom/estrongs/android/ui/adapter/w;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/s;->h:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/w;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p4

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/estrongs/android/ui/adapter/w;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/s;->a(I)Lcom/estrongs/android/ui/adapter/x;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/x;->b:Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/s;->a(I)Lcom/estrongs/android/ui/adapter/x;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x8

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    const v0, 0x7f0e0402

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/s;->a(I)Lcom/estrongs/android/ui/adapter/x;

    move-result-object v1

    const v0, 0x7f0e0259

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/s;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f0d0069

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0260

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/s;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/s;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

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

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/s;->b:Landroid/os/Handler;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/s;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
