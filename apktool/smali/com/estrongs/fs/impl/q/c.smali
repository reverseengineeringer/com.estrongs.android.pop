.class final Lcom/estrongs/fs/impl/q/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/au;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/q/c;->a:Lcom/estrongs/fs/b/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/q/c;->a:Lcom/estrongs/fs/b/au;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/au;->execute()V

    return-void
.end method
