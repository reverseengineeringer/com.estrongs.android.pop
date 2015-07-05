.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field result:Z

.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

.field final synthetic val$album_view:Landroid/view/View;

.field final synthetic val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

.field final synthetic val$scan_progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/estrongs/android/pop/spfs/SPFileObject;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$scan_progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$album_view:Landroid/view/View;

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->result:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v1

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1102(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Lcom/estrongs/android/pop/spfs/SPFileInfo;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$602(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->result:Z

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getAllAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$702(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$602(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/android/pop/spfs/AlbumException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/AlbumException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$scan_progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$album_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->result:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->tags:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    if-lt v3, v0, :cond_3

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/yuyang226/flickr/b/a;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-eq v1, v0, :cond_0

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->displayPicName(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)V

    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->val$fo:Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$1700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02ef

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    goto :goto_2
.end method
