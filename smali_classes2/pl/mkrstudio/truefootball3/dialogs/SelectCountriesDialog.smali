.class public Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;
.super Landroid/app/Dialog;
.source "SelectCountriesDialog.java"


# static fields
.field private static final SELECTED_COUNTRIES_LIMIT:I = 0x5


# instance fields
.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "selectedCountries",
            "chosenCountry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0056

    .line 45
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 50
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getPlayableCountries()Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    const-string p2, "USA"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CAN"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 56
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 61
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;

    invoke-direct {p3, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;Ljava/text/Collator;)V

    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->initCountryList()V

    const p1, 0x7f08010c

    .line 73
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 75
    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$2;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method deselect(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryView"
        }
    .end annotation

    const v0, 0x7f0703b9

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public getSelectedCountries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    return-object v0
.end method

.method initCountryList()V
    .locals 14

    const-string v0, "en"

    const v1, 0x7f0801db

    .line 85
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0802d2

    .line 86
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 89
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->countries:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const v8, 0x7f0a00d2

    if-eqz v6, :cond_1

    move-object v9, v1

    goto :goto_2

    :cond_1
    move-object v9, v2

    .line 95
    :goto_2
    invoke-virtual {v3, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080222

    .line 96
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "string"

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 100
    :catch_0
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_3
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x15

    if-le v9, v10, :cond_2

    const v9, 0x3f19999a    # 0.6f

    .line 104
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_4

    .line 105
    :cond_2
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x12

    if-le v9, v10, :cond_3

    const v9, 0x3f333333    # 0.7f

    .line 106
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_4

    .line 107
    :cond_3
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0xf

    if-le v9, v10, :cond_4

    const v9, 0x3f4ccccd    # 0.8f

    .line 108
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_4
    :goto_4
    const v8, 0x7f08018b

    .line 111
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drawable"

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 114
    new-instance v8, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;

    invoke-direct {v8, p0, v5, v7}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->select(Landroid/view/View;)V

    :cond_5
    if-eqz v6, :cond_6

    .line 134
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 136
    :cond_6
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method select(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryView"
        }
    .end annotation

    const v0, 0x7f0702b7

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setSelectedCountries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedCountries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    return-void
.end method
