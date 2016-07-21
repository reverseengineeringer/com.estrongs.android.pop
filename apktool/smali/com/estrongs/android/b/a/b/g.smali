.class public Lcom/estrongs/android/b/a/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/b/a/o;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/b/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/b/g;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/g;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/g;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/b/a/b/g;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/estrongs/android/b/a/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/b/g;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f08018e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/estrongs/fs/b/ad;

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v3, v1, p2, v0, v2}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/estrongs/android/ui/notification/f;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f08007f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lcom/estrongs/android/ui/notification/f;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/b/ad;->addProgressListener(Lcom/estrongs/a/a/l;)V

    new-instance v0, Lcom/estrongs/android/b/a/b/i;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/b/a/b/i;-><init>(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;Lcom/estrongs/fs/b/ad;Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/b/ad;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/g;->a:Ljava/util/Map;

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ad;->execute()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/b/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.vending"

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/b/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0803ca

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/b/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/b/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/b/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/b/a/b/g;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/b/a/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V
    .locals 3

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, p2, p4}, Lcom/estrongs/android/b/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "recommend"

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/estrongs/android/b/a/a;Landroid/content/Context;ILcom/estrongs/android/pop/app/cleaner/i;)V
    .locals 15

    const v1, 0x7f0e0076

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0e0073

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0e0077

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    const v3, 0x7f0e0256

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    const v3, 0x7f0e00cc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Button;

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/estrongs/android/b/a/a/f;

    if-eqz v3, :cond_2

    move-object/from16 v3, p2

    check-cast v3, Lcom/estrongs/android/b/a/a/f;

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->w()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->u()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->y()I

    move-result v6

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->t()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->t()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    new-instance v14, Lcom/estrongs/android/b/a/b/h;

    invoke-direct {v14, p0, v12, v2}, Lcom/estrongs/android/b/a/b/h;-><init>(Lcom/estrongs/android/b/a/b/g;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/a/f;->t()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    move-object v3, v1

    move-object v2, v11

    move-object v1, v10

    :goto_1
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v5}, Lcom/estrongs/android/b/a/b/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f080094

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/b/a/b/j;

    move-object v2, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/estrongs/android/b/a/b/j;-><init>(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/estrongs/android/b/a/a;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p2

    check-cast v3, Lcom/estrongs/android/b/a/p;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "button"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "image"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "action"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    invoke-virtual {v3, v5}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/estrongs/android/b/a/p;->s()Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "market"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const v3, 0x7f0200f8

    invoke-static {v1, v13, v3}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    if-eqz v2, :cond_4

    if-eqz v14, :cond_3

    const v1, 0x7f0200f7

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0200f7

    invoke-static {v2, v14, v1}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v3, v10

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_4
    move-object v3, v10

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_1

    :cond_5
    const v1, 0x7f080178

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method
