.class Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 311
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 313
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    const v1, 0x7f0c025c

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    const v1, 0x7f0c025a

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V

    .line 317
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 319
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setLeagueNames(Ljava/util/HashMap;)V

    .line 321
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->initViews()V

    .line 322
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
