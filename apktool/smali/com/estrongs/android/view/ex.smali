.class Lcom/estrongs/android/view/ex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ex;->b:Lcom/estrongs/android/view/eu;

    iput p2, p0, Lcom/estrongs/android/view/ex;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ex;->b:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->f(Lcom/estrongs/android/view/eu;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/view/ex;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-void
.end method
