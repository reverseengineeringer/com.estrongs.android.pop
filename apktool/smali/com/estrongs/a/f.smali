.class Lcom/estrongs/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/f;->a:Lcom/estrongs/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/a/f;->a:Lcom/estrongs/a/e;

    iget-object v0, v0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    iput v2, v0, Lcom/estrongs/a/a/d;->g:I

    iget-object v0, p0, Lcom/estrongs/a/f;->a:Lcom/estrongs/a/e;

    iget-object v0, v0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    iput-boolean v4, v0, Lcom/estrongs/a/a/d;->f:Z

    iget-object v0, p0, Lcom/estrongs/a/f;->a:Lcom/estrongs/a/e;

    iget-object v0, v0, Lcom/estrongs/a/e;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/a/f;->a:Lcom/estrongs/a/e;

    iget-object v3, v3, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void
.end method
