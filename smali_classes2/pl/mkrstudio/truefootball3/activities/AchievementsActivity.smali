.class public Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;
.super Landroid/app/Activity;
.source "AchievementsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;,
        Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;
    }
.end annotation


# instance fields
.field achievementsTrophiesVF:Landroid/widget/ViewFlipper;

.field leftButton:Landroid/widget/Button;

.field loadingDialog:Landroid/app/Dialog;

.field pointsThreshold:I

.field rightButton:Landroid/widget/Button;

.field userDisplayedName:Ljava/lang/String;

.field userName:Ljava/lang/String;

.field userNationality:Ljava/lang/String;

.field userScore:I

.field x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xa

    .line 70
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->x:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->pointsThreshold:I

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method disableLeftButton()V
    .locals 2

    .line 640
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 641
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 650
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 651
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 645
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 646
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 655
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 656
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initViews()V
    .locals 15

    const v0, 0x7f080299

    .line 108
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v1, 0x7f08029a

    .line 109
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const-string v2, "tf3AchievementUnlocked"

    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "tf3Trophies"

    .line 111
    invoke-virtual {p0, v4, v3}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 113
    :goto_0
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->getAchievementPts()[I

    move-result-object v7

    array-length v7, v7

    const-string v8, ""

    if-ge v5, v7, :cond_1

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->getAchievementPts()[I

    move-result-object v7

    aget v7, v7, v5

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "trophies_size"

    .line 123
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    .line 125
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trophies_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 129
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, ";"

    invoke-direct {v11, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 131
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 132
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 133
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 134
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const-string v14, "id"

    .line 136
    invoke-interface {v9, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "date"

    .line 137
    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "points"

    .line 138
    invoke-interface {v9, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "name"

    .line 139
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v7, v10

    .line 142
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0803d4

    .line 146
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    add-int/2addr v6, v7

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08002a

    .line 151
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 154
    :goto_2
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->getAchievementPts()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 155
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "nr"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 160
    :cond_3
    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/AchievementAdapter;

    invoke-direct {v4, p0, v3, v2}, Lpl/mkrstudio/truefootball3/adapters/AchievementAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 162
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0803ab

    .line 164
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 166
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/TrophyAchievementAdapter;

    invoke-direct {v2, p0, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/TrophyAchievementAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 167
    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/adapters/TrophyAchievementAdapter;->setNotifyOnChange(Z)V

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->showView(I)V

    const v0, 0x7f08002c

    .line 172
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 173
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 174
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->rightButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->leftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->rightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->disableLeftButton()V

    .line 204
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableRightButton()V

    .line 206
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const v0, 0x7f08033e

    .line 210
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;

    invoke-direct {v1, p0, p0, v6}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a001c

    .line 83
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->initViews()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 674
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 663
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 664
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method showView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08002b

    .line 94
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0637

    .line 101
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0c0137

    .line 97
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    :goto_0
    return-void
.end method
