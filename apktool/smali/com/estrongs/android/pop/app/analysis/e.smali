.class Lcom/estrongs/android/pop/app/analysis/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/e;->b:Lcom/estrongs/android/pop/app/analysis/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/e;->b:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a;->b()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/e;->b:Lcom/estrongs/android/pop/app/analysis/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/e;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    return-void
.end method
