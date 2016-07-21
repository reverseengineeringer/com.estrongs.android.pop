.class Lcom/flurry/android/ads/FlurryAdNative$1$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/d;

.field final synthetic b:Lcom/flurry/android/ads/FlurryAdNativeListener;

.field final synthetic c:Lcom/flurry/android/ads/FlurryAdNative$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/ads/FlurryAdNative$1;Lcom/flurry/sdk/d;Lcom/flurry/android/ads/FlurryAdNativeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iput-object p2, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iput-object p3, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative$2;->a:[I

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v1, v1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdReady"

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onFetched(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v0, v0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/ba;

    sget-object v1, Lcom/flurry/sdk/ba;->u:Lcom/flurry/sdk/ba;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdUnfilled"

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->FETCH:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/ba;

    invoke-virtual {v3}, Lcom/flurry/sdk/ba;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onShowFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onAppExit(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onClicked(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->CLICK:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/ba;

    invoke-virtual {v3}, Lcom/flurry/sdk/ba;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onImpressionLogged(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onExpanded(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onCollapsed(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
