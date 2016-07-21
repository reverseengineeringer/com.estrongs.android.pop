.class public Lcom/estrongs/android/ui/theme/ThemeActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/at;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/estrongs/android/ui/adapter/dr;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/theme/x;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/estrongs/android/view/a/a;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/theme/al;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/theme/al;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "image_thumb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/adapter/dr;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/theme/at;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    return-object v0
.end method

.method private d()V
    .locals 2

    const v0, 0x7f0e0651

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->j()V

    new-instance v0, Lcom/estrongs/android/ui/theme/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/r;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dr;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/adapter/dr;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->i()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/view/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->k:Lcom/estrongs/android/view/a/a;

    return-object v0
.end method

.method private e()V
    .locals 9

    const v8, 0x7f0802eb

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "themeInfo.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Lcom/estrongs/android/util/ap;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "themeInfo.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/ui/theme/al;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move-object v4, v0

    move v0, v1

    :goto_0
    new-instance v5, Lcom/estrongs/android/ui/theme/al;

    invoke-direct {v5}, Lcom/estrongs/android/ui/theme/al;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08069f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    iput v2, v5, Lcom/estrongs/android/ui/theme/al;->h:I

    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    const-string v0, "com.estrongs.android.pop.theme.ics"

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v5, "com.estrongs.android.pop.theme.ics"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Lcom/estrongs/android/ui/theme/al;

    invoke-direct {v6}, Lcom/estrongs/android/ui/theme/al;-><init>()V

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    const-string v0, "com.estrongs.android.pop.theme.ics"

    iput-object v0, v6, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v6, Lcom/estrongs/android/ui/theme/al;->h:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "theme/ics/image_thumb"

    invoke-direct {p0, v6, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->a(Lcom/estrongs/android/ui/theme/al;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    const-string v0, "com.estrongs.android.pop.classic.material"

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_3
    const-string v3, "com.estrongs.android.pop.classic.material"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Lcom/estrongs/android/ui/theme/al;

    invoke-direct {v5}, Lcom/estrongs/android/ui/theme/al;-><init>()V

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    const-string v0, "com.estrongs.android.pop.classic.material"

    iput-object v0, v5, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v5, Lcom/estrongs/android/ui/theme/al;->h:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v0, "theme/classic/image_thumb"

    invoke-direct {p0, v5, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->a(Lcom/estrongs/android/ui/theme/al;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    :try_start_5
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    const-string v0, "theme_pro"

    invoke-static {v0, v2}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.estrongs.android.pop.pro"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0x7df

    if-ne v1, v3, :cond_4

    const/16 v1, 0xb

    if-ne v2, v1, :cond_4

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/theme/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/s;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {p0, v8}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/theme/t;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/t;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {p0, v8}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/theme/al;->e(Landroid/content/Context;)V

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/estrongs/android/ui/theme/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/u;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {p0, v8}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/theme/at;->a(Ljava/util/List;)V

    return-void

    :cond_6
    move v3, v2

    move-object v4, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/theme/ThemeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
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
    sget-object v1, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "zh"

    :cond_2
    :goto_0
    const-string v1, "http://update.estrongs.com/console/service/themes2/?"

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

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/view/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    sget-object v1, Lcom/estrongs/android/ui/theme/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "themeInfo.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/aa;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/theme/v;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/theme/v;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/aa;->c()V

    return-void

    :cond_3
    const-string v0, "en"

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->i()V

    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "themeInfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/theme/al;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v1, Lcom/estrongs/android/ui/theme/al;->b:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v2, Lcom/estrongs/android/ui/theme/al;

    invoke-direct {v2}, Lcom/estrongs/android/ui/theme/al;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08069f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/theme/al;->e(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->h()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dr;->a(I)V

    return-void
.end method

.method private j()V
    .locals 4

    const v0, 0x7f0e0185

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Landroid/widget/LinearLayout;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Landroid/widget/LinearLayout;

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/theme/w;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/theme/w;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/theme/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/o;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02040b

    const v2, 0x7f0800b2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/ui/theme/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/p;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->k:Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->k:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->k:Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02040f

    const v2, 0x7f080080

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/ui/theme/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/q;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/dr;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    iget-object v2, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    iget-object v2, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "using_theme_default"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "com.estrongs.android.pop.theme.ics"

    iget-object v3, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "using_theme_holo"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v2, "com.estrongs.android.pop.classic.material"

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "using_theme_classic"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1024

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->f()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->l:Landroid/content/Context;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->f:Ljava/lang/String;

    const v1, 0x7f03018f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setContentView(I)V

    const v1, 0x7f0803e1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->e()V

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->d()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->f()V

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/theme/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/theme/n;-><init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->j:Ljava/util/Map;

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

    check-cast v0, Lcom/estrongs/android/ui/theme/x;

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

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onResume()V

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Z

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->h:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->g:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/theme/at;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dr;->a(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeActivity;->c:Lcom/estrongs/android/ui/adapter/dr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dr;->notifyDataSetChanged()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
