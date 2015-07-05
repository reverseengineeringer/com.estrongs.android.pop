.class Lcom/estrongs/android/ui/dialog/t;
.super Lcom/estrongs/android/view/ea;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/o;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/Button;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/o;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 11

    const/4 v10, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/t;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->b:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->d:Landroid/os/Handler;

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a002a

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a002b

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0030

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v6}, Lcom/estrongs/fs/impl/b/c;->e()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0a0033

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0a0034

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/estrongs/android/ui/dialog/t;->ad:Landroid/app/Activity;

    const v9, 0x7f0b0119

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/pop/ad;->E()Ljava/text/DateFormat;

    move-result-object v6

    iget-object v7, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v7}, Lcom/estrongs/fs/impl/b/c;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f0a0035

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0036

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v7}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/fs/impl/b/g;->g()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "NULL"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v8, "<br>"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0535

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/dialog/t;->l(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b049d

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/dialog/t;->l(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v6}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/fs/impl/b/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-static {v2}, Lcom/estrongs/android/d/f;->e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/t;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->c:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->c:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/dialog/u;

    invoke-direct {v2, p0, p1, v1}, Lcom/estrongs/android/ui/dialog/u;-><init>(Lcom/estrongs/android/ui/dialog/t;Lcom/estrongs/android/ui/dialog/o;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/t;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/t;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->b(Z)Z

    move-result v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v0, v4, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/l;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    and-int/2addr v3, v0

    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v4, "com.estrongs.android.permmgrservice"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_3
    if-eqz v1, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/dialog/gk;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/t;->ad:Landroid/app/Activity;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/estrongs/android/ui/dialog/gk;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gk;->a()V

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v1, v2

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/t;->b()V

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/estrongs/android/ui/dialog/gk;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/t;->ad:Landroid/app/Activity;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/estrongs/android/ui/dialog/gk;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gk;->a()V

    goto :goto_4
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/t;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/t;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/t;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b04b3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b001f

    new-instance v2, Lcom/estrongs/android/ui/dialog/v;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/v;-><init>(Lcom/estrongs/android/ui/dialog/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method private c()V
    .locals 5

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "http://update.estrongs.com/up/?id=100&v=0"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "urls"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/t;->d:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/ui/dialog/x;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/x;-><init>(Lcom/estrongs/android/ui/dialog/t;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030004

    return v0
.end method
