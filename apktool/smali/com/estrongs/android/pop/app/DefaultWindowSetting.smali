.class public Lcom/estrongs/android/pop/app/DefaultWindowSetting;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field private c:Lcom/estrongs/android/pop/app/ai;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
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

.method static synthetic a(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Lcom/estrongs/android/pop/app/ai;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c:Lcom/estrongs/android/pop/app/ai;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->M()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ai;

    invoke-direct {v2, p0, p0, v1}, Lcom/estrongs/android/pop/app/ai;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c:Lcom/estrongs/android/pop/app/ai;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c:Lcom/estrongs/android/pop/app/ai;

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
    .locals 9

    const v8, 0x7f020252

    const v7, 0x7f02023b

    const v6, 0x7f020239

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "#home_page#"

    const v4, 0x7f020245

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "#home#"

    const v4, 0x7f020244

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "/"

    const v4, 0x7f02024b

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "gallery://local/buckets/"

    const v4, 0x7f02024c

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "music://"

    const v4, 0x7f020248

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "video://"

    const v4, 0x7f020247

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v3, "book://"

    const v4, 0x7f020237

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "smb://"

    const v5, 0x7f020246

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "net://"

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "pcs://"

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "ftp://"

    const v5, 0x7f020240

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "bt://"

    const v5, 0x7f020236

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "app://"

    const v5, 0x7f020234

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "du://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02023a

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "remote://"

    const v5, 0x7f02024e

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "download://"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "mynetwork://"

    const v5, 0x7f02023c

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    const-string v4, "recycle://"

    const v5, 0x7f02024d

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "#home_page#"

    const v5, 0x7f0b0450

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "#home#"

    const v5, 0x7f0b0050

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "/"

    const v5, 0x7f0b0395

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "gallery://local/buckets/"

    const v5, 0x7f0b005d

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "music://"

    const v5, 0x7f0b005e

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "video://"

    const v5, 0x7f0b0061

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v4, "book://"

    const v5, 0x7f0b0060

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const v4, 0x7f0b001f

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "smb://"

    const v4, 0x7f0b0052

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "net://"

    const v4, 0x7f0b0054

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "pcs://"

    const v4, 0x7f0b04c7

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "ftp://"

    const v4, 0x7f0b0053

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "bt://"

    const v4, 0x7f0b0055

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v3, "app://"

    const v4, 0x7f0b005f

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "du://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b0136

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "remote://"

    const v3, 0x7f0b0312

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "download://"

    const v3, 0x7f0b037f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "mynetwork://"

    const v3, 0x7f0b0499

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const-string v2, "recycle://"

    const v3, 0x7f0b0432

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cu;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/estrongs/android/util/ay;->a(Ljava/lang/String;ZLjava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    iget-object v4, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    const v4, 0x7f0b0051

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lcom/estrongs/android/ui/dialog/cy;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/dialog/cy;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cy;->a()V

    new-instance v1, Lcom/estrongs/android/pop/app/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ah;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cy;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->setContentView(I)V

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0464

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0465

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0356

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->setTitle(I)V

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/af;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/af;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ag;-><init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V

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
