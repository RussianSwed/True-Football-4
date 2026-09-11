.class Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;
.super Ljava/lang/Object;
.source "RewardPlayerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 176
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0xf

    const/16 v5, -0x14

    const/16 v6, 0x1e

    const/4 v7, -0x5

    const/16 v8, -0xa

    const/16 v9, 0xa

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v12, 0x0

    if-nez v1, :cond_11

    .line 178
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v13, 0x32

    if-nez v1, :cond_4

    .line 180
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getDaysToNextReward()B

    move-result v1

    if-lez v1, :cond_0

    .line 181
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 185
    :cond_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_1f

    .line 186
    :cond_2
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v13, :cond_3

    .line 187
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v8}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 189
    :cond_3
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v7}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 192
    :cond_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v7, -0xf

    if-ne v1, v10, :cond_9

    .line 194
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getDaysToNextReward()B

    move-result v1

    if-lez v1, :cond_5

    .line 195
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_6

    .line 198
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 199
    :cond_6
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_1f

    .line 200
    :cond_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v13, :cond_8

    .line 201
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v7}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 203
    :cond_8
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v8}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 206
    :cond_9
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 208
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->payReward(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 209
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_a

    .line 210
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 211
    :cond_a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_1f

    .line 212
    :cond_b
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v13, :cond_c

    .line 213
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v5}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 215
    :cond_c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v7}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 217
    :cond_d
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 219
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v11, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->payReward(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 220
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_e

    .line 221
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 222
    :cond_e
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_f

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-eq v1, v2, :cond_f

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_1f

    .line 223
    :cond_f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v13, :cond_10

    .line 224
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, -0x19

    invoke-static {v1, v2, v13, v3}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 226
    :cond_10
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v13, v5}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 229
    :cond_11
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v10, :cond_1f

    .line 232
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    iget-object v13, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v1, v13, v14}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCurrentRating(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)F

    move-result v1

    .line 233
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v14

    invoke-virtual {v13, v1, v14}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->checkRating(FF)F

    move-result v1

    .line 235
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v13, v13, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    const-wide/high16 v14, -0x8000000000000000L

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    if-nez v13, :cond_15

    .line 237
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getDaysToNextReward()B

    move-result v2

    if-lez v2, :cond_12

    .line 238
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    :cond_12
    float-to-double v1, v1

    cmpg-double v3, v1, v16

    if-gez v3, :cond_13

    .line 241
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    :cond_13
    cmpg-double v3, v1, v14

    if-gtz v3, :cond_14

    .line 243
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 245
    :cond_14
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v7}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 248
    :cond_15
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v13, v13, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-ne v13, v10, :cond_19

    .line 250
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getDaysToNextReward()B

    move-result v2

    if-lez v2, :cond_16

    .line 251
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    :cond_16
    float-to-double v1, v1

    cmpg-double v3, v1, v16

    if-gez v3, :cond_17

    .line 254
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    :cond_17
    cmpg-double v3, v1, v14

    if-gtz v3, :cond_18

    .line 256
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 258
    :cond_18
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v8}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_0

    .line 261
    :cond_19
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v13, v13, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-ne v13, v3, :cond_1c

    .line 263
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v3

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v2, v10, v3, v4}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->payReward(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    float-to-double v1, v1

    cmpg-double v3, v1, v16

    if-gez v3, :cond_1a

    .line 265
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_0

    :cond_1a
    cmpg-double v3, v1, v14

    if-gtz v3, :cond_1b

    .line 267
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_0

    .line 269
    :cond_1b
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, 0x19

    invoke-static {v1, v2, v3, v8}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_0

    .line 271
    :cond_1c
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v2, :cond_1f

    .line 273
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v3

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v8

    invoke-virtual {v2, v11, v3, v8}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->payReward(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    float-to-double v1, v1

    cmpg-double v3, v1, v16

    if-gez v3, :cond_1d

    .line 275
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v12}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_0

    :cond_1d
    cmpg-double v3, v1, v14

    if-gtz v3, :cond_1e

    .line 277
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v7}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_0

    .line 279
    :cond_1e
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v5}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 283
    :cond_1f
    :goto_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setCurrentEvent(Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;)V

    .line 284
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setDaysToNextReward(B)V

    return-void
.end method
