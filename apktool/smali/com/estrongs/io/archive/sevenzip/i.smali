.class Lcom/estrongs/io/archive/sevenzip/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/sevenzip/h;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->l:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->l:[Z

    aput-boolean v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->a:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    aput-boolean v2, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-boolean v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/i;->a:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    aput-boolean v1, v0, v1

    goto :goto_0
.end method
