.class public Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;
.super Landroidx/fragment/app/Fragment;
.source "TransfersFragment.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/fragments/IPreviewFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;
    }
.end annotation


# instance fields
.field childToDisplay:I

.field currency:Ljava/lang/String;

.field headerArrowLeft:Landroid/widget/Button;

.field headerArrowRight:Landroid/widget/Button;

.field modifier:F

.field offersMade:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation
.end field

.field offersMadeList:Ljava/util/List;

.field offersReceived:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation
.end field

.field offersReceivedList:Ljava/util/List;

.field ok:Landroid/widget/Button;

.field pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field squadList:Ljava/util/List;

.field transfersVF:Landroid/widget/ViewFlipper;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childToDisplay"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->childToDisplay:I

    .line 67
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->childToDisplay:I

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showOffersReceived(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showOffersMade(Landroid/view/View;)V

    return-void
.end method

.method private showOffersMade(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersMadeList:Ljava/util/List;

    .line 180
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getOffersMade()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersMade:Ljava/util/List;

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 183
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "nr"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const-string v6, "skill"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const-string v6, "age"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 189
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "made"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    .line 190
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "edited"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v4, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$5;->$SwitchMap$pl$mkrstudio$truefootball3$enums$TransferOfferType:[I

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const-string v6, "team"

    const-string v7, "offeredValue"

    const-string v8, "offerType"

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v4, "loanOffer"

    .line 212
    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v4, v4, v5

    float-to-long v4, v4

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    const-string v4, "contractOffer"

    .line 207
    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v4, v4, v5

    float-to-long v4, v4

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "-"

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    if-ne v4, v5, :cond_5

    const-string v4, "negotiation"

    .line 196
    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v4, v4, v5

    float-to-long v4, v4

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string v4, "buyOffer"

    .line 200
    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v4, v4, v5

    float-to-long v4, v4

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "position"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v5, v2, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "nation"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 222
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersMadeList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f080256

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 226
    new-instance v7, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersMadeList:Ljava/util/List;

    move-object v1, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    .line 227
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showOffersReceived(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceivedList:Ljava/util/List;

    .line 234
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getOffersReceived()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceived:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceived:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 239
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v3, v4, :cond_0

    .line 240
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-nez v3, :cond_0

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 246
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceived:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceived:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 251
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 252
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nr"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const-string v7, "skill"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    .line 255
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const-string v6, "age"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "made"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "edited"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v5, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$5;->$SwitchMap$pl$mkrstudio$truefootball3$enums$TransferOfferType:[I

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const-string v7, "team"

    const-string v8, "offeredValue"

    const-string v9, "offerType"

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    const-string v10, "-"

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v5, "loanOffer"

    .line 279
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_4
    const-string v5, "contractOffer"

    .line 274
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v5, v5, v6

    float-to-long v5, v5

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 262
    :cond_6
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v5, v6, :cond_7

    const-string v5, "buyOffer"

    .line 263
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v5, v5, v6

    float-to-long v5, v5

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const-string v5, "negotiation"

    .line 268
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    mul-float v5, v5, v6

    float-to-long v5, v5

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "position"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/Locale;

    const-string v8, "en"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {v6, v3, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "nation"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 289
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceivedList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const v0, 0x7f080257

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 293
    new-instance v7, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceivedList:Ljava/util/List;

    move-object v1, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    .line 294
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 464
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowLeft:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowLeft:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 474
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowRight:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowRight:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 469
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowLeft:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowLeft:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 479
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowRight:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowRight:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080294

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080259

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ok:Landroid/widget/Button;

    .line 93
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showHeader(Landroid/view/View;I)V

    const v0, 0x7f0803a9

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowLeft:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowRight:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowLeft:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->headerArrowRight:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$3;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->disableLeftButton()V

    .line 151
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableRightButton()V

    .line 153
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showOffersReceived(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showOffersMade(Landroid/view/View;)V

    .line 156
    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->childToDisplay:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showHeader(Landroid/view/View;I)V

    .line 159
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableLeftButton()V

    .line 160
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableRightButton()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0a0084

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 77
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "tf3Settings"

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "currencyModifier"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->modifier:F

    const-string p3, "currencyName"

    const-string v0, "EUR"

    .line 79
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->currency:Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->initView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showAllPlayers(Landroid/view/View;)V

    return-object p1
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    return-void
.end method

.method showAllPlayers(Landroid/view/View;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 318
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tf3SearchOptions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "name"

    const-string v3, ""

    .line 319
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "club"

    .line 320
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "position"

    const-string v3, "-"

    .line 321
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "country"

    .line 322
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "minAge"

    const/16 v3, 0x10

    .line 323
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "minSkill"

    const/16 v3, 0x46

    .line 324
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v1, "maxAge"

    const/16 v3, 0x28

    .line 325
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v1, "maxSkill"

    const/16 v3, 0x63

    .line 326
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v1, "includeEdited"

    const/4 v3, 0x1

    .line 327
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v1, "includeRandom"

    .line 328
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 330
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    move-object v4, v0

    move-object/from16 v5, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p0

    invoke-direct/range {v4 .. v18}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;-><init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIILandroid/view/View;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$SearchPlayersProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "whichView"
        }
    .end annotation

    const v0, 0x7f0803a8

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0449

    .line 310
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 311
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showOffersMade(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c044a

    .line 305
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 306
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showOffersReceived(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0c0574

    .line 301
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public showPlayerInfo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->players:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    .line 338
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    :cond_1
    return-void
.end method

.method public showTransferOffer(Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "view",
            "i"
        }
    .end annotation

    .line 165
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->offersReceived:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-direct {v0, v1, p2}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    .line 166
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;

    invoke-direct {p2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->show()V

    return-void
.end method
