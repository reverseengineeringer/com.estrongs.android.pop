.class Lcom/estrongs/android/ui/dialog/it;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/is;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/is;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/is;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/it;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/is;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/is;->a(Lcom/estrongs/android/ui/dialog/is;)Lcom/estrongs/android/ui/dialog/iv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/iv;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/it;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/is;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/is;->a(Lcom/estrongs/android/ui/dialog/is;)Lcom/estrongs/android/ui/dialog/iv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/iv;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->I(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->b([Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/it;->b:Lcom/estrongs/android/ui/dialog/is;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/is;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
