.class public Lcom/estrongs/android/pop/app/DefaultWindowSetting;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field private c:Lcom/estrongs/android/pop/app/am;

.field private d:Ljava/util/Map;
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

.field private e:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Lcom/estrongs/android/pop/app/am;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c:Lcom/estrongs/android/pop/app/am;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0e02a3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->N()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/am;

    invoke-direct {v2, p0, p0, v1}, Lcom/estrongs/android/pop/app/am;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c:Lcom/estrongs/android/pop/app/am;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c:Lcom/estrongs/android/pop/app/am;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 8

    const v7, 0x7f0203cd

    const v6, 0x7f0203b5

    const v5, 0x7f0203b3

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "#home_page#"

    const v3, 0x7f0203bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "#home#"

    const v3, 0x7f0203be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "/"

    const v3, 0x7f0203c5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "pic://"

    const v3, 0x7f0203c6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "music://"

    const v3, 0x7f0203c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "video://"

    const v3, 0x7f0203c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v2, "book://"

    const v3, 0x7f0203af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "smb://"

    const v4, 0x7f0203c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "net://"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "pcs://"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "ftp://"

    const v4, 0x7f0203ba

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "bt://"

    const v4, 0x7f0203ae

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "app://"

    const v4, 0x7f0203ac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "remote://"

    const v4, 0x7f0203c9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "download://"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "mynetwork://"

    const v4, 0x7f0203b6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "recycle://"

    const v4, 0x7f0203c8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "#home_page#"

    const v4, 0x7f0803a9

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "#home#"

    const v4, 0x7f0803a8

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "/"

    const v4, 0x7f0803a2

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "pic://"

    const v3, 0x7f0801a2

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "music://"

    const v3, 0x7f0801a0

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "video://"

    const v3, 0x7f08019f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "book://"

    const v3, 0x7f08019a

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const v2, 0x7f08007f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "smb://"

    const v2, 0x7f0803aa

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "net://"

    const v2, 0x7f0803a0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "pcs://"

    const v2, 0x7f0801a1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "ftp://"

    const v2, 0x7f0803a4

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "bt://"

    const v2, 0x7f0803a1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "app://"

    const v2, 0x7f080199

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "remote://"

    const v2, 0x7f0802ee

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "download://"

    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "mynetwork://"

    const v2, 0x7f08042d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v1, "recycle://"

    const v2, 0x7f080602

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/dd;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/bc;->a(Ljava/lang/String;ZLjava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const v3, 0x7f0803ae

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/da;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/dialog/da;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/da;->a()V

    new-instance v1, Lcom/estrongs/android/pop/app/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/al;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/da;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->setContentView(I)V

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a:Landroid/widget/TextView;

    const v1, 0x7f08024e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0e0185

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b:Landroid/widget/TextView;

    const v1, 0x7f08024d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08048d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->setTitle(I)V

    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/aj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/aj;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e02a2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/ak;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ak;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
