.class public Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SponsorshipsFragment.java"


# instance fields
.field acceptOfferButton:Landroid/widget/Button;

.field childToDisplay:I

.field currency:Ljava/lang/String;

.field leftButton:Landroid/widget/Button;

.field modifier:F

.field rejectOfferButton:Landroid/widget/Button;

.field rightButton:Landroid/widget/Button;

.field sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

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

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->childToDisplay:I

    .line 55
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->childToDisplay:I

    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 326
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 336
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 331
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 341
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initLists(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipList(Landroid/view/View;)V

    .line 253
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipOfferList(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->showHeader(Landroid/view/View;I)V

    const v0, 0x7f08032b

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rightButton:Landroid/widget/Button;

    .line 260
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->leftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->disableLeftButton()V

    .line 289
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableRightButton()V

    .line 291
    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->childToDisplay:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->showHeader(Landroid/view/View;I)V

    .line 294
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableLeftButton()V

    .line 295
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->disableRightButton()V

    :cond_0
    return-void
.end method

.method initSponsorshipList(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getSponsorships()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$1;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getSponsorships()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 96
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget v7, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->modifier:F

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getMonthlyIncome()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    int-to-long v7, v7

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->currency:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "monthlyPay"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "nr"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v5

    .line 104
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-static {v5}, Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;->getChairmanFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 105
    :goto_1
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v7, v8, :cond_1

    const v5, 0x7f07037f

    .line 106
    :cond_1
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v7, v8, :cond_2

    const v5, 0x7f070380

    .line 107
    :cond_2
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v7, v8, :cond_3

    const v5, 0x7f070382

    .line 108
    :cond_3
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v4

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v4, v7, :cond_4

    const v5, 0x7f070381

    .line 110
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f080326

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 117
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 118
    invoke-virtual {v3, v5}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->setNotifyOnChange(Z)V

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method initSponsorshipOfferList(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080235

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080328

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 136
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getPendingSponsorshipOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 141
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f080327

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getPendingSponsorshipOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;

    .line 149
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget v6, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->modifier:F

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getMonthlyIncome()J

    move-result-wide v7

    long-to-float v7, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->currency:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "monthlyPay"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-static {v6}, Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;->getChairmanFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 156
    :goto_1
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v7, v8, :cond_2

    const v6, 0x7f07037f

    .line 157
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v7, v8, :cond_3

    const v6, 0x7f070380

    .line 158
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v7, v8, :cond_4

    const v6, 0x7f070382

    .line 159
    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v3

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v3, v7, :cond_5

    const v6, 0x7f070381

    .line 161
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "type"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f080007

    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->acceptOfferButton:Landroid/widget/Button;

    const v2, 0x7f0802bc

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rejectOfferButton:Landroid/widget/Button;

    .line 170
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v4, v1}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->setNotifyOnChange(Z)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    invoke-direct {v1, p0, v2, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->acceptOfferButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rejectOfferButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->modifier:F

    const-string v1, "currencyName"

    const-string v2, "EUR"

    .line 74
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->currency:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initLists(Landroid/view/View;)V

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

    const p3, 0x7f0a007d

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 65
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 1
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

    const v0, 0x7f08032a

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c05c7

    .line 307
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c021c

    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public showSponsorshipInfo(Landroid/view/View;I)V
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

    .line 314
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getSponsorships()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    invoke-direct {v0, v1, p2}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Sponsorship;)V

    .line 315
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;

    invoke-direct {p2, p0, v0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 322
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->show()V

    return-void
.end method
