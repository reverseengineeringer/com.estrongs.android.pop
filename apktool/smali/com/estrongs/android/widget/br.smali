.class Lcom/estrongs/android/widget/br;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/widget/SlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/br;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/widget/SlidingDrawer;Lcom/estrongs/android/widget/bm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/br;-><init>(Lcom/estrongs/android/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/widget/br;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-static {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->c(Lcom/estrongs/android/widget/SlidingDrawer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
