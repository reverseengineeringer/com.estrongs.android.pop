.class public abstract Lcom/duapps/ad/stats/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static c:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected volatile b:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/n;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/stats/n;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->e:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/n;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/n;->e:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic b(Lcom/duapps/ad/stats/n;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "http://market."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://market."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://play."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://play."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "market:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static declared-synchronized f()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    const-class v1, Lcom/duapps/ad/stats/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/stats/n;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duapps/ad/stats/n;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.protocol.max-redirects"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "compatibility"

    invoke-static {v2, v3}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    sget-object v3, Lcom/duapps/ad/base/m;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    sput-object v0, Lcom/duapps/ad/stats/n;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/duapps/ad/stats/o;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/stats/o;-><init>(Lcom/duapps/ad/stats/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/stats/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/duapps/ad/stats/p;)V
    .locals 3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Goto installed App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->b(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/ap;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Lcom/duapps/ad/stats/p;)V
    .locals 2

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseClickHandler"

    const-string v1, "No network."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->c(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    invoke-virtual {p0}, Lcom/duapps/ad/stats/n;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "BaseClickHandler"

    const-string v1, "Please check you network and try again."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected f(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseClickHandler"

    const-string v1, "An apk link."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/n;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    return-void
.end method

.method protected g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 6

    const/high16 v3, 0x10000

    iget-boolean v0, p0, Lcom/duapps/ad/stats/n;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseClickHandler"

    const-string v1, "Has already report"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/n;->b:Z

    if-nez p2, :cond_2

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BaseClickHandler"

    const-string v1, "startBrowser: url is null"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->c(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    const-string v0, "BaseClickHandler"

    const-string v1, "Please check you network and try again."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BaseClickHandler"

    const-string v1, "Goto browser failed."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget v0, Lcom/dianxinos/a/a/f;->duapps_ad_no_browser_play:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/stats/n;->b(I)V

    const-string v0, "BaseClickHandler"

    const-string v1, "No browser or Google Play installed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->c(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BaseClickHandler"

    const-string v1, "Goto browser"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->d(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/duapps/ad/stats/n;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseClickHandler"

    const-string v1, "Has already reported"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/n;->b:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BaseClickHandler"

    const-string v2, "Goto Play"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->e(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BaseClickHandler"

    const-string v2, "Goto Play failed:"

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/n;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method i(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/duapps/ad/stats/n;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->g()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/n;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->g()Lcom/duapps/ad/entity/AdData;

    move-result-object v3

    iget-object v3, v3, Lcom/duapps/ad/entity/AdData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start google play via mock url -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/stats/n;->d:Landroid/content/Context;

    const-string v2, "com.android.vending"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/n;->h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/n;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0
.end method
