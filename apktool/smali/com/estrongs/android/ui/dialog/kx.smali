.class Lcom/estrongs/android/ui/dialog/kx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kx;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kx;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kw;->a(Lcom/estrongs/android/ui/dialog/kw;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kx;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kw;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kx;->a:Lcom/estrongs/android/ui/dialog/kw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/kw;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kx;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/kw;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kx;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kw;->b(Lcom/estrongs/android/ui/dialog/kw;)Lcom/estrongs/android/e/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/e/h;->a(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method
