.class Lcom/estrongs/android/ui/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/f;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/f;->a()V

    return-void
.end method
