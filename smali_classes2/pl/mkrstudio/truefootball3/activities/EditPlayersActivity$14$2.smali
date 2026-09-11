.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;
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

    .line 419
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->val$i:I

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
            "v"
        }
    .end annotation

    .line 422
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 423
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 447
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->show()V

    return-void
.end method
