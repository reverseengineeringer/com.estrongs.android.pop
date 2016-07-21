.class Lcom/estrongs/android/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/c;->a:Lcom/estrongs/android/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/c;->a:Lcom/estrongs/android/view/b;

    invoke-static {v0, p1}, Lcom/estrongs/android/view/b;->a(Lcom/estrongs/android/view/b;Landroid/view/View;)V

    return-void
.end method
