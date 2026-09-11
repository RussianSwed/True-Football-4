.class public Lpl/mkrstudio/truefootball3/activities/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/activities/ILanguageChooseListener;


# static fields
.field public static defaultFont:Landroid/graphics/Typeface;

.field public static interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# instance fields
.field private consentInformation:Lcom/google/android/ump/ConsentInformation;

.field creditsSpecialThanksLL:Landroid/widget/LinearLayout;

.field databaseLL:Landroid/widget/LinearLayout;

.field databaseLL2022:Landroid/widget/LinearLayout;

.field graphicsTeamEmblemsLL:Landroid/widget/LinearLayout;

.field private final isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field languageSpinner:Landroid/widget/Spinner;

.field main:Landroid/widget/ViewFlipper;

.field translationLL:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private initViews()V
    .locals 7

    const v0, 0x7f0800c2

    .line 187
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v1, 0x7f0800bb

    .line 188
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v2, 0x7f0800b2

    .line 189
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v3, 0x7f0800ae

    .line 190
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v4, 0x7f0800a4

    .line 191
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v5, 0x7f0800ba

    .line 192
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0801f6

    .line 194
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewFlipper;

    iput-object v6, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->main:Landroid/widget/ViewFlipper;

    .line 196
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/StartActivity$3;

    invoke-direct {v6, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/StartActivity$4;

    invoke-direct {v6, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-virtual {v1, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/StartActivity$5;

    invoke-direct {v6, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-virtual {v4, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/StartActivity$6;

    invoke-direct {v6, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-virtual {v2, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/StartActivity$7;

    invoke-direct {v6, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-virtual {v3, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/StartActivity$8;

    invoke-direct {v6, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    move-result-object v0

    sget-object v6, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/views/TileButton;->getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/TileButton;->getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 248
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bg"

    const-string v2, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    .line 252
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bs"

    const-string v2, "Bosanski"

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ca"

    const-string v2, "Catal\u00e0"

    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cs"

    const-string v2, "\u010ce\u0161tina"

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de"

    const-string v2, "Deutsch"

    .line 256
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "el"

    const-string v2, "\u0395\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en"

    const-string v2, "English"

    .line 258
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es"

    const-string v2, "Espa\u00f1ol"

    .line 259
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr"

    const-string v2, "Fran\u00e7ais"

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hr"

    const-string v2, "Hrvatski"

    .line 261
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hu"

    const-string v2, "Magyar"

    .line 262
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hy"

    const-string v2, "\u0540\u0561\u0575\u0565\u0580\u0565\u0576"

    .line 263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "in"

    const-string v2, "Bahasa Indonesia"

    .line 264
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it"

    const-string v2, "Italiano"

    .line 265
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko"

    const-string v2, "\ud55c\uad6d\uc5b4"

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lt"

    const-string v2, "Lietuvi\u0173"

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lv"

    const-string v2, "Latvie\u0161u"

    .line 268
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms"

    const-string v2, "Bahasa Melayu"

    .line 269
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nl"

    const-string v2, "Nederlands"

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pl"

    const-string v2, "Polski"

    .line 271
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt"

    const-string v2, "Portugu\u00eas"

    .line 272
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "br"

    .line 273
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ro"

    const-string v4, "Rom\u00e2n\u0103"

    .line 274
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ru"

    const-string v4, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 275
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sk"

    const-string v4, "Sloven\u010dina"

    .line 276
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sr"

    const-string v4, "Srpski"

    .line 277
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sq"

    const-string v4, "Shqip"

    .line 278
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "th"

    const-string v4, "\u0e44\u0e17\u0e22"

    .line 279
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tr"

    const-string v4, "T\u00fcrk\u00e7e"

    .line 280
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ua"

    const-string v4, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    .line 281
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vi"

    const-string v4, "Ti\u1ebfng Vi\u1ec7t"

    .line 282
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "zh"

    const-string v4, "\u4e2d\u6587"

    .line 283
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "drawable"

    if-eqz v1, :cond_1

    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    .line 290
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 292
    invoke-virtual {v5, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    .line 294
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 297
    invoke-virtual {v5, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 301
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->initCreditsScreen()V

    return-void
.end method

.method private initializeMobileAdsSdk()V
    .locals 3

    .line 145
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/StartActivity$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 158
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 161
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/StartActivity$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    const-string v2, "ca-app-pub-1066342364129157/7026954624"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method static synthetic lambda$onCreate$2(Lcom/google/android/ump/FormError;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 124
    invoke-virtual {p0}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s: %s"

    .line 122
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TF3"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 605
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nationality",
            "name"
        }
    .end annotation

    .line 526
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "Yaroslav Reznichenko"

    .line 527
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0a00dd

    .line 528
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const v1, 0x7f0a00dc

    .line 529
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    const v1, 0x7f08018b

    .line 530
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 531
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 530
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f080221

    .line 532
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method initCreditsScreen()V
    .locals 25

    move-object/from16 v0, p0

    const v1, 0x7f080125

    .line 313
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f080126

    .line 314
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f080127

    .line 315
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f080128

    .line 316
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f080129

    .line 317
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f08012a

    .line 318
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f080124

    .line 320
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f080124

    .line 321
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v2, 0x7f0c05be

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080129

    .line 323
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c021e

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0c021e

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (2022/2023):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08012a

    .line 324
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0331

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080123

    .line 326
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->creditsSpecialThanksLL:Landroid/widget/LinearLayout;

    const-string v2, "UKR"

    const-string v3, "Yaroslav Reznichenko"

    .line 327
    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0801a2

    .line 329
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->graphicsTeamEmblemsLL:Landroid/widget/LinearLayout;

    const-string v3, "ITA"

    const-string v4, "Simone Oretti"

    .line 330
    invoke-virtual {v0, v3, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0803aa

    .line 332
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "ROM"

    const-string v6, "\u015etefan Dubatufca"

    .line 333
    invoke-virtual {v0, v5, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "CAT"

    const-string v7, "Jorge Pe\u00f1as Alarcon"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "CHN"

    const-string v7, "Zhang Chunlin"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "ALB"

    const-string v7, "Selver Iseni"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "ARM"

    const-string v7, "Enok Fidanyan"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "LVA"

    const-string v7, "Artis Vijups"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "LTU"

    const-string v7, "Darius Yhgasp"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "BIH"

    const-string v7, "Emil Suceska"

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v7, "BRA"

    const-string v8, "Lucas Gomes Florencio"

    invoke-virtual {v0, v7, v8}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v8, "GER"

    const-string v9, "Roland Stein"

    invoke-virtual {v0, v8, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "THA"

    const-string v10, "Patiparn Pathanawitthayakul"

    invoke-virtual {v0, v9, v10}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v10, "HUN"

    const-string v11, "M\u00e1rk Fazekas"

    invoke-virtual {v0, v10, v11}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v11, "Vsevolod Buravlyov"

    invoke-virtual {v0, v2, v11}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v11, "IDN"

    const-string v12, "Azmi Faisal"

    invoke-virtual {v0, v11, v12}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v12, "SVK"

    const-string v13, "Luk\u00e1\u0161 Zubaj"

    invoke-virtual {v0, v12, v13}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v13, "MAS"

    const-string v14, "Fikri Shaffie"

    invoke-virtual {v0, v13, v14}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v14, "KOR"

    const-string v15, "Lee Dong Yup"

    invoke-virtual {v0, v14, v15}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v14, "VIE"

    const-string v15, "portgasdanh97"

    invoke-virtual {v0, v14, v15}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v15, "TUR"

    move-object/from16 v16, v4

    const-string v4, "O\u011fuzhan Yan\u0131klar"

    invoke-virtual {v0, v15, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v4, "Giordano Pantosti"

    invoke-virtual {v0, v3, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v4, "RUS"

    move-object/from16 v17, v3

    const-string v3, "Sergey Glushchenko"

    invoke-virtual {v0, v4, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v3, "Popa Ioan Alexandru"

    invoke-virtual {v0, v5, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v3, "BUL"

    move-object/from16 v18, v5

    const-string v5, "Martin Kostadinov"

    invoke-virtual {v0, v3, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v3, "ARG"

    const-string v5, "Enzo Schneider"

    invoke-virtual {v0, v3, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v3, "Nguy\u1ec5n \u0110\u1ee9c Anh"

    invoke-virtual {v0, v14, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v3, "SRB"

    const-string v5, "Hani Odeh"

    invoke-virtual {v0, v3, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "Adnan Divo\u0161"

    invoke-virtual {v0, v6, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "Hadi Fahmi"

    invoke-virtual {v0, v13, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "POR"

    move-object/from16 v19, v4

    const-string v4, "g6532245"

    invoke-virtual {v0, v5, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v4, "Kornthong Wiriyasawetkul"

    invoke-virtual {v0, v9, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v4, "Leonardo D. Duarte"

    invoke-virtual {v0, v7, v4}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v4, "GRE"

    const-string v5, "Stelios Hatzikyriakos"

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "CHI"

    move-object/from16 v20, v14

    const-string v14, "Isaac Carrasco"

    invoke-virtual {v0, v5, v14}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "Vladyslav Sribnyak"

    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "FRA"

    const-string v14, "altun.semih5445"

    invoke-virtual {v0, v5, v14}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v14, "CZE"

    move-object/from16 v21, v2

    const-string v2, "Ond\u0159ej Smola"

    invoke-virtual {v0, v14, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Tamas Buri"

    invoke-virtual {v0, v10, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "BUL"

    move-object/from16 v22, v5

    const-string v5, "Anton Jekov"

    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "frtan.s.ports"

    invoke-virtual {v0, v12, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Sead Fejzagi\u0107"

    invoke-virtual {v0, v6, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Selcuk Balta"

    invoke-virtual {v0, v15, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Kittiphat Jennaruamid"

    invoke-virtual {v0, v9, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "NED"

    const-string v5, "Diede Commandeur"

    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "ECU"

    move-object/from16 v23, v9

    const-string v9, "Andr\u00e9s Abad"

    invoke-virtual {v0, v5, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v5, "CRO"

    const-string v9, "King Zeus"

    invoke-virtual {v0, v5, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "DutchLion"

    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "POR"

    move-object/from16 v24, v15

    const-string v15, "A. Coelho"

    invoke-virtual {v0, v9, v15}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Tom\u00e1\u0161 Glabaz\u0148a"

    invoke-virtual {v0, v14, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Sebastian Birkenmeier"

    invoke-virtual {v0, v8, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "sandor.adam07"

    invoke-virtual {v0, v10, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "CHI"

    const-string v15, "cayanyepsen"

    invoke-virtual {v0, v9, v15}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Marko Kecina"

    invoke-virtual {v0, v3, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Martin Urbanczyk"

    invoke-virtual {v0, v14, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Melchior Raka Daksattama"

    invoke-virtual {v0, v11, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "ESP"

    const-string v15, "Manuel Loureiro"

    invoke-virtual {v0, v9, v15}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Marco Z"

    move-object/from16 v15, v17

    invoke-virtual {v0, v15, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "shah.rieyzal88"

    invoke-virtual {v0, v13, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "HarimauMalayaHM"

    invoke-virtual {v0, v13, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Philippos Tsilichranos"

    invoke-virtual {v0, v4, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Leonardo Cigolini"

    invoke-virtual {v0, v7, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "VietThaiDinh"

    move-object/from16 v17, v4

    move-object/from16 v4, v20

    invoke-virtual {v0, v4, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Alex Shishkin"

    move-object/from16 v4, v19

    invoke-virtual {v0, v4, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "KOR"

    move-object/from16 v19, v10

    const-string v10, "sjsjdhxhhdhdh"

    invoke-virtual {v0, v9, v10}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "wendyjuanardly"

    invoke-virtual {v0, v11, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "sienafan2001"

    invoke-virtual {v0, v15, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Damian Cramer"

    invoke-virtual {v0, v8, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "stijns01"

    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "wheagles"

    invoke-virtual {v0, v4, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Petr Vuska"

    invoke-virtual {v0, v14, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Nedim"

    invoke-virtual {v0, v5, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "ESP"

    const-string v10, "Jorge Nicol\u00e1s Torres Pe\u00f1ailillo"

    invoke-virtual {v0, v9, v10}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "ESP"

    const-string v10, "lucca_kapo"

    invoke-virtual {v0, v9, v10}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "weezaoutlaw972"

    move-object/from16 v10, v22

    invoke-virtual {v0, v10, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "RedBlackssx"

    invoke-virtual {v0, v10, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "ARG"

    move-object/from16 v22, v6

    const-string v6, "Juan Cruz Rodriguez"

    invoke-virtual {v0, v9, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "steliansuciu"

    invoke-virtual {v0, v15, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "J\u00e1chym Novotn\u00fd"

    invoke-virtual {v0, v14, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v6, "Thomas Poteau"

    invoke-virtual {v0, v10, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    move-object/from16 v6, v16

    invoke-virtual {v0, v15, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Claudio Espinhal"

    invoke-virtual {v0, v7, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "andrab2906"

    invoke-virtual {v0, v4, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Juli Traktovenko"

    invoke-virtual {v0, v8, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "Nemanja Stamenkovic"

    invoke-virtual {v0, v3, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v9, "POR"

    move-object/from16 v16, v8

    const-string v8, "Erick Barbosa"

    invoke-virtual {v0, v9, v8}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v8, "Patrik Habazin"

    invoke-virtual {v0, v5, v8}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v8, "firtationut"

    move-object/from16 v9, v18

    invoke-virtual {v0, v9, v8}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v8, "Dmeister"

    invoke-virtual {v0, v2, v8}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Prince Royal"

    invoke-virtual {v0, v13, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Stefan Tanasijevic"

    invoke-virtual {v0, v5, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Tomislav Biscevic"

    invoke-virtual {v0, v5, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "BUL"

    const-string v8, "kokolai32"

    invoke-virtual {v0, v2, v8}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "magicgdx"

    invoke-virtual {v0, v10, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Annerino Franzan"

    invoke-virtual {v0, v15, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Diogo Dionisio"

    invoke-virtual {v0, v7, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Patrik Antol"

    invoke-virtual {v0, v12, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Ivan Kro\u010dek"

    invoke-virtual {v0, v14, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "khoirulvannguyen"

    invoke-virtual {v0, v11, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "nikolakrivosija11"

    invoke-virtual {v0, v3, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Lorenzo Guerrini"

    invoke-virtual {v0, v15, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "Edis Bajri\u0107"

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "dalibor.danko139"

    invoke-virtual {v0, v12, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "ridwankreator"

    invoke-virtual {v0, v11, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "gecseiistu0"

    move-object/from16 v8, v19

    invoke-virtual {v0, v8, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->translationLL:Landroid/widget/LinearLayout;

    const-string v2, "luongthedung.19981998"

    move-object/from16 v10, v20

    invoke-virtual {v0, v10, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f080136

    .line 439
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    .line 440
    invoke-virtual {v0, v15, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "Sergey Glushchenko"

    invoke-virtual {v0, v4, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "Sebastian Birkenmeier"

    move-object/from16 v10, v16

    invoke-virtual {v0, v10, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "\u015etefan Dubatufca"

    invoke-virtual {v0, v9, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "Sead Fejzagi\u0107"

    invoke-virtual {v0, v3, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "M\u00e1rk Fazekas"

    invoke-virtual {v0, v8, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "Serkan G\u00fcney"

    move-object/from16 v3, v24

    invoke-virtual {v0, v3, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v2, "POL"

    const-string v9, "Wojtek Frankowski"

    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Dmitry Lutskov"

    move-object/from16 v12, v21

    invoke-virtual {v0, v12, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Philippos Tsilichranos"

    move-object/from16 v13, v17

    invoke-virtual {v0, v13, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "\u039a\u03ce\u03c3\u03c4\u03b1\u03c2 \u03a3\u03c9\u03c4\u03ae\u03c1\u03b7\u03c2 \u039d\u03b9\u03ad\u03c1\u03b7\u03c2"

    invoke-virtual {v0, v13, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Stelios Hatzikyriakos"

    invoke-virtual {v0, v13, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Pawe\u0142 D\u0105bek"

    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Janek Jakubiak"

    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Qba Tolak"

    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Giordano Pantosti"

    invoke-virtual {v0, v15, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Vsevolod Buravlyov"

    invoke-virtual {v0, v12, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Roland Stein"

    invoke-virtual {v0, v10, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Azmi Faisal"

    invoke-virtual {v0, v11, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v9, "Emre \u00d6gretmen"

    invoke-virtual {v0, v3, v9}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v3, "Wakub J\u00f3jcik"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL:Landroid/widget/LinearLayout;

    const-string v3, "Tomasz Czajka"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f080137

    .line 463
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    .line 464
    invoke-virtual {v0, v15, v6}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v3, "Yaroslav Reznichenko"

    invoke-virtual {v0, v12, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v3, "Mateusz Sakowski"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v3, "Bartosz W\u00f3jcik"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v3, "Miko\u0142aj Olempijuk"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v3, "Mateusz Borkowski"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Guilherme Andriolo"

    invoke-virtual {v0, v7, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Alessandro Delissimo"

    invoke-virtual {v0, v4, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Szabolcs N\u00e9meth"

    invoke-virtual {v0, v8, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "MAR"

    const-string v3, "Youssef Abouelouard"

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Ilija Mari\u0107"

    invoke-virtual {v0, v5, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Vladislav Shvedov"

    invoke-virtual {v0, v4, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Aleksey Sokolov"

    invoke-virtual {v0, v4, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "Peerawitch Saithong TonKeng"

    move-object/from16 v3, v23

    invoke-virtual {v0, v3, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->databaseLL2022:Landroid/widget/LinearLayout;

    const-string v2, "\u00c1lvaro Daniel"

    invoke-virtual {v0, v7, v2}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getLayout(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$StartActivity(Lcom/google/android/ump/FormError;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s: %s"

    .line 103
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TF3"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Initializing Ad SDK..."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->initializeMobileAdsSdk()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onCreate$1$StartActivity()V
    .locals 1

    .line 98
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/-$$Lambda$StartActivity$SVEhDCU2tbminTkrlzHFLoMHstw;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/-$$Lambda$StartActivity$SVEhDCU2tbminTkrlzHFLoMHstw;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    invoke-static {p0, v0}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 564
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->main:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->main:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->finish()V

    .line 571
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0029

    .line 76
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->setContentView(I)V

    .line 81
    new-instance p1, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object p1

    .line 86
    invoke-static {p0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 94
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/-$$Lambda$StartActivity$kqHAPoIjGwkp62a4HOs9Iawqy2s;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/-$$Lambda$StartActivity$kqHAPoIjGwkp62a4HOs9Iawqy2s;-><init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/-$$Lambda$StartActivity$dKALS2bzQd9SVdjeA8cLbHB-G_I;->INSTANCE:Lpl/mkrstudio/truefootball3/activities/-$$Lambda$StartActivity$dKALS2bzQd9SVdjeA8cLbHB-G_I;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 130
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Exo-Medium.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    .line 132
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->initViews()V

    .line 134
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->initAchievements(Landroid/content/Context;)V

    return-void
.end method

.method public onLanguageChosen(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    const-string v0, "tf3Settings"

    const/4 v1, 0x0

    .line 578
    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language"

    .line 580
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 583
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->finish()V

    .line 584
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 617
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 618
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 621
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 610
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070094

    .line 611
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 612
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method showAnimation()V
    .locals 7

    const v0, 0x7f080122

    .line 498
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 502
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getWindowManager()Landroid/view/WindowManager;

    .line 509
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 510
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 511
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 513
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    .line 516
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    float-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    add-float/2addr v1, v1

    const/high16 v4, -0x3fc00000    # -3.0f

    mul-float v1, v1, v4

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/32 v3, 0x8ca0

    .line 518
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 519
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 520
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 521
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 522
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
