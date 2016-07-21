.class Lcom/estrongs/android/ui/dialog/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/bc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bd;->b:Lcom/estrongs/android/ui/dialog/bc;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/bd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Lcom/estrongs/android/ui/dialog/fb;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bd;->b:Lcom/estrongs/android/ui/dialog/bc;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bc;->a:Lcom/estrongs/android/ui/dialog/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bb;->a(Lcom/estrongs/android/ui/dialog/bb;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bd;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/fb;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/fb;->a()V

    return-void
.end method
