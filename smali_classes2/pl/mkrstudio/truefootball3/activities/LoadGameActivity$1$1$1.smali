.class Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;
.super Ljava/lang/Object;
.source "LoadGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;->val$dialog:Landroid/app/Dialog;

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

    .line 238
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->val$i:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->deleteGame(I)V

    .line 239
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->listSaves()V

    .line 240
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
