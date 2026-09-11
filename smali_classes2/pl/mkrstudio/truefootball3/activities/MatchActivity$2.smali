.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 517
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "injuryMode"

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-byte v1, v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    const-string v1, "subLimit"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 521
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

    .line 522
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
