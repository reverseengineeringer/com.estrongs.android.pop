.class Lcom/estrongs/android/ui/dialog/io;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/im;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/im;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/io;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/p;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Go_feedback"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
