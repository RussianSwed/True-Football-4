.class public Lpl/mkrstudio/truefootball3/activities/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field currencyModifiers:[D

.field currencyNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 37

    move-object/from16 v0, p0

    .line 27
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;-><init>()V

    const/16 v1, 0x23

    new-array v1, v1, [D

    .line 29
    fill-array-data v1, :array_0

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->currencyModifiers:[D

    const-string v2, "AUD"

    const-string v3, "ARS"

    const-string v4, "BAM"

    const-string v5, "BDT"

    const-string v6, "BGN"

    const-string v7, "BRL"

    const-string v8, "CAD"

    const-string v9, "CHF"

    const-string v10, "CNY"

    const-string v11, "CZK"

    const-string v12, "DKK"

    const-string v13, "EGP"

    const-string v14, "EUR"

    const-string v15, "GBP"

    const-string v16, "HRK"

    const-string v17, "HUF"

    const-string v18, "IDR"

    const-string v19, "ILS"

    const-string v20, "INR"

    const-string v21, "JPY"

    const-string v22, "KRW"

    const-string v23, "MXN"

    const-string v24, "MYR"

    const-string v25, "NOK"

    const-string v26, "PHP"

    const-string v27, "PLN"

    const-string v28, "RON"

    const-string v29, "RSD"

    const-string v30, "RUB"

    const-string v31, "SEK"

    const-string v32, "SGD"

    const-string v33, "THB"

    const-string v34, "TRY"

    const-string v35, "UAH"

    const-string v36, "USD"

    .line 34
    filled-new-array/range {v2 .. v36}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->currencyNames:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff828f5c28f5c29L    # 1.51
        0x4034666666666666L    # 20.4
        0x3fff333333333333L    # 1.95
        0x4058266666666666L    # 96.6
        0x3fff333333333333L    # 1.95
        0x400e51eb851eb852L    # 3.79
        0x3ff7d70a3d70a3d7L    # 1.49
        0x3ff28f5c28f5c28fL    # 1.16
        0x401eb851eb851eb8L    # 7.68
        0x4039800000000000L    # 25.5
        0x401dc28f5c28f5c3L    # 7.44
        0x4034666666666666L    # 20.4
        0x3ff0000000000000L    # 1.0
        0x3febd70a3d70a3d7L    # 0.87
        0x401e147ae147ae14L    # 7.52
        0x4073600000000000L    # 310.0
        0x40ced80000000000L    # 15792.0
        0x401051eb851eb852L    # 4.08
        0x4052c66666666666L    # 75.1
        0x4060800000000000L    # 132.0
        0x40943c0000000000L    # 1295.0
        0x403619999999999aL    # 22.1
        0x4013ae147ae147aeL    # 4.92
        0x4022f0a3d70a3d71L    # 9.47
        0x404df33333333333L    # 59.9
        0x4010eb851eb851ecL    # 4.23
        0x4012666666666666L    # 4.6
        0x405db9999999999aL    # 118.9
        0x4050eccccccccccdL    # 67.7
        0x4023851eb851eb85L    # 9.76
        0x3ff947ae147ae148L    # 1.58
        0x4043400000000000L    # 38.5
        0x4011b851eb851eb8L    # 4.43
        0x403f19999999999aL    # 31.1
        0x3ff28f5c28f5c28fL    # 1.16
    .end array-data
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

    .line 59
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method disableLeftButton(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton(Landroid/widget/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton(Landroid/widget/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initViews()V
    .locals 11

    const v0, 0x7f080060

    .line 63
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 64
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080062

    .line 65
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 66
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 67
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 68
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight3:Landroid/widget/Button;

    const-string v0, "tf3Settings"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "matchSpeed"

    const/16 v3, 0x145

    .line 72
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "simulationMode"

    const/4 v4, 0x1

    .line 73
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "autosaveMode"

    .line 74
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "sound"

    .line 75
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "currencyName"

    const-string v8, "EUR"

    .line 77
    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08031d

    .line 79
    invoke-virtual {p0, v8}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 80
    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$1;

    invoke-direct {v6, p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v6, 0x7f080201

    .line 91
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    const/16 v8, 0x258

    .line 92
    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setMax(I)V

    rsub-int v2, v2, 0x271

    .line 93
    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 94
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$2;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v2, 0x7f080317

    .line 112
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const v6, 0x7f020009

    const v8, 0x7f0a00d5

    .line 113
    invoke-static {p0, v6, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    const v9, 0x1090009

    .line 114
    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 115
    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    new-instance v3, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$3;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v3, 0x7f080079

    .line 128
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const/high16 v6, 0x7f020000

    .line 129
    invoke-static {p0, v6, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 130
    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 131
    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 133
    new-instance v5, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$4;

    invoke-direct {v5, p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v5, 0x7f08012e

    .line 144
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 145
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->currencyNames:[Ljava/lang/String;

    const v10, 0x7f0a00d4

    invoke-direct {v6, p0, v10, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 147
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v6, 0x0

    .line 148
    :goto_0
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->currencyNames:[Ljava/lang/String;

    array-length v9, v8

    if-ge v6, v9, :cond_1

    .line 149
    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;

    invoke-direct {v6, p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 164
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft1:Landroid/widget/Button;

    new-instance v6, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$6;

    invoke-direct {v6, p0, v2}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight1:Landroid/widget/Button;

    new-instance v6, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$7;

    invoke-direct {v6, p0, v2}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableLeftButton(Landroid/widget/Button;)V

    .line 196
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v0, v6, :cond_3

    .line 198
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableRightButton(Landroid/widget/Button;)V

    .line 199
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_1

    .line 201
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    .line 202
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    .line 207
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    new-instance v6, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$8;

    invoke-direct {v6, p0, v3}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    new-instance v6, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;

    invoke-direct {v6, p0, v3}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableLeftButton(Landroid/widget/Button;)V

    .line 239
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_2

    .line 240
    :cond_4
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_5

    .line 241
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableRightButton(Landroid/widget/Button;)V

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_2

    .line 244
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    .line 245
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    .line 249
    :goto_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft3:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$10;

    invoke-direct {v3, p0, v5}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight3:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$11;

    invoke-direct {v3, p0, v5}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_6

    .line 280
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableLeftButton(Landroid/widget/Button;)V

    .line 281
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 282
    :cond_6
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v5}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_7

    .line 283
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->disableRightButton(Landroid/widget/Button;)V

    .line 284
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 286
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableLeftButton(Landroid/widget/Button;)V

    .line 287
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->enableRightButton(Landroid/widget/Button;)V

    .line 289
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 290
    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

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

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0028

    .line 52
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->initViews()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 322
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 323
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 326
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 315
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public openDeveloperTools(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
