.class public Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;
.super Landroid/app/Dialog;
.source "AchievementsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeaderboardDialog"
.end annotation


# instance fields
.field adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/adapters/LeaderboardAdapter;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field rangeSpinner:Landroid/widget/Spinner;

.field ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    .line 272
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->q:I

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->ranges:Ljava/util/List;

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->adapters:Ljava/util/List;

    const/4 v1, 0x1

    .line 273
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0041

    .line 274
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->setContentView(I)V

    .line 275
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 283
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->ranges:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->showLeaderboards()V

    const v1, 0x7f0802ac

    .line 285
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    .line 286
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v1, 0x7f020008

    const v2, 0x7f0a00d5

    .line 287
    invoke-static {p2, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p2

    const v1, 0x1090009

    .line 288
    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 290
    :try_start_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "True Football 3"

    const-string v2, "I has a error"

    .line 292
    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const p2, 0x7f0803c1

    .line 295
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v1, 0x7f0801d2

    .line 297
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 299
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$1;

    invoke-direct {v3, p0, p1, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$1;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/ViewFlipper;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f080060

    .line 308
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080068

    .line 309
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f080221

    .line 311
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v4, 0x7f080222

    .line 312
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080298

    .line 313
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 314
    iget-object v6, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userDisplayedName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userNationality:Ljava/lang/String;

    new-instance v8, Ljava/util/Locale;

    const-string v9, "en"

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userScore:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 349
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;

    invoke-direct {v0, p0, p1, v1, v2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$3;

    invoke-direct {v0, p0, p1, v2, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$3;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v0, Lcom/firebase/client/Firebase;

    const-string v1, "https://true-football-3.firebaseio.com"

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    const-string v1, "users"

    .line 380
    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/Firebase;->startAt(D)Lcom/firebase/client/Query;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/firebase/client/Query;->limit(I)Lcom/firebase/client/Query;

    move-result-object v0

    .line 382
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Query;->addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;

    const p2, 0x7f08033e

    .line 434
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 435
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$5;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$5;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method showLeaderboards()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaderboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 235
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 236
    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/LeaderboardAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v0, v2, v6}, Lpl/mkrstudio/truefootball3/adapters/LeaderboardAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 237
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->adapters:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
