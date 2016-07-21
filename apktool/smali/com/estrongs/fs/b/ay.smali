.class Lcom/estrongs/fs/b/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/ay;->a:Lcom/estrongs/fs/b/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ay;->a:Lcom/estrongs/fs/b/ax;

    iget-object v0, v0, Lcom/estrongs/fs/b/ax;->a:Lcom/estrongs/fs/b/aw;

    invoke-static {v0}, Lcom/estrongs/fs/b/aw;->c(Lcom/estrongs/fs/b/aw;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d()V

    return-void
.end method
