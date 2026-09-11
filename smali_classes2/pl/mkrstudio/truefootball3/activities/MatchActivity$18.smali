.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinute()V
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

    .line 1263
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1268
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "halfTime"

    const/4 v1, 0x1

    .line 1269
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fullTime"

    const/4 v2, 0x0

    .line 1270
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1271
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1272
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-static {p1, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->access$002(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Z)Z

    return-void
.end method
