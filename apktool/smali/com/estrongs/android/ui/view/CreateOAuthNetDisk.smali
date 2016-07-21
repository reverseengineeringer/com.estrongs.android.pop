.class public Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# static fields
.field public static a:I

.field public static b:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field private static k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;


# instance fields
.field i:Z

.field j:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Landroid/webkit/WebView;

.field private p:Lcom/estrongs/android/ui/view/v;

.field private q:Lcom/estrongs/android/ui/view/u;

.field private r:Landroid/widget/ProgressBar;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Ljava/lang/String;

.field private v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->e:I

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->f:I

    const/4 v0, 0x6

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->g:I

    const/4 v0, 0x7

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->m:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/ui/view/v;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/v;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Lcom/estrongs/android/ui/view/r;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->p:Lcom/estrongs/android/ui/view/v;

    new-instance v0, Lcom/estrongs/android/ui/view/u;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/u;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Lcom/estrongs/android/ui/view/r;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->q:Lcom/estrongs/android/ui/view/u;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->s:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->t:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    new-instance v0, Lcom/estrongs/android/ui/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/s;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v5, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    array-length v2, v0

    if-ne v2, v5, :cond_2

    aget-object v0, v0, v6

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, v3, v6

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-le v1, p1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/estrongs/fs/impl/o/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    const-string v4, "fake"

    const-string v5, "/"

    invoke-static {v3, v2, v4, v5}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->m:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v5, v6, v0}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->u:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "www.dropbox.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "www.estrongs.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Lcom/estrongs/android/ui/view/u;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->q:Lcom/estrongs/android/ui/view/u;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->u:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auth_token"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->requestWindowFeature(I)Z

    const v0, 0x7f030138

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "nettype"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    const-string v3, "editServer"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->m:Z

    const-string v3, "originalPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Ljava/lang/String;

    const v0, 0x7f0e0540

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->p:Lcom/estrongs/android/ui/view/v;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->q:Lcom/estrongs/android/ui/view/u;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v0, "gdrive"

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/util/bk;->p()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->O:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/4 v4, 0x7

    if-lt v0, v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/webkit/WebView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_3
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v0, "utf-8"

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f0e0542

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->s:Landroid/widget/TextView;

    const v0, 0x7f0e0541

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/widget/ProgressBar;

    const v0, 0x7f0e053f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->t:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/view/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/r;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/r;->start()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sput-object p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onDestroy()V

    return-void
.end method
