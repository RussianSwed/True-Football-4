.class Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;
.super Ljava/lang/Object;
.source "SubsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/SubsActivity;->showSquad()V
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

    .line 210
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "position",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 213
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object p1

    .line 214
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 215
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 p4, 0x0

    if-ne p2, p1, :cond_0

    .line 216
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iput-object p4, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 217
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subAdapter1:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->deselectPosition(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne p2, p1, :cond_1

    .line 219
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iput-object p4, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 220
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subAdapter1:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->deselectPosition(I)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez p2, :cond_2

    .line 222
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iput-object p1, p2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 223
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subAdapter1:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->selectPosition(I)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez p2, :cond_3

    .line 225
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iput-object p1, p2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 226
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subAdapter1:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->selectPosition(I)V

    .line 229
    :cond_3
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->canSwap(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 230
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->swapButton:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 232
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->swapButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method
