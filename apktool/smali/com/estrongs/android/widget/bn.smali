.class Lcom/estrongs/android/widget/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/widget/SlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bn;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/widget/SlidingDrawer;Lcom/estrongs/android/widget/bm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/bn;-><init>(Lcom/estrongs/android/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/bn;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-static {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Lcom/estrongs/android/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/bn;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-static {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->b(Lcom/estrongs/android/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/bn;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/bn;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a()V

    goto :goto_0
.end method
