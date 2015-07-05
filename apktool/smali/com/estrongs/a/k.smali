.class final Lcom/estrongs/a/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/k;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/a/k;->a:Lcom/estrongs/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->execute(Z)V

    return-void
.end method
