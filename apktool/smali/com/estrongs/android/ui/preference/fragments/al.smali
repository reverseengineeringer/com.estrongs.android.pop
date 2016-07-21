.class Lcom/estrongs/android/ui/preference/fragments/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/al;->a:Lcom/estrongs/android/ui/preference/fragments/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ah()V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/al;->a:Lcom/estrongs/android/ui/preference/fragments/ak;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/ak;->a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
