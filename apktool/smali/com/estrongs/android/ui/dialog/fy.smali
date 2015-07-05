.class Lcom/estrongs/android/ui/dialog/fy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fy;->a:Lcom/estrongs/android/ui/dialog/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fy;->a:Lcom/estrongs/android/ui/dialog/fw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fw;->b:Lcom/estrongs/android/ui/dialog/fs;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fs;->a:Lcom/estrongs/android/ui/dialog/fz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fy;->a:Lcom/estrongs/android/ui/dialog/fw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fw;->b:Lcom/estrongs/android/ui/dialog/fs;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fs;->a:Lcom/estrongs/android/ui/dialog/fz;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fy;->a:Lcom/estrongs/android/ui/dialog/fw;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/fw;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/dialog/fz;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fy;->a:Lcom/estrongs/android/ui/dialog/fw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fw;->b:Lcom/estrongs/android/ui/dialog/fs;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fs;->j(Lcom/estrongs/android/ui/dialog/fs;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
