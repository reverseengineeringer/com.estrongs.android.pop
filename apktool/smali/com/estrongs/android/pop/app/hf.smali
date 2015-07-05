.class Lcom/estrongs/android/pop/app/hf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hf;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hf;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->o:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/hf;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hf;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0b01f6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
