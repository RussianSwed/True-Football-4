.class Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;
.super Ljava/lang/Object;
.source "NewGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 253
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 255
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$1;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;Ljava/util/Random;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$2;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;Ljava/util/Random;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Spinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;Ljava/util/Random;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Spinner;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
