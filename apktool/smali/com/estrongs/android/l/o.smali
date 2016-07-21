.class Lcom/estrongs/android/l/o;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/l/k;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/estrongs/android/l/k;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/l/o;->a:Lcom/estrongs/android/l/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/l/o;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/l/k;Lcom/estrongs/android/l/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/l/o;-><init>(Lcom/estrongs/android/l/k;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/l/o;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/l/o;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/l/o;->b:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/l/o;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/l/o;->a:Lcom/estrongs/android/l/k;

    invoke-static {v0}, Lcom/estrongs/android/l/k;->a(Lcom/estrongs/android/l/k;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/estrongs/android/l/o;->b:I

    :cond_0
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, v2, v0, v1}, Lcom/estrongs/android/l/o;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/l/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/l/o;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/estrongs/android/l/o;->b:I

    goto :goto_0
.end method
