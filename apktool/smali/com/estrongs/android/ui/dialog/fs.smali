.class Lcom/estrongs/android/ui/dialog/fs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fs;->a:Lcom/estrongs/android/ui/dialog/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/d/u;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fs;->a:Lcom/estrongs/android/ui/dialog/fq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fk;->i(Lcom/estrongs/android/ui/dialog/fk;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
