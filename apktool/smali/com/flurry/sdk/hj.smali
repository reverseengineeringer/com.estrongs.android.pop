.class public Lcom/flurry/sdk/hj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/he;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/flurry/sdk/cj;

.field private d:Lcom/flurry/sdk/hj$a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/hj;->b:Ljava/lang/ref/WeakReference;

    const-class v0, Lcom/flurry/sdk/hj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    const-string v2, "setting mContext"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/hj;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/hj$a;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/flurry/sdk/hj$a;->a:Lcom/flurry/sdk/hj$a;

    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting FlurryWebViewState from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/hj;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    const-string v2, "clearing webviews"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/hj;->b:Ljava/lang/ref/WeakReference;

    iput-object v3, p0, Lcom/flurry/sdk/hj;->a:Lcom/flurry/sdk/he;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/cj;)V
    .locals 0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hj;->a(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/flurry/sdk/hj;->c:Lcom/flurry/sdk/cj;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/hj;->a:Lcom/flurry/sdk/he;

    const-string v1, "javascript:var closeButtonDiv =  document.getElementById(\'flurry_interstitial_close\');if (typeof(closeButtonDiv) == \'undefined\' || closeButtonDiv == null){var newdiv = document.createElement(\'div\');var divIdName = \'flurry_interstitial_close\';newdiv.setAttribute(\'id\',divIdName);newdiv.innerHTML = \'<a href=\"flurry://flurrycall?event=adWillClose\"><div id=\"rtb_close\"><img src=\"http://cdn.flurry.com/adSpaceStyles.dev/images/bttn-close-bw.png\" alt=\"close advertisement\" /></div></a></div>\';document.body.appendChild(newdiv);}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/flurry/sdk/he;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/hj;->a:Lcom/flurry/sdk/he;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/hj$a;->a:Lcom/flurry/sdk/hj$a;

    iget-object v2, p0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hj$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hj;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/flurry/sdk/he;

    iget-object v0, p0, Lcom/flurry/sdk/hj;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/hj;->c:Lcom/flurry/sdk/cj;

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/he;-><init>(Landroid/content/Context;Lcom/flurry/sdk/cj;)V

    iput-object v1, p0, Lcom/flurry/sdk/hj;->a:Lcom/flurry/sdk/he;

    sget-object v0, Lcom/flurry/sdk/hj$a;->b:Lcom/flurry/sdk/hj$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hj;->a(Lcom/flurry/sdk/hj$a;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/hj;->a:Lcom/flurry/sdk/he;

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    const-string v2, "mContext is null"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/hj;->a:Lcom/flurry/sdk/he;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/flurry/sdk/hj$a;->a:Lcom/flurry/sdk/hj$a;

    iget-object v2, p0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hj$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    const-string v1, "fWebView is not null"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/hj;->e:Ljava/lang/String;

    const-string v2, "fWebView is null"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
