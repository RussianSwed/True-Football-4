.class public Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;
.super Landroid/app/Activity;
.source "EditPlayersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$InitActivityProgressTask;
    }
.end annotation


# static fields
.field public static chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field public static customPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field countrySpinner:Landroid/widget/Spinner;

.field leagueSpinner:Landroid/widget/Spinner;

.field leagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field teamSpinner:Landroid/widget/Spinner;

.field teams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field unsavedChanges:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->unsavedChanges:Z

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

    .line 83
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method disable(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public editCustomPlayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    .line 481
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method enable(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    const/4 v0, 0x1

    .line 476
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initCustomPlayersList()V
    .locals 18

    move-object/from16 v7, p0

    .line 349
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 352
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$13;

    invoke-direct {v1, v7}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$13;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const v0, 0x7f08014b

    .line 360
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    const v0, 0x7f080164

    .line 361
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    const v0, 0x7f080218

    .line 362
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 363
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const v1, 0x7f080133

    .line 367
    invoke-virtual {v7, v1}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ListView;

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    const-string v2, "nation"

    const-string v6, "skill"

    const-string v10, "age"

    const-string v11, "position"

    const-string v12, "name"

    if-eqz v1, :cond_1

    .line 371
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    .line 372
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 373
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getAge()B

    move-result v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-interface {v14, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getSkill()B

    move-result v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-interface {v14, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v15

    invoke-interface {v14, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getNationality()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v1

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v17, v8

    const-string v8, "en"

    invoke-direct {v1, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v13, "drawable"

    invoke-virtual {v0, v1, v13, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    move-object/from16 v8, v17

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v17, v8

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c03f5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    const/4 v0, 0x0

    invoke-direct {v2, v7, v0, v3}, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 392
    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    new-instance v8, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;Ljava/util/List;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0c0257

    move-object/from16 v1, v17

    .line 467
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method initLeagueSpinner()V
    .locals 4

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    .line 265
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "USA"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    const-string v1, "USA_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    const-string v1, "USA_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "CAN"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_2
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$11;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    invoke-static {v2, p0}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 307
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0a00d4

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 308
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 309
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 310
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 312
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 313
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 316
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070086

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method initTeamSpinner()V
    .locals 4

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teams:Ljava/util/List;

    .line 324
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 327
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 330
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$12;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$12;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 339
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teams:Ljava/util/List;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0a00d4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teams:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 343
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 344
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 345
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method initViews()V
    .locals 5

    const v0, 0x7f0801f9

    .line 87
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08011f

    .line 89
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countrySpinner:Landroid/widget/Spinner;

    const v0, 0x7f0801d7

    .line 90
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    const v0, 0x7f08036d

    .line 91
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    const v0, 0x7f080060

    .line 92
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 93
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080062

    .line 94
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 95
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 96
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 97
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight3:Landroid/widget/Button;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countries:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 101
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 102
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->hasTeam()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countries:Ljava/util/List;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 110
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$1;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    const v4, 0x7f0a00d2

    invoke-direct {v3, p0, v4, v0, v1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countrySpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 126
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initLeagueSpinner()V

    .line 127
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initTeamSpinner()V

    .line 129
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$3;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->teamSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$4;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagues:Ljava/util/List;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    sput-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 167
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initCustomPlayersList()V

    .line 169
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowLeft3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$8;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->arrowRight3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$10;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 606
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->unsavedChanges:Z

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 608
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 611
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0233

    .line 612
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0803d0

    .line 614
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 615
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$15;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$15;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08022d

    .line 623
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 624
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 634
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a001e

    .line 75
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 78
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$InitActivityProgressTask;

    invoke-direct {p1, p0, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 663
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 640
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 641
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initCustomPlayersList()V

    .line 649
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method saveChanges()V
    .locals 4

    .line 553
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "True Football 3"

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    .line 570
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "edited_data.bin"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 572
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 573
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 574
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "I has a error"

    .line 576
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
