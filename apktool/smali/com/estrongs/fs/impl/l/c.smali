.class final Lcom/estrongs/fs/impl/l/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/as;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/l/c;->a:Lcom/estrongs/fs/b/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/l/c;->a:Lcom/estrongs/fs/b/as;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/as;->execute()V

    return-void
.end method
