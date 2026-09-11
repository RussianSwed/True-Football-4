.class public Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;
.super Landroid/app/Dialog;
.source "BusinessmanDialog.java"


# instance fields
.field reward:J

.field showAd:Z

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->showAd:Z

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0037

    .line 37
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->calculateReward()V

    .line 40
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->showGreeting()V

    return-void
.end method

.method private getNextMonth()Ljava/lang/String;
    .locals 3

    .line 161
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getMonthName(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method calculateReward()V
    .locals 7

    .line 44
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 45
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->getMonthlyFinanceItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 48
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "youthTraining"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 49
    :cond_1
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "scouting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 50
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "employeesSalaries"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 51
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stadiumMaintenance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 52
    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "playerSalaries"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_5
    const-wide/16 v3, -0xfa0

    cmp-long v0, v1, v3

    if-gez v0, :cond_6

    const-wide/16 v0, 0x1388

    .line 55
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto/16 :goto_1

    :cond_6
    const-wide/16 v5, -0x9c4

    cmp-long v0, v1, v3

    if-lez v0, :cond_7

    cmp-long v0, v1, v5

    if-gez v0, :cond_7

    const-wide/16 v0, 0xfa0

    .line 56
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_7
    const-wide/16 v3, -0x5dc

    cmp-long v0, v1, v5

    if-lez v0, :cond_8

    cmp-long v0, v1, v3

    if-gez v0, :cond_8

    const-wide/16 v0, 0x9c4

    .line 57
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_8
    const-wide/16 v5, -0x3e8

    cmp-long v0, v1, v3

    if-lez v0, :cond_9

    cmp-long v0, v1, v5

    if-gez v0, :cond_9

    const-wide/16 v0, 0x7d0

    .line 58
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_9
    const-wide/16 v3, -0x2ee

    cmp-long v0, v1, v5

    if-lez v0, :cond_a

    cmp-long v0, v1, v3

    if-gez v0, :cond_a

    const-wide/16 v0, 0x3e8

    .line 59
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_a
    const-wide/16 v5, -0x1f4

    cmp-long v0, v1, v3

    if-lez v0, :cond_b

    cmp-long v0, v1, v5

    if-gez v0, :cond_b

    const-wide/16 v0, 0x2ee

    .line 60
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_b
    const-wide/16 v3, -0xfa

    cmp-long v0, v1, v5

    if-lez v0, :cond_c

    cmp-long v0, v1, v3

    if-gez v0, :cond_c

    const-wide/16 v0, 0x1f4

    .line 61
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_c
    cmp-long v0, v1, v3

    if-lez v0, :cond_d

    const-wide/16 v3, -0x64

    cmp-long v0, v1, v3

    if-gez v0, :cond_d

    const-wide/16 v0, 0xfa

    .line 62
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    goto :goto_1

    :cond_d
    const-wide/16 v0, 0xc8

    .line 63
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    :goto_1
    return-void
.end method

.method public getReward()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    return-wide v0
.end method

.method public showAd()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->showAd:Z

    return v0
.end method

.method showGreeting()V
    .locals 13

    .line 68
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 69
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->wasDonatedThisMonth()Z

    move-result v1

    const v2, 0x7f080177

    .line 71
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080154

    .line 72
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080363

    .line 73
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0802a7

    .line 74
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0803d1

    .line 76
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f08022f

    .line 77
    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 79
    sget-object v8, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$3;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Faces:[I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/Faces;->ordinal()I

    move-result v0

    aget v0, v8, v0

    const v8, 0x7f0700f5

    const v9, 0x7f0700ef

    const v10, 0x7f0700ec

    const v11, 0x7f0700e9

    const v12, 0x7f0700f2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :pswitch_5
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :pswitch_6
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :pswitch_7
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :pswitch_8
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :pswitch_9
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :pswitch_a
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :pswitch_b
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :pswitch_c
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tf3Settings"

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v9, "currencyModifier"

    .line 125
    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v9, "currencyName"

    const-string v10, "EUR"

    .line 126
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    .line 129
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0192

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c064d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v9, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->reward:J

    long-to-float v4, v9

    mul-float v4, v4, v2

    float-to-long v9, v4

    invoke-static {v9, v10, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_1
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$2;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
