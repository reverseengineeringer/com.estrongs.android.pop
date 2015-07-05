.class final Lcom/estrongs/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/a;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/a/d;->a:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/a/e;

    invoke-direct {v1, p0, p2, p1}, Lcom/estrongs/a/e;-><init>(Lcom/estrongs/a/d;Lcom/estrongs/a/a/d;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
