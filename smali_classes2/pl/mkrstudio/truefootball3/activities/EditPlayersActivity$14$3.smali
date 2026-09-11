.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;->val$i:I

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
            "v"
        }
    .end annotation

    .line 460
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->unsavedChanges:Z

    .line 461
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;->val$i:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->editCustomPlayer(I)V

    return-void
.end method
