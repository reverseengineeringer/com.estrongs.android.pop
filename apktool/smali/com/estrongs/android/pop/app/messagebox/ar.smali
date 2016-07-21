.class Lcom/estrongs/android/pop/app/messagebox/ar;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Lcom/estrongs/android/pop/app/messagebox/ap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/messagebox/ar;-><init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const/16 v0, 0xa

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x64

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->e(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->f(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->g(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->b(Lcom/estrongs/android/pop/app/messagebox/WebActivity;Z)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ar;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->d(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
