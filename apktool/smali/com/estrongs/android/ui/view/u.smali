.class Lcom/estrongs/android/ui/view/u;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/view/u;->b:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/u;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Lcom/estrongs/android/ui/view/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/u;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/u;->a:Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/u;->b:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/u;->b:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/u;->b:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
