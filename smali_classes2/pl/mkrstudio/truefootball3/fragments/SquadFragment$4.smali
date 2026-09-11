.class Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;
.super Ljava/lang/Object;
.source "SquadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->initDefaultContinueButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 293
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->access$200(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;)Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    move-result-object p1

    .line 294
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->YES:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    if-eq p1, v0, :cond_c

    .line 295
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0033

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 299
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 301
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->INJURED_OR_SUSPENDED:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    if-ne p1, v2, :cond_9

    const v2, 0x7f0c0373

    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "\n\n"

    .line 303
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v3

    .line 307
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 309
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "SUB"

    const-string v7, ""

    const/16 v8, 0xa

    const-string v9, ")\n"

    const-string v10, " ("

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 310
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v11

    if-le v11, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    :goto_1
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 313
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 315
    :cond_3
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 316
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 321
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 322
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    if-le v5, v8, :cond_6

    move-object v5, v6

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v11, v11, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v11

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    :goto_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 325
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 327
    :cond_8
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 328
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v11

    invoke-virtual {v3, v11}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 329
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 336
    :cond_9
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->TOO_LITTLE_STARTING_PLAYERS:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    if-ne p1, v2, :cond_a

    const v2, 0x7f0c0374

    .line 337
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 339
    :cond_a
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->TOO_LITTLE_SUBS:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    if-ne p1, v2, :cond_b

    const p1, 0x7f0c0375

    .line 340
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    const p1, 0x7f080259

    .line 343
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 344
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4$1;

    invoke-direct {v1, p0, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 353
    :cond_c
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->continueButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onMenuButtonClicked(I)V

    :goto_4
    return-void
.end method
