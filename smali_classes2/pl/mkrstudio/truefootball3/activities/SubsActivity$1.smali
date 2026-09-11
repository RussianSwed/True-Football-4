.class Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;
.super Ljava/lang/Object;
.source "SubsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/SubsActivity;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/SubsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

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

    .line 95
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->canSwap(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    .line 97
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    .line 98
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 99
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 100
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 101
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 102
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->access$000(Lpl/mkrstudio/truefootball3/activities/SubsActivity;)V

    .line 103
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->swapButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
