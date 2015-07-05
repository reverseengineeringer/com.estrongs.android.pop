.class Lcom/estrongs/android/pop/app/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ESUsePromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->finish()V

    return-void
.end method
