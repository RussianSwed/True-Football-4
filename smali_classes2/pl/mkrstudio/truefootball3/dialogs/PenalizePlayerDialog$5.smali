.class Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;
.super Ljava/lang/Object;
.source "PenalizePlayerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/objects/UserData;)V
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

    .line 176
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 180
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v7, -0x23

    const/16 v8, 0xf

    const/16 v9, -0x19

    const/16 v10, 0xa

    const/16 v11, -0xf

    const/16 v12, -0x14

    const/4 v13, 0x1

    const/4 v14, 0x5

    const/16 v15, -0xa

    const/16 v5, 0x32

    const/4 v6, 0x0

    if-nez v1, :cond_26

    .line 182
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v4, -0x5

    if-nez v1, :cond_9

    .line 184
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_0

    .line 186
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v14}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 188
    :cond_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v14}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 189
    :cond_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_3

    .line 190
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_2

    .line 191
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v4}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 193
    :cond_2
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 194
    :cond_3
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_5

    .line 195
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_4

    .line 196
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 198
    :cond_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v4}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 199
    :cond_5
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_7

    .line 200
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_6

    .line 201
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 203
    :cond_6
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 204
    :cond_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_3e

    .line 205
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_8

    .line 206
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 208
    :cond_8
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 210
    :cond_9
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v13, :cond_12

    .line 212
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_b

    .line 213
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_a

    .line 214
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v10}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 216
    :cond_a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v14}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 217
    :cond_b
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_d

    .line 218
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_c

    .line 219
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 221
    :cond_c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 222
    :cond_d
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_f

    .line 223
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_e

    .line 224
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v4}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 226
    :cond_e
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v4}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 227
    :cond_f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_11

    .line 228
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_10

    .line 229
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 231
    :cond_10
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 232
    :cond_11
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_3e

    .line 233
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v14}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 235
    :cond_12
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v3, :cond_1c

    .line 237
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_14

    .line 238
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_13

    .line 239
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, 0x14

    invoke-static {v1, v2, v7, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_0

    .line 241
    :cond_13
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, -0x28

    invoke-static {v1, v2, v3, v8}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 242
    :goto_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 243
    :cond_14
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_16

    .line 244
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_15

    .line 245
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v14}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_1

    .line 247
    :cond_15
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 248
    :goto_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 249
    :cond_16
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_18

    .line 250
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_17

    .line 251
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v4}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_2

    .line 253
    :cond_17
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 254
    :goto_2
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 255
    :cond_18
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_1a

    .line 256
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_19

    .line 257
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_3

    .line 259
    :cond_19
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v11}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 260
    :goto_3
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 261
    :cond_1a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_3e

    .line 262
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_1b

    .line 263
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v11}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_4

    .line 265
    :cond_1b
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v6, v12}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 266
    :goto_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 268
    :cond_1c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_3e

    .line 270
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 271
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_1d

    .line 272
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, 0x1e

    const/16 v4, -0x2d

    invoke-static {v1, v2, v4, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_5

    .line 274
    :cond_1d
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, 0x19

    const/16 v4, -0x32

    invoke-static {v1, v2, v4, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 275
    :goto_5
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 276
    :cond_1e
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_20

    .line 277
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_1f

    .line 278
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v10}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_6

    .line 280
    :cond_1f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 281
    :goto_6
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 282
    :cond_20
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_22

    .line 283
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_21

    .line 284
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_7

    .line 286
    :cond_21
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 287
    :goto_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 288
    :cond_22
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_24

    .line 289
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_23

    .line 290
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_8

    .line 292
    :cond_23
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v15}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 293
    :goto_8
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 294
    :cond_24
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    if-ne v1, v2, :cond_3e

    .line 295
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_25

    .line 296
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v12}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_9

    .line 298
    :cond_25
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v9}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 299
    :goto_9
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 302
    :cond_26
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v13, :cond_3e

    .line 305
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v1, v4, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCurrentRating(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)F

    move-result v1

    .line 306
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v7

    invoke-virtual {v4, v1, v7}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->checkRating(FF)F

    move-result v1

    .line 308
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const-wide/high16 v16, -0x8000000000000000L

    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    if-nez v4, :cond_2c

    float-to-double v1, v1

    cmpg-double v3, v1, v18

    if-gez v3, :cond_28

    .line 311
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_27

    .line 312
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v10, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 314
    :cond_27
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v10, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    :cond_28
    cmpg-double v3, v1, v16

    if-gtz v3, :cond_2a

    .line 316
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_29

    .line 317
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 319
    :cond_29
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 321
    :cond_2a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_2b

    .line 322
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v10}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 324
    :cond_2b
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->DEMOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v10}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 326
    :cond_2c
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v13, :cond_32

    float-to-double v1, v1

    cmpg-double v3, v1, v18

    if-gez v3, :cond_2e

    .line 329
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_2d

    .line 330
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v14, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 332
    :cond_2d
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v14, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    :cond_2e
    cmpg-double v3, v1, v16

    if-gtz v3, :cond_30

    .line 334
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_2f

    .line 335
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 337
    :cond_2f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v11, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 339
    :cond_30
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    const/16 v2, -0x1e

    if-le v1, v5, :cond_31

    .line 340
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v3, v2, v8}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 342
    :cond_31
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v3, v2, v8}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto/16 :goto_10

    .line 344
    :cond_32
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v3, :cond_38

    float-to-double v1, v1

    cmpg-double v3, v1, v18

    if-gez v3, :cond_34

    .line 348
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_33

    .line 349
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_a

    .line 351
    :cond_33
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v15, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 352
    :goto_a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    :cond_34
    cmpg-double v3, v1, v16

    if-gtz v3, :cond_36

    .line 354
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_35

    .line 355
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_b

    .line 357
    :cond_35
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v9, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 358
    :goto_b
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 360
    :cond_36
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_37

    .line 361
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, -0x2d

    invoke-static {v1, v2, v3, v10}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_c

    :cond_37
    const/16 v3, -0x2d

    .line 363
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v3, v10}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 364
    :goto_c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_10

    .line 367
    :cond_38
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v2, :cond_3e

    float-to-double v1, v1

    cmpg-double v3, v1, v18

    if-gez v3, :cond_3a

    .line 371
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_39

    .line 372
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_d

    .line 374
    :cond_39
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v12, v6}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 375
    :goto_d
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_10

    :cond_3a
    cmpg-double v3, v1, v16

    if-gtz v3, :cond_3c

    .line 377
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    const/16 v2, 0xc

    if-le v1, v5, :cond_3b

    .line 378
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v4, -0x23

    invoke-static {v1, v3, v4, v2}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_e

    :cond_3b
    const/16 v4, -0x23

    .line 380
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v3, v4, v2}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 381
    :goto_e
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_10

    .line 383
    :cond_3c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v1

    if-le v1, v5, :cond_3d

    .line 384
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v3, 0x19

    const/16 v4, -0x32

    invoke-static {v1, v2, v4, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    goto :goto_f

    :cond_3d
    const/16 v3, 0x19

    const/16 v4, -0x32

    .line 386
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v1, v2, v4, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    .line 387
    :goto_f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v1, v13, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 391
    :cond_3e
    :goto_10
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setCurrentEvent(Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;)V

    return-void
.end method
