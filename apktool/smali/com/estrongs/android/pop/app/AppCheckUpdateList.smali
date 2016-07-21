.class public Lcom/estrongs/android/pop/app/AppCheckUpdateList;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/estrongs/android/ui/dialog/aa;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/estrongs/android/pop/app/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->c:Lcom/estrongs/android/ui/dialog/aa;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Lcom/estrongs/android/pop/app/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->f:Lcom/estrongs/android/pop/app/f;

    return-object v0
.end method

.method private a()V
    .locals 9

    const/4 v3, 0x0

    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->d:Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move v2, v3

    :goto_0
    array-length v1, v5

    if-ge v2, v1, :cond_1

    aget-object v1, v5, v2

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-nez v4, :cond_0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/estrongs/android/pop/app/f;

    invoke-direct {v1, p0, p0, v6}, Lcom/estrongs/android/pop/app/f;-><init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->f:Lcom/estrongs/android/pop/app/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->f:Lcom/estrongs/android/pop/app/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method private b()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->c:Lcom/estrongs/android/ui/dialog/aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/aa;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/dialog/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->c:Lcom/estrongs/android/ui/dialog/aa;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->c:Lcom/estrongs/android/ui/dialog/aa;

    new-instance v1, Lcom/estrongs/android/pop/app/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/e;-><init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/aa;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->c:Lcom/estrongs/android/ui/dialog/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/aa;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->c:Lcom/estrongs/android/ui/dialog/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/aa;->a(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->setContentView(I)V

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a:Landroid/widget/TextView;

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0e0185

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->b:Landroid/widget/TextView;

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->setTitle(I)V

    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/c;-><init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0184

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/d;-><init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
