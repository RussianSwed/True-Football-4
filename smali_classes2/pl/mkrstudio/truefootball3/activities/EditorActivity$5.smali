.class Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;Landroid/app/Dialog;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog",
            "val$refresh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 549
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;->val$dialog:Landroid/app/Dialog;

    iput-boolean p3, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 552
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 553
    iget-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;->val$refresh:Z

    if-eqz p1, :cond_0

    .line 554
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    invoke-direct {p1, v0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
