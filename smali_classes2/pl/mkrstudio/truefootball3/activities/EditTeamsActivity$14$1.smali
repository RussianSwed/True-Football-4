.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;
.super Ljava/lang/Object;
.source "EditTeamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$selectedLeaguePosition:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;Landroid/widget/EditText;ILandroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$input",
            "val$selectedLeaguePosition",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$input:Landroid/widget/EditText;

    iput p3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$selectedLeaguePosition:I

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 395
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "True Football 3/league_names.txt"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "True Football 3"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "league_names.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 407
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 408
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 411
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 412
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    iget v5, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$selectedLeaguePosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueNames:Ljava/util/List;

    iget v4, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$selectedLeaguePosition:I

    invoke-interface {v3, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 418
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 419
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 420
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 422
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 425
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
