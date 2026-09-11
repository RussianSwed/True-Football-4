.class public Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;
.super Landroid/app/Dialog;
.source "SearchForPlayersDialog.java"


# instance fields
.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation
.end field

.field countryArrowLeft:Landroid/widget/Button;

.field countryArrowRight:Landroid/widget/Button;

.field countryPosition:I

.field countrySpinner:Landroid/widget/Spinner;

.field editedPlayersCB:Landroid/widget/CheckBox;

.field maxAgeEditText:Landroid/widget/EditText;

.field maxSkillEditText:Landroid/widget/EditText;

.field minAgeEditText:Landroid/widget/EditText;

.field minSkillEditText:Landroid/widget/EditText;

.field playerClubEditText:Landroid/widget/EditText;

.field playerNameEditText:Landroid/widget/EditText;

.field positionArrowLeft:Landroid/widget/Button;

.field positionArrowRight:Landroid/widget/Button;

.field positionPosition:I

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

.field randomPlayersCB:Landroid/widget/CheckBox;

.field search:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "transfersFragment"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryPosition:I

    .line 48
    iput p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionPosition:I

    .line 57
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->search:Z

    const/4 p2, 0x1

    .line 61
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->requestWindowFeature(I)Z

    const p2, 0x7f0a0053

    .line 62
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x400

    invoke-virtual {p2, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initViews()V

    return-void
.end method

.method private initIncludeEditedCB(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeEdited"
        }
    .end annotation

    const v0, 0x7f080169

    .line 152
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->editedPlayersCB:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private initIncludeRandomCB(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includeRandom"
        }
    .end annotation

    const v0, 0x7f0802aa

    .line 163
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->randomPlayersCB:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method initCountrySpinner(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f08011f

    .line 240
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countries:Ljava/util/List;

    .line 242
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

    .line 243
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

    .line 244
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 251
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$5;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c014c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 266
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_3
    iput v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryPosition:I

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryPosition:I

    goto :goto_2

    .line 278
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 279
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00d2

    invoke-direct {v4, v5, v6, v2, v1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 281
    iget v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryPosition:I

    if-nez v2, :cond_7

    .line 282
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 285
    :cond_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 288
    :cond_7
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_3
    const p1, 0x7f080060

    .line 291
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryArrowLeft:Landroid/widget/Button;

    const p1, 0x7f080068

    .line 292
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryArrowRight:Landroid/widget/Button;

    .line 294
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryArrowLeft:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countryArrowRight:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initMaxAgeEditText(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    const v0, 0x7f080282

    .line 397
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    .line 398
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 399
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$12;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 418
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$13;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$13;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method initMaxSkillEditText(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    const v0, 0x7f080205

    .line 436
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 438
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$14;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$14;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 454
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method initMinAgeEditText(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    const v0, 0x7f080283

    .line 323
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minAgeEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 325
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minAgeEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minAgeEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$8;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$8;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 344
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minAgeEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$9;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$9;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method initMinSkillEditText(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    const v0, 0x7f08020d

    .line 362
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minSkillEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 364
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minSkillEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minSkillEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$10;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$10;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 380
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minSkillEditText:Landroid/widget/EditText;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$11;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$11;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method initPositionSpinner(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    const v0, 0x7f080286

    .line 174
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    .line 175
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->getAllPositions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positions:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c014c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/enums/Position;

    .line 179
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/enums/Position;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionPosition:I

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionPosition:I

    goto :goto_1

    .line 191
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d4

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    .line 192
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 193
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 195
    iget v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionPosition:I

    if-nez v2, :cond_4

    .line 196
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 199
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 202
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 205
    :goto_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    const p1, 0x7f080061

    .line 207
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionArrowLeft:Landroid/widget/Button;

    const p1, 0x7f080069

    .line 208
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionArrowRight:Landroid/widget/Button;

    .line 210
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionArrowLeft:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionArrowRight:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$4;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViews()V
    .locals 5

    const v0, 0x7f080284

    .line 70
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerNameEditText:Landroid/widget/EditText;

    const v0, 0x7f08027c

    .line 71
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerClubEditText:Landroid/widget/EditText;

    const v0, 0x7f08027d

    .line 72
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v0, 0x7f080287

    .line 73
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tf3SearchOptions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerNameEditText:Landroid/widget/EditText;

    const-string v3, "name"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerClubEditText:Landroid/widget/EditText;

    const-string v3, "club"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "position"

    const-string v3, "-"

    .line 79
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initPositionSpinner(Ljava/lang/String;)V

    const-string v1, "country"

    .line 80
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initCountrySpinner(Ljava/lang/String;)V

    const-string v1, "minAge"

    const/16 v3, 0x10

    .line 81
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initMinAgeEditText(I)V

    const-string v1, "minSkill"

    const/16 v3, 0x46

    .line 82
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initMinSkillEditText(I)V

    const-string v1, "maxAge"

    const/16 v3, 0x28

    .line 83
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initMaxAgeEditText(I)V

    const-string v1, "maxSkill"

    const/16 v3, 0x63

    .line 84
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initMaxSkillEditText(I)V

    const-string v1, "includeEdited"

    const/4 v3, 0x1

    .line 85
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initIncludeEditedCB(I)V

    const-string v1, "includeRandom"

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initIncludeRandomCB(I)V

    const v1, 0x7f0800f8

    .line 88
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080259

    .line 89
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    new-instance v3, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;

    invoke-direct {v1, p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isSearch()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->search:Z

    return v0
.end method

.method public setSearch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    .line 475
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->search:Z

    return-void
.end method
