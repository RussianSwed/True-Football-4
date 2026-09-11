.class Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;
.super Ljava/lang/Object;
.source "InterviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showNextQuestion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$player"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 220
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v0, -0x5

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 221
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    .line 222
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    if-eq v2, v3, :cond_0

    .line 223
    check-cast v2, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 224
    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v2, 0x2

    if-ne p1, v1, :cond_2

    .line 227
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_2

    .line 228
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    if-ne p1, v2, :cond_4

    .line 229
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    .line 230
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    if-eq v0, v3, :cond_3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 231
    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 232
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_1

    .line 235
    :cond_4
    :goto_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget v0, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    add-int/2addr v0, v1

    iput v0, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    .line 236
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showNextQuestion()V

    return-void
.end method
