.class public Lcom/estrongs/android/util/ax;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static final c:[Lcom/estrongs/android/util/bb;

.field private static final d:[Lcom/estrongs/android/util/bb;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/ax;->b:Ljava/lang/String;

    new-array v0, v6, [Lcom/estrongs/android/util/bb;

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "fex_version"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "apkMtime"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/estrongs/android/util/ax;->c:[Lcom/estrongs/android/util/bb;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/estrongs/android/util/bb;

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "recomm_last_check_time"

    invoke-direct {v1, v2, v5}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "apkMtime"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "PCS_remind_upgrade_time"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "last_statistics"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/estrongs/android/util/bb;

    const-string v2, "last_pcs_access"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "upgrade_last_check_time"

    invoke-direct {v2, v3, v5}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "last_request_push_data_time"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "last_pcs_verify"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "pcs_uinfo_timestamp"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "card_update_time"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "recomm_last_click_dusb_time"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "last_remote_setting_update_time"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_1"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_2"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_3"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_4"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_5"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_6"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_7"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_8"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "home_log_corner_mark_9"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/estrongs/android/util/bb;

    const-string v3, "log_clear_time"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/util/bb;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/ax;->d:[Lcom/estrongs/android/util/bb;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const-string v1, "preference"

    aput-object v1, v0, v5

    const-string v1, "serverlistdb"

    aput-object v1, v0, v6

    const-string v1, "serverlistdb3"

    aput-object v1, v0, v7

    const-string v1, "serverlistdb4"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "serverlistdb5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "serverlistdb6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "serverlistdb7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "serverlistdb8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Boxnet.cfg"

    aput-object v1, v0, v4

    const-string v1, "Skydrv.cfg"

    aput-object v1, v0, v5

    const-string v1, "Gdrive.cfg"

    aput-object v1, v0, v6

    const-string v1, "Kuaipan.cfg"

    aput-object v1, v0, v7

    const-string v1, "Ubuntu.cfg"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "S3.cfg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dropbox.cfg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SugarSync.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Pcs.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Flickr.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Instagram.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Facebook.cfg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ESSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v2, p1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0803e3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v5

    const v6, 0x7f0802f4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "ESSettings.zip"

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v5

    const v6, 0x7f080226

    new-instance v7, Lcom/estrongs/android/util/az;

    invoke-direct {v7, p0, v3, v4, p1}, Lcom/estrongs/android/util/az;-><init>(Lcom/estrongs/android/util/ax;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v3

    const v4, 0x7f080221

    new-instance v5, Lcom/estrongs/android/util/ay;

    invoke-direct {v5, p0}, Lcom/estrongs/android/util/ay;-><init>(Lcom/estrongs/android/util/ax;)V

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    :goto_1
    return v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "compress_level"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/estrongs/io/a/a/b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/estrongs/io/a/a/b;-><init>(Lcom/estrongs/io/archive/e;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/estrongs/io/a/a/b;->c(Z)V

    new-instance v5, Lcom/estrongs/io/archive/j;

    invoke-direct {v5, v3, v4, v0}, Lcom/estrongs/io/archive/j;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v0}, Lcom/estrongs/io/archive/j;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/util/ax;->b()V

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ad;->J(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/util/ax;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/util/ax;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/estrongs/android/util/ax;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/ax;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(ILjava/lang/String;[Lcom/estrongs/android/util/bb;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget-object v2, p3, v0

    iget v2, v2, Lcom/estrongs/android/util/bb;->b:I

    if-ne p1, v2, :cond_1

    aget-object v2, p3, v0

    iget-object v2, v2, Lcom/estrongs/android/util/bb;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/high16 v5, 0x80000

    const/4 v1, 0x0

    new-array v3, v5, [B

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, p2, v2}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    :goto_1
    sub-int v1, v5, v2

    invoke-virtual {v4, v3, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    sget-object v1, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v1, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/util/ax;->b()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "charset_name"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "reload"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/i;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/ba;

    const/4 v3, 0x0

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/estrongs/android/util/ba;-><init>(Lcom/estrongs/android/util/ax;Lcom/estrongs/io/archive/e;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/estrongs/io/a/a/a;->c(Z)V

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/i;->a(Lcom/estrongs/io/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->g()V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->g()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->g()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/util/i;

    invoke-direct {v0, p3}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;)V

    :goto_2
    move v5, v2

    :goto_3
    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v5, v3, :cond_6

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-nez v3, :cond_5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "default"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v4

    move-object v4, v8

    :goto_4
    new-instance v6, Lorg/json/simple/JSONObject;

    invoke-direct {v6}, Lorg/json/simple/JSONObject;-><init>()V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v3}, Lorg/json/simple/JSONObject;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v4}, Lcom/estrongs/fs/impl/local/i;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/util/ax;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Lcom/estrongs/android/util/i;

    const-string v3, "!@#$dd"

    invoke-direct {v0, v3}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v3, v3, v5

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v4

    move-object v4, v8

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_5
    sget-object v2, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v3, v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/estrongs/android/util/ax;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    if-nez v2, :cond_7

    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_7
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/i;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_6

    :cond_9
    if-nez p2, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/util/ax;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15

    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/estrongs/android/util/ax;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x2

    :goto_0
    return v2

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/estrongs/android/util/i;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    :goto_1
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    sget-object v2, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v6, v2, :cond_d

    sget-object v2, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v2, v2, v6

    if-nez v2, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/util/ax;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_1
    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/estrongs/android/util/i;

    const-string v3, "!@#$dd"

    invoke-direct {v2, v3}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v2, v2, v6

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Lcom/estrongs/android/util/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance v3, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v3}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/util/ax;->c:[Lcom/estrongs/android/util/bb;

    invoke-direct {p0, v6, v3, v4}, Lcom/estrongs/android/util/ax;->a(ILjava/lang/String;[Lcom/estrongs/android/util/bb;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    instance-of v9, v4, Ljava/lang/Integer;

    if-eqz v9, :cond_8

    sget-object v9, Lcom/estrongs/android/util/ax;->d:[Lcom/estrongs/android/util/bb;

    invoke-direct {p0, v6, v3, v9}, Lcom/estrongs/android/util/ax;->a(ILjava/lang/String;[Lcom/estrongs/android/util/bb;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/Long;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v7, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_5

    :cond_7
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_8
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_9
    instance-of v9, v4, Ljava/lang/Long;

    if-eqz v9, :cond_b

    sget-object v9, Lcom/estrongs/android/util/ax;->d:[Lcom/estrongs/android/util/bb;

    invoke-direct {p0, v6, v3, v9}, Lcom/estrongs/android/util/ax;->a(ILjava/lang/String;[Lcom/estrongs/android/util/bb;)Z

    move-result v9

    if-eqz v9, :cond_a

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v7, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_a
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-interface {v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_b
    instance-of v9, v4, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_c
    :try_start_2
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v2, v2, Ljavax/crypto/BadPaddingException;

    if-eqz v2, :cond_17

    const/4 v2, -0x3

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    move v7, v2

    :goto_6
    :try_start_3
    sget-object v2, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v7, v2, :cond_16

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/util/ax;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    :cond_e
    :goto_7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5, v3}, Lcom/estrongs/android/util/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/estrongs/android/util/ax;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/util/ax;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18

    const/4 v4, 0x0

    const-string v2, "\r\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v2, "\r\n"

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v2, v9

    new-array v11, v2, [Z

    const/4 v2, 0x0

    move v6, v2

    :goto_8
    array-length v2, v9

    if-ge v6, v2, :cond_13

    const/4 v2, 0x1

    aput-boolean v2, v11, v6

    const/4 v2, 0x0

    :goto_9
    array-length v12, v10

    if-ge v2, v12, :cond_11

    aget-object v12, v10, v2

    aget-object v13, v9, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v2, 0x0

    aput-boolean v2, v11, v6

    :cond_11
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_a
    array-length v10, v9

    if-ge v4, v10, :cond_15

    aget-boolean v10, v11, v4

    if-eqz v10, :cond_14

    aget-object v2, v9, v4

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_18

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    move-object v14, v3

    move v3, v2

    move-object v2, v14

    :goto_b
    if-eqz v3, :cond_e

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/util/ax;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/estrongs/android/util/ax;->f:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/estrongs/fs/impl/local/i;->b(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v2

    goto/16 :goto_7

    :cond_16
    :try_start_5
    invoke-direct {p0}, Lcom/estrongs/android/util/ax;->b()V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_c
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v2, -0x1

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_c

    :cond_18
    move-object v14, v3

    move v3, v2

    move-object v2, v14

    goto :goto_b
.end method
