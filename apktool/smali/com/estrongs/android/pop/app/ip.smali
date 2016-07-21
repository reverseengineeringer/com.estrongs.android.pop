.class Lcom/estrongs/android/pop/app/ip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/io;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/io;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ip;->a:Lcom/estrongs/android/pop/app/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ip;->a:Lcom/estrongs/android/pop/app/io;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/io;->c:Lcom/estrongs/android/pop/app/im;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/im;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ip;->a:Lcom/estrongs/android/pop/app/io;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/io;->c:Lcom/estrongs/android/pop/app/im;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/im;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ip;->a:Lcom/estrongs/android/pop/app/io;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/io;->c:Lcom/estrongs/android/pop/app/im;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/im;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->finish()V

    return-void
.end method
