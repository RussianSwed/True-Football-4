.class public Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;
.super Landroid/app/Dialog;
.source "AchievementsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubmitScoreDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "context",
            "points"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    .line 450
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0058

    .line 452
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->setContentView(I)V

    .line 453
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 454
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 458
    :try_start_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 462
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 463
    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchAllCountries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 464
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    const v0, 0x7f0803d2

    .line 466
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    .line 474
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    const v1, 0x7f0a00d2

    invoke-direct {v0, p1, v1, v9, v2}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f080060

    .line 476
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 477
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$1;

    invoke-direct {v1, p0, p1, v10}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$1;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080068

    .line 488
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 489
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;

    invoke-direct {v1, p0, p1, v10}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v0, 0x7f0803d3

    .line 502
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    const-string v0, "tf3UserPass"

    .line 504
    invoke-virtual {v7, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "displayedname"

    const-string v2, ""

    .line 505
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "country"

    const-string v2, "POL"

    .line 506
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f08033e

    .line 509
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 510
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v11, p3

    invoke-direct/range {v3 .. v11}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;Landroid/content/Context;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/Spinner;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
