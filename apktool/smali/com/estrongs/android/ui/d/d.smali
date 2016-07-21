.class Lcom/estrongs/android/ui/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/d/a;

.field final synthetic b:Lcom/estrongs/android/ui/d/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/d/c;Lcom/estrongs/android/ui/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/d;->b:Lcom/estrongs/android/ui/d/c;

    iput-object p2, p0, Lcom/estrongs/android/ui/d/d;->a:Lcom/estrongs/android/ui/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->b:Lcom/estrongs/android/ui/d/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->b:Lcom/estrongs/android/ui/d/c;

    iget-object v1, v1, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->d(Lcom/estrongs/android/ui/d/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/d/a;->b(I)V

    return-void
.end method
