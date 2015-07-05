.class Lcom/estrongs/android/pop/utils/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/br;->a:Lcom/estrongs/android/pop/utils/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/br;->a:Lcom/estrongs/android/pop/utils/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/br;->a:Lcom/estrongs/android/pop/utils/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/br;->a:Lcom/estrongs/android/pop/utils/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->requestStop()V

    :cond_0
    return-void
.end method
