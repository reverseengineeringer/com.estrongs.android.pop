.class public final Lcom/duapps/ad/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/view/a;

.field private final b:Lcom/duapps/ad/view/a;


# direct methods
.method public constructor <init>(Lcom/duapps/ad/view/a;Lcom/duapps/ad/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/view/b;->a:Lcom/duapps/ad/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/duapps/ad/view/b;->b:Lcom/duapps/ad/view/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/view/b;->b:Lcom/duapps/ad/view/a;

    invoke-static {v0}, Lcom/duapps/ad/view/a;->a(Lcom/duapps/ad/view/a;)V

    iget-object v0, p0, Lcom/duapps/ad/view/b;->b:Lcom/duapps/ad/view/a;

    invoke-static {v0}, Lcom/duapps/ad/view/a;->b(Lcom/duapps/ad/view/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
