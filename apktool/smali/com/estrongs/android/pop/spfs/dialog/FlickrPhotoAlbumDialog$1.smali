.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;
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

.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

.field final synthetic val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

.field final synthetic val$album_list:Landroid/widget/ListView;

.field final synthetic val$album_view:Landroid/view/View;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$scan_progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/widget/ListView;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$scan_progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$album_view:Landroid/view/View;

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$album_list:Landroid/widget/ListView;

    iput-object p5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    iput-object p6, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->result:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$path:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getAllAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$102(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$202(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    new-array v3, v2, [Z

    # setter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z
    invoke-static {v1, v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$302(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;[Z)[Z

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    # invokes: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumContains(Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z
    invoke-static {v3, v4, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)[Z

    move-result-object v0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)[Z

    move-result-object v0

    const/4 v3, 0x0

    aput-boolean v3, v0, v1
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/AlbumException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/AlbumException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->result:Z
    :try_end_1
    .catch Lcom/estrongs/android/pop/spfs/AlbumException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->result:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$scan_progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$album_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$album_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->val$adapter:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02f0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->dismiss()V

    goto :goto_0
.end method
