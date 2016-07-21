.class Lcom/estrongs/android/ui/dialog/lf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/le;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/le;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/lf;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/lf;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/le;->a(Lcom/estrongs/android/ui/dialog/le;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/lf;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/le;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/lf;->a:Lcom/estrongs/android/ui/dialog/le;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/le;->mContext:Landroid/content/Context;

    const v1, 0x7f080733

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/lf;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/le;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/lf;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/le;->b(Lcom/estrongs/android/ui/dialog/le;)Lcom/estrongs/android/l/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/l/k;->a(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method
