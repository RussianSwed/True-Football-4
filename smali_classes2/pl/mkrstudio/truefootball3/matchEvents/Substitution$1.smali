.class Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;
.super Ljava/lang/Object;
.source "Substitution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/Substitution;

.field final synthetic val$inCommentaries:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/Substitution;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$inCommentaries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Substitution;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;->val$inCommentaries:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 79
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 80
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Substitution;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;->val$inCommentaries:[Ljava/lang/String;

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Substitution;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->in:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
