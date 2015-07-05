.class Lcom/estrongs/android/e/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/e/h;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/estrongs/android/e/h;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/e/l;->a:Lcom/estrongs/android/e/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/e/l;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/e/h;Lcom/estrongs/android/e/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/e/l;-><init>(Lcom/estrongs/android/e/h;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/e/l;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/e/l;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/e/l;->b:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/e/l;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/e/l;->a:Lcom/estrongs/android/e/h;

    invoke-static {v0}, Lcom/estrongs/android/e/h;->a(Lcom/estrongs/android/e/h;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/estrongs/android/e/l;->b:I

    :cond_0
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, v2, v0, v1}, Lcom/estrongs/android/e/l;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/e/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/e/l;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/estrongs/android/e/l;->b:I

    goto :goto_0
.end method
