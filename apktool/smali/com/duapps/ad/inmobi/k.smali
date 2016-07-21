.class public Lcom/duapps/ad/inmobi/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/duapps/ad/inmobi/IMData;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/duapps/ad/inmobi/IMData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/k;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/duapps/ad/inmobi/k;->b:Z

    iput-object p3, p0, Lcom/duapps/ad/inmobi/k;->c:Lcom/duapps/ad/inmobi/IMData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/duapps/ad/inmobi/k;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/inmobi/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/inmobi/i;->a(Landroid/content/Context;)Lcom/duapps/ad/inmobi/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/inmobi/k;->c:Lcom/duapps/ad/inmobi/IMData;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/inmobi/i;->b(Lcom/duapps/ad/inmobi/IMData;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/inmobi/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/inmobi/i;->a(Landroid/content/Context;)Lcom/duapps/ad/inmobi/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/inmobi/k;->c:Lcom/duapps/ad/inmobi/IMData;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/inmobi/i;->a(Lcom/duapps/ad/inmobi/IMData;)V

    goto :goto_0
.end method
