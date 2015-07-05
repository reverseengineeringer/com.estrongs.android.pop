.class Lcom/estrongs/fs/impl/o/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/fs/impl/o/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/o/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/o/b;->b:Lcom/estrongs/fs/impl/o/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/o/b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/o/b;->b:Lcom/estrongs/fs/impl/o/a;

    iget-object v1, p0, Lcom/estrongs/fs/impl/o/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/o/a;->b(Ljava/util/List;)V

    return-void
.end method
