.class Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;
.super Ljava/lang/Object;
.source "FarFreeKick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;

.field final synthetic val$distance:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$distance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;

    iput p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;->val$distance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c029d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;->val$distance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 82
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 83
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
