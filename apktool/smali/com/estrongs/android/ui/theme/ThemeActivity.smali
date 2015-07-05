.class public Lcom/estrongs/android/ui/theme/ThemeActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/al;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/estrongs/android/ui/a/db;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/estrongs/android/ui/e/jk;

.field private h:Z

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/theme/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/theme/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/m;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/e/jk;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Lcom/estrongs/android/ui/e/jk;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Lcom/estrongs/android/ui/e/jk;

    const v1, 0x7f0b0032

    const v2, 0x7f02029c

    new-instance v3, Lcom/estrongs/android/ui/theme/n;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/theme/n;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/theme/ai;)V
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "theme/classic/image_thumb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "image_thumb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->g()V

    new-instance v0, Lcom/estrongs/android/ui/theme/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/o;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/a/db;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/a/db;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/a/db;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->f()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/a/db;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/a/db;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/a/db;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/util/am;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "themeInfo.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Lcom/estrongs/android/util/am;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "themeInfo.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ai;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {v3}, Lcom/estrongs/android/ui/theme/ai;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0338

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/android/ui/theme/ai;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    iput v1, v3, Lcom/estrongs/android/ui/theme/ai;->g:I

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/ai;->e()V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    const-string v0, "com.estrongs.android.pop.classic"

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.estrongs.android.pop.classic"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {v3}, Lcom/estrongs/android/ui/theme/ai;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/ui/theme/ai;->c:Ljava/lang/String;

    const-string v0, "com.estrongs.android.pop.classic"

    iput-object v0, v3, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v3, Lcom/estrongs/android/ui/theme/ai;->g:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/theme/ThemeActivity;->a(Lcom/estrongs/android/ui/theme/ai;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/ai;->e()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/al;->a(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "zh"

    :cond_2
    :goto_0
    const-string v1, "http://update.estrongs.com/theme?"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/util/am;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "themeInfo.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/y;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/theme/p;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/theme/p;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/y;->c()V

    return-void

    :cond_3
    const-string v0, "en"

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/e/jk;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Lcom/estrongs/android/ui/e/jk;

    return-object v0
.end method

.method private e()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/util/am;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "themeInfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ai;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v1, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {v1}, Lcom/estrongs/android/ui/theme/ai;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0338

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/ui/theme/ai;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/theme/ThemeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/a/db;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/db;->a(I)V

    return-void
.end method

.method private g()V
    .locals 4

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/widget/LinearLayout;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/widget/LinearLayout;

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/theme/q;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/theme/q;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/theme/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/r;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->f()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->e()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x10001024

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->b()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->d()V

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/theme/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/l;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/s;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ak;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Z

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/theme/al;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/a/db;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/db;->a(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/a/db;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/db;->notifyDataSetChanged()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
