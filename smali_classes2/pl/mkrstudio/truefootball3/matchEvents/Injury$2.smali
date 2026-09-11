.class Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;
.super Ljava/lang/Object;
.source "Injury.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/Injury;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/Injury;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    const-class v2, Lpl/mkrstudio/truefootball3/activities/SubsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "injuryMode"

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getSubLimit()I

    move-result v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getSubsMade()B

    move-result v2

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    const-string v2, "subLimit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pauseSounds()V

    .line 66
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setLineupBeforeSubs(Ljava/util/List;)V

    const/high16 v1, 0x10000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
