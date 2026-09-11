.class public Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OverviewResultsAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field diffParameters:[Ljava/lang/String;

.field flip:Z

.field parameters:[Ljava/lang/String;

.field showedParameter:I

.field trainingFragment:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "textViewResourceId",
            "objects",
            "trainingFragment",
            "flip"
        }
    .end annotation

    move-object v0, p0

    .line 32
    invoke-direct/range {p0 .. p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v1, "skill"

    const-string v2, "agility"

    const-string v3, "charisma"

    const-string v4, "crossing"

    const-string v5, "goalkeeping"

    const-string v6, "heading"

    const-string v7, "passing"

    const-string v8, "shooting"

    const-string v9, "strength"

    const-string v10, "tackling"

    const-string v11, "technique"

    .line 27
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->parameters:[Ljava/lang/String;

    const-string v2, "diffSkill"

    const-string v3, "diffAgility"

    const-string v4, "diffCharisma"

    const-string v5, "diffCrossing"

    const-string v6, "diffGoalkeeping"

    const-string v7, "diffHeading"

    const-string v8, "diffPassing"

    const-string v9, "diffShooting"

    const-string v10, "diffStrength"

    const-string v11, "diffTackling"

    const-string v12, "diffTechnique"

    .line 29
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    move-object v1, p1

    .line 33
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->context:Landroid/content/Context;

    move-object/from16 v1, p4

    .line 34
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->trainingFragment:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    move/from16 v1, p5

    .line 35
    iput-boolean v1, v0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->flip:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0a009d

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f08029d

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f080221

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080318

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08014e

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080222

    .line 53
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f08004a

    .line 54
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v5, "position"

    .line 58
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getBackgroundColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "name"

    .line 63
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->parameters:[Ljava/lang/String;

    iget v7, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    iget v7, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "nation"

    .line 66
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0142

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "age"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "skill"

    .line 69
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    iget v3, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object p3, p3, v3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v3, -0x1

    if-gez p3, :cond_1

    .line 74
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getRedColor()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    iget v4, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object p3, p3, v4

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    iget v4, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object p3, p3, v4

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "+0"

    .line 77
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    iget v4, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object p3, p3, v4

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_3

    const p3, -0xff0100

    .line 80
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->diffParameters:[Ljava/lang/String;

    iget v5, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_3
    :goto_0
    new-instance p3, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;-><init>(Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;)V

    .line 94
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "edited"

    .line 97
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "true"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getEditedPlayerColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method

.method public showNextParameter()I
    .locals 2

    .line 111
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->flip:Z

    if-eqz v0, :cond_0

    .line 112
    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    .line 113
    :cond_0
    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    .line 115
    :cond_1
    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    return v0
.end method
