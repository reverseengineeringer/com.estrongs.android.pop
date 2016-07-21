.class Lcom/estrongs/android/pop/app/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->h(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->h(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ai;->b()V

    :cond_0
    return-void
.end method
