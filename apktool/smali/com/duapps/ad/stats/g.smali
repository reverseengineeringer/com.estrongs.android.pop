.class Lcom/duapps/ad/stats/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duapps/ad/stats/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/g;->c:Lcom/duapps/ad/stats/c;

    iput-object p2, p0, Lcom/duapps/ad/stats/g;->a:Lcom/duapps/ad/stats/p;

    iput-object p3, p0, Lcom/duapps/ad/stats/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/stats/g;->c:Lcom/duapps/ad/stats/c;

    iget-object v1, p0, Lcom/duapps/ad/stats/g;->a:Lcom/duapps/ad/stats/p;

    iget-object v2, p0, Lcom/duapps/ad/stats/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/c;->c(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    return-void
.end method
