.class Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;
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

    .line 46
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c04cc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 52
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 53
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
