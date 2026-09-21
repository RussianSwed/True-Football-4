.class public Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;
.super Landroid/app/Dialog;
.source "NationalTeamDialog.java"


# instance fields
.field nt:Lpl/mkrstudio/truefootball3/objects/NationalTeam;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a00e6

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->setContentView(I)V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->nt:Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 10

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0803e7

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0803e8

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0803e9

    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0803ea

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->nt:Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-nez v5, :cond_0

    const v5, 0x7f0c0682

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :close

    :cond_0
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_2

    const-string v6, ""

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c068a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingPosition()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c068b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingPoints()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingChange()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const v0, 0x7f0c0682

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :hist

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0685

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_p
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_p

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :hist
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getHistory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const v0, 0x7f0c0683

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :close

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0c0686

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_h
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_h

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :close
    if-eqz v4, :cond_a

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method
