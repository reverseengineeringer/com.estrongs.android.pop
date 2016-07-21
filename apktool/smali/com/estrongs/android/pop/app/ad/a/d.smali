.class Lcom/estrongs/android/pop/app/ad/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdNativeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ad/a/a;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/ad/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/ad/a/a;Lcom/estrongs/android/pop/app/ad/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ad/a/d;-><init>(Lcom/estrongs/android/pop/app/ad/a/a;)V

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onAppExit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/estrongs/android/pop/app/ad/a/a;)Lcom/estrongs/android/pop/app/ad/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/estrongs/android/pop/app/ad/a/a;)Lcom/estrongs/android/pop/app/ad/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ad/a/e;->a()V

    :cond_0
    return-void
.end method

.method public onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onCloseFullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCollapsed(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onCollapsed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3

    const-string v0, "..."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->b(Lcom/estrongs/android/pop/app/ad/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/ads/FlurryAdNative;->destroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->b(Lcom/estrongs/android/pop/app/ad/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->c(Lcom/estrongs/android/pop/app/ad/a/a;)Lcom/estrongs/android/pop/app/ad/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->c(Lcom/estrongs/android/pop/app/ad/a/a;)Lcom/estrongs/android/pop/app/ad/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ad/a/c;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/estrongs/android/pop/app/ad/a/a;Lcom/estrongs/android/pop/app/ad/a/c;)Lcom/estrongs/android/pop/app/ad/a/c;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->d(Lcom/estrongs/android/pop/app/ad/a/a;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->e(Lcom/estrongs/android/pop/app/ad/a/a;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ad/a/a;->f(Lcom/estrongs/android/pop/app/ad/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/estrongs/android/pop/app/ad/a/a;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onExpanded(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onExpanded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onFetched!!!!!onFetched!!!!!onFetched!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/estrongs/android/pop/app/ad/a/a;Lcom/flurry/android/ads/FlurryAdNative;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->g(Lcom/estrongs/android/pop/app/ad/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->c(Lcom/estrongs/android/pop/app/ad/a/a;)Lcom/estrongs/android/pop/app/ad/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->c(Lcom/estrongs/android/pop/app/ad/a/a;)Lcom/estrongs/android/pop/app/ad/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/ad/a/c;->a(Lcom/flurry/android/ads/FlurryAdNative;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ad/a/a;->a(Lcom/estrongs/android/pop/app/ad/a/a;Lcom/estrongs/android/pop/app/ad/a/c;)Lcom/estrongs/android/pop/app/ad/a/c;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->b(Lcom/estrongs/android/pop/app/ad/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/ads/FlurryAdNative;->destroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a/d;->a:Lcom/estrongs/android/pop/app/ad/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a/a;->b(Lcom/estrongs/android/pop/app/ad/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onImpressionLogged(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onImpressionLogged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShowFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 2

    const-string v0, "..."

    const-string v1, "onShowFullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
