.class public Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;
.super Landroid/os/AsyncTask;
.source "TransfersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchPlayersProgressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private dialog:Landroid/app/Dialog;

.field private includeEdited:I

.field private includeRandom:I

.field private maxAge:I

.field private maxSkill:I

.field private minAge:I

.field private minSkill:I

.field private playerClub:Ljava/lang/String;

.field private playerCountry:Ljava/lang/String;

.field private playerName:Ljava/lang/String;

.field private position:Lpl/mkrstudio/truefootball3/enums/Position;

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

.field private transfersFragment:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIILandroid/view/View;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "position",
            "playerName",
            "playerClub",
            "playerCountry",
            "minAge",
            "maxAge",
            "minSkill",
            "maxSkill",
            "includeEdited",
            "includeRandom",
            "view",
            "transfersFragment"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 360
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->activity:Landroidx/fragment/app/FragmentActivity;

    const-string p1, "-"

    .line 361
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lpl/mkrstudio/truefootball3/enums/Position;->valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    .line 362
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerName:Ljava/lang/String;

    .line 363
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerClub:Ljava/lang/String;

    .line 364
    iput-object p6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerCountry:Ljava/lang/String;

    .line 365
    iput p7, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->minAge:I

    .line 366
    iput p8, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->maxAge:I

    .line 367
    iput p9, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->minSkill:I

    .line 368
    iput p10, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->maxSkill:I

    .line 369
    iput p11, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->includeEdited:I

    .line 370
    iput p12, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->includeRandom:I

    .line 371
    iput-object p14, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->transfersFragment:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    .line 372
    iput-object p13, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->view:Landroid/view/View;

    .line 373
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    const/4 p1, 0x0

    .line 410
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->squadList:Ljava/util/List;

    .line 413
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerName:Ljava/lang/String;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerClub:Ljava/lang/String;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/objects/World;->getAllKnownPlayers(Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->players:Ljava/util/List;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 417
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->minAge:I

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->maxAge:I

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->minSkill:I

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->maxSkill:I

    if-le v3, v4, :cond_2

    .line 418
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_2
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerCountry:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->playerCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 420
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_3
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->includeEdited:I

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 422
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_4
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->includeRandom:I

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v3

    if-nez v3, :cond_0

    .line 425
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 430
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->players:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tf3Settings"

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 434
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "currencyName"

    const-string v3, "EUR"

    .line 435
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->players:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 438
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 439
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "nr"

    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "skill"

    .line 441
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "name"

    .line 442
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "value"

    float-to-double v7, v1

    .line 443
    invoke-virtual {v4, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v7

    invoke-static {v7, v8, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "positions"

    .line 444
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "edited"

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "imageUri"

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "drawable"

    iget-object v10, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v4, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    .line 448
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->squadList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x1

    .line 451
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "error"

    .line 453
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "args"
        }
    .end annotation

    .line 342
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "success"
        }
    .end annotation

    .line 388
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->view:Landroid/view/View;

    const v0, 0x7f0801c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 390
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0392

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->players:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->view:Landroid/view/View;

    const v0, 0x7f0802f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 393
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/SearchPlayersAdapter;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->squadList:Ljava/util/List;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->transfersFragment:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-direct {v0, v1, v3, v2, v4}, Lpl/mkrstudio/truefootball3/adapters/SearchPlayersAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->view:Landroid/view/View;

    const v0, 0x7f080294

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 397
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->view:Landroid/view/View;

    const v0, 0x7f080182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "success"
        }
    .end annotation

    .line 342
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 377
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 378
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 379
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 380
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c039e

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
