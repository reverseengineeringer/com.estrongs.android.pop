.class public Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Lcom/estrongs/android/pop/app/messagebox/b;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/estrongs/android/pop/app/messagebox/w;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/messagebox/ah;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/messagebox/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

.field private f:Landroid/app/ProgressDialog;

.field private g:Lcom/estrongs/android/pop/app/messagebox/s;

.field private h:Landroid/os/Handler;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02028d
        0x7f020289
        0x7f020288
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->i:Z

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, p1

    int-to-float v6, p1

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "hpmessage_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/ah;

    iget v1, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    if-ne v1, v10, :cond_5

    move v1, v2

    :goto_1
    shl-int/lit8 v4, v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    add-int/2addr v1, v4

    iget v1, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    if-eq v1, v10, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/android/pop/app/messagebox/v;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/messagebox/v;

    iget-object v4, v1, Lcom/estrongs/android/pop/app/messagebox/v;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/estrongs/android/pop/app/messagebox/v;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iput v10, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/messagebox/w;->a(Lcom/estrongs/android/pop/app/messagebox/ah;)I

    :cond_3
    :try_start_0
    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/ag;->a(Landroid/content/Context;Lcom/estrongs/android/pop/app/messagebox/ah;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "intent is null when generate Intent"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    if-ne v4, v10, :cond_a

    const v2, 0x7f0803fc

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "msgID"

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v2, "mbx_bnc"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    :try_start_2
    iget v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    const/16 v4, 0xa

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_a
    iget v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    if-ne v4, v2, :cond_4

    const v2, 0x7f0803fb

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/ah;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/messagebox/w;->b(Lcom/estrongs/android/pop/app/messagebox/ah;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g:Lcom/estrongs/android/pop/app/messagebox/s;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/s;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7f0e04dc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->i:Z

    return p1
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a:[I

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Lcom/estrongs/android/pop/app/messagebox/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    return-object v0
.end method

.method private static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v1, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [I

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [I

    move v0, v1

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget v0, v4, v1

    aget v2, v3, v1

    sub-int/2addr v0, v2

    if-ltz v0, :cond_2

    aget v0, v4, v7

    aget v2, v3, v7

    sub-int/2addr v0, v2

    if-ltz v0, :cond_2

    aget v0, v4, v6

    aget v2, v3, v6

    sub-int/2addr v0, v2

    if-gez v0, :cond_3

    :cond_2
    const v0, 0x7f080244

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    aget v0, v4, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    aget v0, v4, v7

    aget v1, v3, v7

    sub-int/2addr v0, v1

    if-nez v0, :cond_7

    aget v0, v4, v6

    aget v1, v3, v6

    sub-int/2addr v0, v1

    if-nez v0, :cond_5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "KK:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080245

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    aget v0, v4, v6

    aget v1, v3, v6

    sub-int/2addr v0, v1

    if-ne v0, v7, :cond_6

    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/w;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/w;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 2

    const v0, 0x7f0e04d8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/p;-><init>(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/s;-><init>(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g:Lcom/estrongs/android/pop/app/messagebox/s;

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/a;-><init>(Lcom/estrongs/android/pop/app/messagebox/b;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->h:Landroid/os/Handler;

    const v0, 0x7f0e04db

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g:Lcom/estrongs/android/pop/app/messagebox/s;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/q;-><init>(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/e;->a()Lcom/estrongs/android/pop/app/messagebox/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/r;-><init>(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/z;->a(I)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f:Landroid/app/ProgressDialog;

    const v1, 0x7f0805b6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->h()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g:Lcom/estrongs/android/pop/app/messagebox/s;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/s;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0e04dc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e04de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0803fa

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g:Lcom/estrongs/android/pop/app/messagebox/s;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/s;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03011e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->h()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/ai;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e()V

    return-void
.end method
