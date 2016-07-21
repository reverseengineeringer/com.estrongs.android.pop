.class Lcom/flurry/sdk/gc$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gc$2;->a:Lcom/flurry/sdk/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc$2;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->b(Lcom/flurry/sdk/gc;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$2;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->b(Lcom/flurry/sdk/gc;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
