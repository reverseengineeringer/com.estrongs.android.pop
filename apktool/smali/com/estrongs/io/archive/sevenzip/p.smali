.class Lcom/estrongs/io/archive/sevenzip/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/sevenzip/o;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/p;->a:Lcom/estrongs/io/archive/sevenzip/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/p;->a:Lcom/estrongs/io/archive/sevenzip/o;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/o;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
