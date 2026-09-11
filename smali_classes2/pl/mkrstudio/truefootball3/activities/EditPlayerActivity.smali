.class public Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;
.super Landroid/app/Activity;
.source "EditPlayerActivity.java"


# static fields
.field public static player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;


# instance fields
.field ageEditText:Landroid/widget/EditText;

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
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation
.end field

.field countryPosition:I

.field countrySpinner:Landroid/widget/Spinner;

.field edit:Z

.field id:I

.field positionSpinner:Landroid/widget/Spinner;

.field positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ">;"
        }
    .end annotation
.end field

.field secondPositionSpinner:Landroid/widget/Spinner;

.field secondPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ">;"
        }
    .end annotation
.end field

.field skillEditText:Landroid/widget/EditText;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countryPosition:I

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

    .line 96
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method initAgeEditText()V
    .locals 3

    const v0, 0x7f08027b

    .line 332
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 334
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getAge()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$12;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$12;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 353
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ageEditText:Landroid/widget/EditText;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$13;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method initCountrySpinner()V
    .locals 6

    const v0, 0x7f08011f

    .line 219
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countries:Ljava/util/List;

    .line 221
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 222
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 230
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$9;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 242
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_3
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countryPosition:I

    .line 247
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 248
    sget-object v4, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getNationality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 251
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countryPosition:I

    goto :goto_2

    .line 255
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    const v5, 0x7f0a00d2

    invoke-direct {v4, p0, v5, v2, v1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 258
    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countryPosition:I

    if-nez v2, :cond_7

    .line 259
    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getNationality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getNationality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 262
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 265
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_3
    return-void
.end method

.method initPositionSpinner()V
    .locals 3

    const v0, 0x7f080286

    .line 272
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    .line 273
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->getAllPositions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positions:Ljava/util/List;

    .line 275
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positions:Ljava/util/List;

    const v2, 0x7f0a00d4

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positions:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 280
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$10;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method initSecondPositionSpinner()V
    .locals 4

    const v0, 0x7f080301

    .line 297
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositionSpinner:Landroid/widget/Spinner;

    .line 298
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->getAllPositions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    .line 300
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positions:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/enums/Position;

    .line 301
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 303
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 309
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;

    const v1, 0x7f0a00d4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v3}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 326
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 327
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositionSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositions:Ljava/util/List;

    sget-object v3, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 328
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->secondPositionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method initSkillEditText()V
    .locals 3

    const v0, 0x7f08028a

    .line 371
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 373
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getSkill()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$14;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 389
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->skillEditText:Landroid/widget/EditText;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$15;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$15;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method initViews()V
    .locals 3

    const v0, 0x7f080060

    .line 100
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 101
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080062

    .line 102
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 103
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 104
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 105
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowRight3:Landroid/widget/Button;

    .line 107
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initCountrySpinner()V

    .line 108
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initPositionSpinner()V

    .line 109
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initSecondPositionSpinner()V

    .line 110
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initAgeEditText()V

    .line 111
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initSkillEditText()V

    .line 113
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowLeft3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->arrowRight3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080284

    .line 179
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 180
    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800e0

    .line 182
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 183
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$7;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080259

    .line 192
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 193
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0a001d

    .line 68
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 72
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->id:I

    .line 75
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->id:I

    if-le v0, v2, :cond_0

    .line 77
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->edit:Z

    .line 78
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->id:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    sput-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    goto :goto_0

    .line 79
    :cond_0
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->id:I

    if-ne p1, v0, :cond_2

    .line 80
    iput-boolean v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->edit:Z

    .line 81
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    const/16 v4, 0x19

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v7, 0x0

    const/16 v8, 0x32

    const-string v3, "player"

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;-><init>(Ljava/lang/String;BLjava/lang/String;Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/enums/Position;B)V

    sput-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    .line 82
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    iput-boolean v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->edit:Z

    .line 86
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    const/16 v3, 0x19

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v6, 0x0

    const/16 v7, 0x32

    const-string v2, "player"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;-><init>(Ljava/lang/String;BLjava/lang/String;Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/enums/Position;B)V

    sput-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    .line 88
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->player:Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initViews()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 410
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
