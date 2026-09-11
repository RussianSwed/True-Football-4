.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penalties()V
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

    .line 1009
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 1011
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c049a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c049b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c049c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1012
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v3, v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
