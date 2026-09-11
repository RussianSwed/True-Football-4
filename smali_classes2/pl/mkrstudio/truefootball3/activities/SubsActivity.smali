.class public Lpl/mkrstudio/truefootball3/activities/SubsActivity;
.super Landroid/app/Activity;
.source "SubsActivity.java"


# instance fields
.field benchLV:Landroid/widget/ListView;

.field chosenPlayer1:Lpl/mkrstudio/truefootball3/objects/Player;

.field chosenPlayer2:Lpl/mkrstudio/truefootball3/objects/Player;

.field private firstList:Ljava/util/List;

.field injuryMode:Z

.field lineupBefore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field lineupLV:Landroid/widget/ListView;

.field private secondList:Ljava/util/List;

.field showedParameter:I

.field subAdapter1:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

.field subAdapter2:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

.field subLimit:B

.field swapButton:Landroid/widget/Button;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->showedParameter:I

    const/4 v1, 0x5

    .line 42
    iput-byte v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subLimit:B

    .line 43
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->injuryMode:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->firstList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->secondList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/SubsActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->showSquad()V

    return-void
.end method

.method private showSquad()V
    .locals 12

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->firstList:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->secondList:Ljava/util/List;

    .line 149
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0, v1, v2}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "currencyModifier"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 153
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "currencyName"

    const-string v5, "EUR"

    .line 154
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 158
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    .line 160
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v7

    const-string v8, "pausing"

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "false"

    .line 163
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    const-string v7, "true"

    .line 161
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "nr"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    float-to-double v7, v3

    .line 168
    invoke-virtual {v5, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v7

    invoke-static {v7, v8, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->shortFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v9

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getDrawableForShape(Lpl/mkrstudio/truefootball3/enums/Shape;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v9, "shape"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-string v9, "condition"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/Locale;

    const-string v11, "en"

    invoke-direct {v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "nation"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-string v8, "age"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-string v8, "morale"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    const-string v7, "-"

    :goto_3
    const-string v8, "secondPosition"

    .line 182
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v8

    invoke-virtual {v7, v8}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "contractEnd"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v7

    const/4 v8, -0x1

    const-string v9, "position"

    const-string v10, "skill"

    const/16 v11, 0xb

    if-le v7, v8, :cond_3

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v7

    if-ge v7, v11, :cond_3

    .line 187
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

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

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    aget-object v5, v7, v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->firstList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 190
    :cond_3
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v7

    if-lt v7, v11, :cond_4

    .line 191
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->secondList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0801e0

    .line 200
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->lineupLV:Landroid/widget/ListView;

    .line 201
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->firstList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v1}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subAdapter1:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    .line 203
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->lineupLV:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080084

    .line 205
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->benchLV:Landroid/widget/ListView;

    .line 206
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->secondList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v1}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subAdapter2:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    .line 208
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->benchLV:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->lineupLV:Landroid/widget/ListView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/SubsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->benchLV:Landroid/widget/ListView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/SubsActivity$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/SubsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

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

    .line 87
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method canSwap(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    return v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    if-ge v1, v3, :cond_2

    return v2

    .line 118
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    if-lt v1, v3, :cond_3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    if-lt v1, v3, :cond_3

    return v2

    .line 121
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 123
    :cond_4
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 127
    :cond_5
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_6
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_7
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 137
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->lineupBefore:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 140
    :cond_9
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subLimit:B

    if-le p2, p1, :cond_a

    return v0

    :cond_a
    return v2

    :cond_b
    :goto_2
    return v0
.end method

.method initButton()V
    .locals 2

    const v0, 0x7f080347

    .line 91
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->swapButton:Landroid/widget/Button;

    .line 92
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/SubsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->swapButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 281
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 282
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 285
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 286
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v4, 0x7f0a0033

    .line 287
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    const v4, 0x7f08010f

    .line 289
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0c04d1

    .line 290
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080259

    .line 292
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 293
    new-instance v4, Lpl/mkrstudio/truefootball3/activities/SubsActivity$4;

    invoke-direct {v4, p0, v2}, Lpl/mkrstudio/truefootball3/activities/SubsActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/SubsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a002b

    .line 60
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "subLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->subLimit:B

    .line 64
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "injuryMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->injuryMode:Z

    .line 66
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 68
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 69
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 70
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildInjuryMessage(ZLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Injury;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->lineupBefore:Ljava/util/List;

    const p1, 0x7f0801e1

    .line 77
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 79
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->showSquad()V

    .line 82
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->initButton()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 316
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 317
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 320
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 309
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SubsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 310
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
