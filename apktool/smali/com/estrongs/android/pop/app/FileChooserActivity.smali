.class public Lcom/estrongs/android/pop/app/FileChooserActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Lcom/estrongs/android/widget/g;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Lcom/estrongs/android/pop/ad;

.field private final f:Lcom/estrongs/android/view/cc;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->c:Z

    new-instance v0, Lcom/estrongs/android/pop/app/cg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cg;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->f:Lcom/estrongs/android/view/cc;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/FileChooserActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/FileChooserActivity;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->b(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.estrongs.action.PICK_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p2}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x20026

    if-eq v0, v5, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x3002a

    if-eq v5, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v4}, Lcom/estrongs/android/util/aj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    const v0, 0x7f0b03ef

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_3
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v1, v2

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/FileChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->b:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/estrongs/fs/h;)V
    .locals 8

    const v6, 0x10001019

    const/4 v2, 0x0

    const/4 v7, -0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->c:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b04a0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/estrongs/android/util/ay;->b(Landroid/content/Context;Lcom/estrongs/fs/h;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->e:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->K(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b021d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b021e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/a/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/ch;

    invoke-direct {v1, p0, v3, p1, v4}, Lcom/estrongs/android/pop/app/ch;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Ljava/lang/String;Lcom/estrongs/fs/h;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v4, v3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v7, v4}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/estrongs/android/util/bc;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->b:Z

    if-eqz v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "setWallpaper"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v6}, Lcom/estrongs/android/pop/app/FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v1, "crop"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "circle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Lcom/estrongs/android/pop/app/FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    const-string v0, "return-data"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/estrongs/android/d/h;->a(Landroid/content/Context;)Lcom/estrongs/android/d/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "outputX"

    const/16 v6, 0x40

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "data"

    invoke-virtual {v0, v1, v3, v2}, Lcom/estrongs/android/d/h;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, v7, v4}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/estrongs/android/util/i;->a()Lcom/estrongs/android/util/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/util/i;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    :cond_c
    invoke-static {v3}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v7, v4}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_e
    sget-boolean v1, Lcom/estrongs/android/pop/z;->as:Z

    if-eqz v1, :cond_f

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v7, v4}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_f
    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0273

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v5, 0x7f07000b

    new-instance v6, Lcom/estrongs/android/pop/app/by;

    invoke-direct {v6, p0, v4, v3, v0}, Lcom/estrongs/android/pop/app/by;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v5, v7, v6}, Lcom/estrongs/android/ui/dialog/ct;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ".cdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".DCF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".CDF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->l()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->d:Ljava/lang/Runnable;

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0x10001019

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0b002a

    const/4 v4, 0x0

    const/4 v8, 0x0

    const v7, 0x7f0b000c

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/FileChooserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b02fd

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->e:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->e:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->e:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->av()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->b:Z

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->b:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->c:Z

    if-eqz v1, :cond_b

    :cond_4
    const-string v1, "65536"

    invoke-static {v1}, Lcom/estrongs/android/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/android/d/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/d;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/android/d/j;)V

    :cond_5
    new-instance v3, Lcom/estrongs/android/pop/app/bx;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/bx;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Z)V

    instance-of v5, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->S:Z

    if-eqz v0, :cond_6

    move v5, v6

    :cond_6
    new-instance v0, Lcom/estrongs/android/widget/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->f:Lcom/estrongs/android/view/cc;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/view/cc;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.estrongs.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const v0, 0x7f0b0209

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    new-instance v1, Lcom/estrongs/android/pop/app/cd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cd;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file:///"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.estrongs.intent.extra.BUTTON_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    new-instance v2, Lcom/estrongs/android/pop/app/bz;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bz;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_b
    new-instance v3, Lcom/estrongs/android/pop/app/ca;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/ca;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Z)V

    new-instance v0, Lcom/estrongs/android/widget/g;

    move-object v1, p0

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.estrongs.intent.extra.BUTTON_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_d
    iget-object v1, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    new-instance v2, Lcom/estrongs/android/pop/app/cb;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cb;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->l()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->b()V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/ce;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ce;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->d:Ljava/lang/Runnable;

    sget-object v0, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;->START:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;

    invoke-static {p0, v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cf;-><init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->j()V

    goto :goto_0
.end method
