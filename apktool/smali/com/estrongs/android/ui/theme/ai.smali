.class public Lcom/estrongs/android/ui/theme/ai;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/estrongs/android/widget/ProgressTextView;

.field private l:I

.field private m:I

.field private n:Landroid/graphics/drawable/BitmapDrawable;

.field private o:Ljava/lang/String;

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/theme/ai;->p:J

    iput-boolean v2, p0, Lcom/estrongs/android/ui/theme/ai;->h:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/theme/ai;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/theme/ai;->j:Z

    return-void
.end method

.method public static a(Lorg/json/simple/JSONObject;)Lcom/estrongs/android/ui/theme/ai;
    .locals 2

    new-instance v1, Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {v1}, Lcom/estrongs/android/ui/theme/ai;-><init>()V

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/ui/theme/ai;->c:Ljava/lang/String;

    const-string v0, "package"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/ui/theme/ai;->e:Ljava/lang/String;

    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/ui/theme/ai;->d:Ljava/lang/String;

    const-string v0, "pic"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/ui/theme/ai;->f:Ljava/lang/String;

    const-string v0, "vcode"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/ui/theme/ai;->g:I

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/ai;->e()V

    return-object v1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ai;)Lcom/estrongs/android/widget/ProgressTextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->k:Lcom/estrongs/android/widget/ProgressTextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/theme/ai;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    new-array v4, v3, [B

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v7, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v7, v4, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v3, v4, v7, v8}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sput-object v5, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    :goto_3
    move-object v5, v2

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/InflaterInputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/json/simple/JSONObject;

    move-object v2, v0

    const-string v4, "hash_code"

    invoke-virtual {v2, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    check-cast v3, Lorg/json/simple/JSONObject;

    const-string v2, "content"

    invoke-virtual {v3, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/simple/JSONArray;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/json/simple/JSONArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    :try_start_2
    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->size()I

    move-result v3

    if-ge v6, v3, :cond_3

    invoke-virtual {v2, v6}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/simple/JSONObject;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/ai;->a(Lorg/json/simple/JSONObject;)Lcom/estrongs/android/ui/theme/ai;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/simple/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    sput-object v5, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_6
    invoke-virtual {v3}, Lorg/json/simple/parser/ParseException;->printStackTrace()V

    sput-object v5, Lcom/estrongs/android/ui/theme/ai;->a:Ljava/lang/String;

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_2

    :cond_3
    move-object v2, v4

    goto :goto_3

    :cond_4
    move-object v2, v5

    goto :goto_3
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ai;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/theme/ai;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ai;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ai;->j:Z

    return p1
.end method

.method private b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ai;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ai;->h:Z

    return p1
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/theme/ai;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f02019e

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f02016c

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f020233

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f02006e

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f0200a3

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f0201a8

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f020272

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f0201a1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "background_h.dat"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "background_v.dat"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/theme/ai;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "thumbnails"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/theme/ai;->a(Landroid/os/Handler;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public a(I)V
    .locals 3

    iput p1, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ai;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->d()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/ai;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->d()V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/theme/ai;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ai;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ai;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "image_thumb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/theme/aj;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/theme/aj;-><init>(Lcom/estrongs/android/ui/theme/ai;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/y;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ai;->h:Z

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/ProgressTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ai;->k:Lcom/estrongs/android/widget/ProgressTextView;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/theme/ai;->m:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->d()V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/android/ui/theme/ai;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/theme/ai;->d(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/android/ui/theme/ai;->j:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://search?q=pname:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    instance-of v1, p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_3
    new-instance v1, Lcom/estrongs/android/util/y;

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ai;->e:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/ui/theme/ak;

    invoke-direct {v2, p0, p2, p1}, Lcom/estrongs/android/ui/theme/ak;-><init>(Lcom/estrongs/android/ui/theme/ai;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/y;->c()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/ui/theme/ai;->j:Z

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ai;->j:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/theme/ai;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    const-string v2, "package"

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized d()V
    .locals 5

    const/high16 v4, -0x80000000

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "configuration.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Lorg/json/simple/JSONObject;

    invoke-direct {v1}, Lorg/json/simple/JSONObject;-><init>()V

    iget v2, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    if-eq v2, v4, :cond_0

    const-string v2, "background_color"

    iget v3, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v2, p0, Lcom/estrongs/android/ui/theme/ai;->m:I

    if-eq v2, v4, :cond_1

    const-string v2, "text_color"

    iget v3, p0, Lcom/estrongs/android/ui/theme/ai;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ai;->o:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "folder_style_name"

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ai;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/json/simple/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v1}, Lorg/json/simple/JSONObject;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 4

    const/high16 v3, -0x80000000

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->o:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/estrongs/android/ui/theme/ai;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "configuration.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v1, "background_color"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "background_color"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    iput v1, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    :cond_2
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    iput v1, p0, Lcom/estrongs/android/ui/theme/ai;->m:I

    :cond_3
    const-string v1, "folder_style_name"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "folder_style_name"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ai;->o:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->clear()V

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/simple/parser/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized f()Z
    .locals 5

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "configuration.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v1, v0

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ai;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ai;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/estrongs/android/ui/theme/ai;->p:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/ui/theme/ai;->p:J

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-nez v0, :cond_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ai;->m:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ai;->l:I

    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ai;->n:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    return-void
.end method
