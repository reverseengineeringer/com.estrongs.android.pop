.class Lcom/estrongs/android/ui/dialog/in;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/im;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/im;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/in;->a:Lcom/estrongs/android/ui/dialog/im;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/im;->a(Lcom/estrongs/android/ui/dialog/im;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Go_Rating"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
